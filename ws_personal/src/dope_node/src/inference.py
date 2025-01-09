#!/bin/python3

import time
import rospy
import ros_numpy
from sensor_msgs.msg import Image
import yaml
import cv2
import sys
import os
import numpy as np
from torchvision import transforms as tf

# Add the src/common directory to Python path
sys.path.append(os.path.join(os.path.dirname(__file__), "common"))
from common.dope import DopeNode
from common.utils import loadweights


# Initialize ROS node
rospy.init_node("dope_pose_estimation_node")

#-------------------------------Start Load timer------------------------#
start_time = rospy.Time.now()


### Load the DOPE weight model and configurations
config_path = rospy.get_param("~config", "../config/config_pose.yaml")
camera_info_path = rospy.get_param("~camera_info", "../config/camera_info.yaml")
weights_path = rospy.get_param("~weights", "")
object_class = rospy.get_param("~object_class", "coffee_box")

# Load configurations
with open(config_path) as f:
    config = yaml.load(f, Loader=yaml.FullLoader)
with open(camera_info_path) as f:
    camera_info = yaml.load(f, Loader=yaml.FullLoader)

# Load model weights
weights = loadweights(weights_path)
if len(weights) < 1:
    rospy.logerr(
        "No weights found at specified directory. Please check the `weights` parameter and try again."
    )
    exit()
else:
    rospy.loginfo(f"Found {len(weights)} weights.")

print("Weight", )

# Create DOPE Node
dope = DopeNode(config, weights[0], object_class)

# Record end time
end_time = rospy.Time.now()

# Calculate duration
duration = end_time - start_time
duration = duration.to_sec()  

print()
print("Overall load took:", duration, "s")
print()
#-------------------------------End Load timer------------------------#


# Publishers and Subscribers
annotated_image_pub = rospy.Publisher("dope/annotated_image", Image, queue_size=5)

def callback(data):
    """Callback function to process image and publish annotated images."""
    try: 
        #-------------------------------Start inference timer------------------------#
        start_time = rospy.Time.now()

        # Convert ROS Image message to numpy array
        img = ros_numpy.numpify(data)   

        # Run DOPE on the image
        im = dope.image_callback(
            img=img,
            camera_info=camera_info,
            img_name="",
            output_folder="",
            weight=weights[0],
        )

        # Publish Image
        if im is not None:
            im = im.convert('RGB')
            msg = Image()
            msg.header.stamp = rospy.Time.now()
            msg.height = im.height
            msg.width = im.width
            msg.encoding = "rgb8"
            msg.is_bigendian = False
            msg.step = 3 * im.width
            msg.data = np.array(im).tobytes()
            annotated_image_pub.publish(msg)
        else:
            rospy.logwarn("Annotated image could not be found.")
            
        # Record end time
        end_time = rospy.Time.now()

        # Calculate duration
        duration = end_time - start_time
        duration = duration.to_nsec()/1e6 

        print("Overall inference took:", duration, "ms")
        #-------------------------------Stop inference timer------------------------#
    except Exception as e:
        rospy.logerr(f"Error in DOPE processing: {e}")




# Subscribe to the input image topic
image_topic = rospy.get_param("~image_topic", "/usb_cam_node/image_raw")
rospy.Subscriber(image_topic, Image, callback)


if __name__ == "__main__":
    rospy.loginfo("DOPE Pose Estimation Node is running...")
    rospy.spin()
