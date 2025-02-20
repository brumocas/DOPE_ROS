// Auto-generated. Do not edit!

// (in-package dope_skill_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DopeSkillResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.percentage = null;
      this.skillStatus = null;
      this.outcome = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0;
      }
      if (initObj.hasOwnProperty('skillStatus')) {
        this.skillStatus = initObj.skillStatus
      }
      else {
        this.skillStatus = '';
      }
      if (initObj.hasOwnProperty('outcome')) {
        this.outcome = initObj.outcome
      }
      else {
        this.outcome = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.TransformStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DopeSkillResult
    // Serialize message field [percentage]
    bufferOffset = _serializer.int32(obj.percentage, buffer, bufferOffset);
    // Serialize message field [skillStatus]
    bufferOffset = _serializer.string(obj.skillStatus, buffer, bufferOffset);
    // Serialize message field [outcome]
    bufferOffset = _serializer.string(obj.outcome, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DopeSkillResult
    let len;
    let data = new DopeSkillResult(null);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [skillStatus]
    data.skillStatus = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [outcome]
    data.outcome = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.skillStatus);
    length += _getByteLength(object.outcome);
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.pose);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dope_skill_msgs/DopeSkillResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60064ae4a52afa51a106b96d5b760708';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    int32 percentage
    string skillStatus
    string outcome
    geometry_msgs/TransformStamped pose
    
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DopeSkillResult(null);
    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0
    }

    if (msg.skillStatus !== undefined) {
      resolved.skillStatus = msg.skillStatus;
    }
    else {
      resolved.skillStatus = ''
    }

    if (msg.outcome !== undefined) {
      resolved.outcome = msg.outcome;
    }
    else {
      resolved.outcome = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.TransformStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.TransformStamped()
    }

    return resolved;
    }
};

module.exports = DopeSkillResult;
