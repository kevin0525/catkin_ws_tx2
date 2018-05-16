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

class RobotCamPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.exist_rob_flag = null;
      this.rob_num = null;
      this.rob_cam_pos_x = null;
      this.rob_cam_pos_y = null;
      this.rob_cam_vel_x = null;
      this.rob_cam_vel_y = null;
    }
    else {
      if (initObj.hasOwnProperty('exist_rob_flag')) {
        this.exist_rob_flag = initObj.exist_rob_flag
      }
      else {
        this.exist_rob_flag = false;
      }
      if (initObj.hasOwnProperty('rob_num')) {
        this.rob_num = initObj.rob_num
      }
      else {
        this.rob_num = 0;
      }
      if (initObj.hasOwnProperty('rob_cam_pos_x')) {
        this.rob_cam_pos_x = initObj.rob_cam_pos_x
      }
      else {
        this.rob_cam_pos_x = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('rob_cam_pos_y')) {
        this.rob_cam_pos_y = initObj.rob_cam_pos_y
      }
      else {
        this.rob_cam_pos_y = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('rob_cam_vel_x')) {
        this.rob_cam_vel_x = initObj.rob_cam_vel_x
      }
      else {
        this.rob_cam_vel_x = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('rob_cam_vel_y')) {
        this.rob_cam_vel_y = initObj.rob_cam_vel_y
      }
      else {
        this.rob_cam_vel_y = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotCamPos
    // Serialize message field [exist_rob_flag]
    bufferOffset = _serializer.bool(obj.exist_rob_flag, buffer, bufferOffset);
    // Serialize message field [rob_num]
    bufferOffset = _serializer.int32(obj.rob_num, buffer, bufferOffset);
    // Check that the constant length array field [rob_cam_pos_x] has the right length
    if (obj.rob_cam_pos_x.length !== 5) {
      throw new Error('Unable to serialize array field rob_cam_pos_x - length must be 5')
    }
    // Serialize message field [rob_cam_pos_x]
    bufferOffset = _arraySerializer.float64(obj.rob_cam_pos_x, buffer, bufferOffset, 5);
    // Check that the constant length array field [rob_cam_pos_y] has the right length
    if (obj.rob_cam_pos_y.length !== 5) {
      throw new Error('Unable to serialize array field rob_cam_pos_y - length must be 5')
    }
    // Serialize message field [rob_cam_pos_y]
    bufferOffset = _arraySerializer.float64(obj.rob_cam_pos_y, buffer, bufferOffset, 5);
    // Check that the constant length array field [rob_cam_vel_x] has the right length
    if (obj.rob_cam_vel_x.length !== 5) {
      throw new Error('Unable to serialize array field rob_cam_vel_x - length must be 5')
    }
    // Serialize message field [rob_cam_vel_x]
    bufferOffset = _arraySerializer.float64(obj.rob_cam_vel_x, buffer, bufferOffset, 5);
    // Check that the constant length array field [rob_cam_vel_y] has the right length
    if (obj.rob_cam_vel_y.length !== 5) {
      throw new Error('Unable to serialize array field rob_cam_vel_y - length must be 5')
    }
    // Serialize message field [rob_cam_vel_y]
    bufferOffset = _arraySerializer.float64(obj.rob_cam_vel_y, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotCamPos
    let len;
    let data = new RobotCamPos(null);
    // Deserialize message field [exist_rob_flag]
    data.exist_rob_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rob_num]
    data.rob_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rob_cam_pos_x]
    data.rob_cam_pos_x = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    // Deserialize message field [rob_cam_pos_y]
    data.rob_cam_pos_y = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    // Deserialize message field [rob_cam_vel_x]
    data.rob_cam_vel_x = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    // Deserialize message field [rob_cam_vel_y]
    data.rob_cam_vel_y = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 165;
  }

  static datatype() {
    // Returns string type for a message object
    return 'detect_hog/RobotCamPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6d1df053b1518d33523e7d629bdecc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool exist_rob_flag
    int32 rob_num
    float64[5] rob_cam_pos_x
    float64[5] rob_cam_pos_y
    float64[5] rob_cam_vel_x
    float64[5] rob_cam_vel_y
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotCamPos(null);
    if (msg.exist_rob_flag !== undefined) {
      resolved.exist_rob_flag = msg.exist_rob_flag;
    }
    else {
      resolved.exist_rob_flag = false
    }

    if (msg.rob_num !== undefined) {
      resolved.rob_num = msg.rob_num;
    }
    else {
      resolved.rob_num = 0
    }

    if (msg.rob_cam_pos_x !== undefined) {
      resolved.rob_cam_pos_x = msg.rob_cam_pos_x;
    }
    else {
      resolved.rob_cam_pos_x = new Array(5).fill(0)
    }

    if (msg.rob_cam_pos_y !== undefined) {
      resolved.rob_cam_pos_y = msg.rob_cam_pos_y;
    }
    else {
      resolved.rob_cam_pos_y = new Array(5).fill(0)
    }

    if (msg.rob_cam_vel_x !== undefined) {
      resolved.rob_cam_vel_x = msg.rob_cam_vel_x;
    }
    else {
      resolved.rob_cam_vel_x = new Array(5).fill(0)
    }

    if (msg.rob_cam_vel_y !== undefined) {
      resolved.rob_cam_vel_y = msg.rob_cam_vel_y;
    }
    else {
      resolved.rob_cam_vel_y = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = RobotCamPos;
