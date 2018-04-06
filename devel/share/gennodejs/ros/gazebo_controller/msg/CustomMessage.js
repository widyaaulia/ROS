// Auto-generated. Do not edit!

// (in-package gazebo_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CustomMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomMessage
    // Check that the constant length array field [x] has the right length
    if (obj.x.length !== 4) {
      throw new Error('Unable to serialize array field x - length must be 4')
    }
    // Serialize message field [x]
    bufferOffset = _arraySerializer.int32(obj.x, buffer, bufferOffset, 4);
    // Check that the constant length array field [y] has the right length
    if (obj.y.length !== 4) {
      throw new Error('Unable to serialize array field y - length must be 4')
    }
    // Serialize message field [y]
    bufferOffset = _arraySerializer.int32(obj.y, buffer, bufferOffset, 4);
    // Check that the constant length array field [theta] has the right length
    if (obj.theta.length !== 4) {
      throw new Error('Unable to serialize array field theta - length must be 4')
    }
    // Serialize message field [theta]
    bufferOffset = _arraySerializer.int32(obj.theta, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomMessage
    let len;
    let data = new CustomMessage(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.int32(buffer, bufferOffset, 4)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.int32(buffer, bufferOffset, 4)
    // Deserialize message field [theta]
    data.theta = _arrayDeserializer.int32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_controller/CustomMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75c45c7398a3ed7e59626b36ece0423d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[4] x
    int32[4] y
    int32[4] theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomMessage(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = new Array(4).fill(0)
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = new Array(4).fill(0)
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = CustomMessage;
