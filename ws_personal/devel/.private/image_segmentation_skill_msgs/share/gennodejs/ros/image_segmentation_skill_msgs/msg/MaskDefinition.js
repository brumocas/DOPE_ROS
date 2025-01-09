// Auto-generated. Do not edit!

// (in-package image_segmentation_skill_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MaskDefinition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.instance_nr = null;
      this.scores = null;
      this.mask_image = null;
    }
    else {
      if (initObj.hasOwnProperty('instance_nr')) {
        this.instance_nr = initObj.instance_nr
      }
      else {
        this.instance_nr = 0;
      }
      if (initObj.hasOwnProperty('scores')) {
        this.scores = initObj.scores
      }
      else {
        this.scores = new std_msgs.msg.Float32MultiArray();
      }
      if (initObj.hasOwnProperty('mask_image')) {
        this.mask_image = initObj.mask_image
      }
      else {
        this.mask_image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MaskDefinition
    // Serialize message field [instance_nr]
    bufferOffset = _serializer.int32(obj.instance_nr, buffer, bufferOffset);
    // Serialize message field [scores]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.scores, buffer, bufferOffset);
    // Serialize message field [mask_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.mask_image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MaskDefinition
    let len;
    let data = new MaskDefinition(null);
    // Deserialize message field [instance_nr]
    data.instance_nr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [scores]
    data.scores = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [mask_image]
    data.mask_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.scores);
    length += sensor_msgs.msg.Image.getMessageSize(object.mask_image);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'image_segmentation_skill_msgs/MaskDefinition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2956c47ca0a6c4fd0e5fb94e6e6dca48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 instance_nr
    std_msgs/Float32MultiArray scores
    sensor_msgs/Image mask_image
    ================================================================================
    MSG: std_msgs/Float32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float32[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MaskDefinition(null);
    if (msg.instance_nr !== undefined) {
      resolved.instance_nr = msg.instance_nr;
    }
    else {
      resolved.instance_nr = 0
    }

    if (msg.scores !== undefined) {
      resolved.scores = std_msgs.msg.Float32MultiArray.Resolve(msg.scores)
    }
    else {
      resolved.scores = new std_msgs.msg.Float32MultiArray()
    }

    if (msg.mask_image !== undefined) {
      resolved.mask_image = sensor_msgs.msg.Image.Resolve(msg.mask_image)
    }
    else {
      resolved.mask_image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = MaskDefinition;
