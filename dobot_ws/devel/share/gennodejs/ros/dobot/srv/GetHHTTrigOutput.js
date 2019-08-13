// Auto-generated. Do not edit!

// (in-package dobot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetHHTTrigOutputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHHTTrigOutputRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHHTTrigOutputRequest
    let len;
    let data = new GetHHTTrigOutputRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetHHTTrigOutputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHHTTrigOutputRequest(null);
    return resolved;
    }
};

class GetHHTTrigOutputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isTriggered = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('isTriggered')) {
        this.isTriggered = initObj.isTriggered
      }
      else {
        this.isTriggered = false;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHHTTrigOutputResponse
    // Serialize message field [isTriggered]
    bufferOffset = _serializer.bool(obj.isTriggered, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHHTTrigOutputResponse
    let len;
    let data = new GetHHTTrigOutputResponse(null);
    // Deserialize message field [isTriggered]
    data.isTriggered = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetHHTTrigOutputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1946bbc3a20603520250b54a04604eab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isTriggered
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHHTTrigOutputResponse(null);
    if (msg.isTriggered !== undefined) {
      resolved.isTriggered = msg.isTriggered;
    }
    else {
      resolved.isTriggered = false
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetHHTTrigOutputRequest,
  Response: GetHHTTrigOutputResponse,
  md5sum() { return '1946bbc3a20603520250b54a04604eab'; },
  datatype() { return 'dobot/GetHHTTrigOutput'; }
};
