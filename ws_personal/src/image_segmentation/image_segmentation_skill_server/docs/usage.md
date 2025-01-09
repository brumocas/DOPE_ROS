# <a name="usage"></a> *** Usage ***

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" />

The pipeline works based on [ROS Action](http://wiki.ros.org/actionlib) and allows to select different operation modes. It is a ros package to segment 3D data (pointclouds) given an input message, with an image
array and number of objects (instances) in the scenario, and a point cloud message.

In the operation model, the name 'model' can be changed to the name of the weight in the image segmentation dataset: 'knee_tube', 'generic_box',
 'triangle_bracker' and 'reinforced_bracket'.

 **If you are using python enviroment do not forget to ativate it to running the following use case**


##  <a name="operation_mode"></a> Operation Modes

##### Pre-load the neural network. This process loads the neural network into memory:

````
"header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  detection_model: 'model'
  operation_mode: 1"
````

##### Load the right model, to load the right trained model:

````
"header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  detection_model: 'model'
  operation_mode: 2"
````


##### Execute, to trigger the image segmentation:

````
"header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  detection_model: 'model'
  operation_mode: 3"
````

##### Direct. This process executes the three previous described processes, loading the model and inferencing.

````
"header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  detection_model: 'model'
  operation_mode: 0"
````


##  <a name="Use case scenario"></a> Running test case scenario

 **If you are using python enviroment do not forget to ativate it to running the current use case**

1. Run the following launch file:
````
roslaunch image_segmentation_skill_server run_test_case.launch
````

2. Publish the Direct goal:
````
rostopic pub /ImageSegmentationSkill/goal image_segmentation_skill_msgs/ImageSegmentationSkillActionGoal "header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  detection_model: 'knee_tube'
  operation_mode: 0"
````

<a name="operation_mode"></a> Extra documentation:
1. [Heuristics](heuristic.md)
2. [Configuration](configuration.md)
3. [Initial page](../README.md)
