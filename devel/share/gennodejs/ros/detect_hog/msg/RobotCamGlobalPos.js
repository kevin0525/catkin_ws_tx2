// Auto-generated. Do not edit!

// (in-package detect_hog.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotCamGlobalPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_exist_rob_flag = null;
      this.right_exist_rob_flag = null;
      this.back_exist_rob_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('left_exist_rob_flag')) {
        this.left_exist_rob_flag = initObj.left_exist_rob_flag
      }
      else {
        this.left_exist_rob_flag = false;
      }
      if (initObj.hasOwnProperty('right_exist_rob_flag')) {
        this.right_exist_rob_flag = initObj.right_exist_rob_flag
      }
      else {
        this.right_exist_rob_flag = false;
      }
      if (initObj.hasOwnProperty('back_exist_rob_flag')) {
        this.back_exist_rob_flag = initObj.back_exist_rob_flag
      }
      else {
        this.back_exist_rob_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotCamGlobalPos
    // Serialize message field [left_exist_rob_flag]
    bufferOffset = _serializer.bool(obj.left_exist_rob_flag, buffer, bufferOffset);
    // Serialize message field [right_exist_rob_flag]
    bufferOffset = _serializer.bool(obj.right_exist_rob_flag, buffer, bufferOffset);
    // Serialize message field [back_exist_rob_flag]
    bufferOffset = _serializer.bool(obj.back_exist_rob_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotCamGlobalPos
    let len;
    let data = new RobotCamGlobalPos(null);
    // Deserialize message field [left_exist_rob_flag]
    data.left_exist_rob_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_exist_rob_flag]
    data.right_exist_rob_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [back_exist_rob_flag]
    data.back_exist_rob_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'detect_hog/RobotCamGlobalPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d936f630f6ff27a9e7df7df229d3501';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool left_exist_rob_flag
    bool right_exist_rob_flag
    bool back_exist_rob_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotCamGlobalPos(null);
    if (msg.left_exist_rob_flag !== undefined) {
      resolved.left_exist_rob_flag = msg.left_exist_rob_flag;
    }
    else {
      resolved.left_exist_rob_flag = false
    }

    if (msg.right_exist_rob_flag !== undefined) {
      resolved.right_exist_rob_flag = msg.right_exist_rob_flag;
    }
    else {
      resolved.right_exist_rob_flag = false
    }

    if (msg.back_exist_rob_flag !== undefined) {
      resolved.back_exist_rob_flag = msg.back_exist_rob_flag;
    }
    else {
      resolved.back_exist_rob_flag = false
    }

    return resolved;
    }
};

module.exports = RobotCamGlobalPos;
