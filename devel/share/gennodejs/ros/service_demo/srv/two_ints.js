// Auto-generated. Do not edit!

// (in-package service_demo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class two_intsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type two_intsRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int64(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type two_intsRequest
    let len;
    let data = new two_intsRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_demo/two_intsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36d09b846be0b371c5f190354dd3153e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a
    int64 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new two_intsRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

class two_intsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum_2ints = null;
      this.mul_2ints = null;
      this.sub_2ints = null;
      this.div_2ints = null;
    }
    else {
      if (initObj.hasOwnProperty('sum_2ints')) {
        this.sum_2ints = initObj.sum_2ints
      }
      else {
        this.sum_2ints = 0;
      }
      if (initObj.hasOwnProperty('mul_2ints')) {
        this.mul_2ints = initObj.mul_2ints
      }
      else {
        this.mul_2ints = 0;
      }
      if (initObj.hasOwnProperty('sub_2ints')) {
        this.sub_2ints = initObj.sub_2ints
      }
      else {
        this.sub_2ints = 0;
      }
      if (initObj.hasOwnProperty('div_2ints')) {
        this.div_2ints = initObj.div_2ints
      }
      else {
        this.div_2ints = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type two_intsResponse
    // Serialize message field [sum_2ints]
    bufferOffset = _serializer.int64(obj.sum_2ints, buffer, bufferOffset);
    // Serialize message field [mul_2ints]
    bufferOffset = _serializer.int64(obj.mul_2ints, buffer, bufferOffset);
    // Serialize message field [sub_2ints]
    bufferOffset = _serializer.int64(obj.sub_2ints, buffer, bufferOffset);
    // Serialize message field [div_2ints]
    bufferOffset = _serializer.float64(obj.div_2ints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type two_intsResponse
    let len;
    let data = new two_intsResponse(null);
    // Deserialize message field [sum_2ints]
    data.sum_2ints = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mul_2ints]
    data.mul_2ints = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [sub_2ints]
    data.sub_2ints = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [div_2ints]
    data.div_2ints = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_demo/two_intsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61c4a99f6ac6682b96e4622b970c9c45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 sum_2ints
    int64 mul_2ints
    int64 sub_2ints
    float64 div_2ints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new two_intsResponse(null);
    if (msg.sum_2ints !== undefined) {
      resolved.sum_2ints = msg.sum_2ints;
    }
    else {
      resolved.sum_2ints = 0
    }

    if (msg.mul_2ints !== undefined) {
      resolved.mul_2ints = msg.mul_2ints;
    }
    else {
      resolved.mul_2ints = 0
    }

    if (msg.sub_2ints !== undefined) {
      resolved.sub_2ints = msg.sub_2ints;
    }
    else {
      resolved.sub_2ints = 0
    }

    if (msg.div_2ints !== undefined) {
      resolved.div_2ints = msg.div_2ints;
    }
    else {
      resolved.div_2ints = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: two_intsRequest,
  Response: two_intsResponse,
  md5sum() { return 'f4ab17e216a90fce307b72981813b6f5'; },
  datatype() { return 'service_demo/two_ints'; }
};
