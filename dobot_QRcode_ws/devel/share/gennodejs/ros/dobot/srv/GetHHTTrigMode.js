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

class GetHHTTrigModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHHTTrigModeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHHTTrigModeRequest
    let len;
    let data = new GetHHTTrigModeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetHHTTrigModeRequest';
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
    const resolved = new GetHHTTrigModeRequest(null);
    return resolved;
    }
};

class GetHHTTrigModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tagHHTTrigMode = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('tagHHTTrigMode')) {
        this.tagHHTTrigMode = initObj.tagHHTTrigMode
      }
      else {
        this.tagHHTTrigMode = 0;
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
    // Serializes a message object of type GetHHTTrigModeResponse
    // Serialize message field [tagHHTTrigMode]
    bufferOffset = _serializer.uint8(obj.tagHHTTrigMode, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHHTTrigModeResponse
    let len;
    let data = new GetHHTTrigModeResponse(null);
    // Deserialize message field [tagHHTTrigMode]
    data.tagHHTTrigMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/GetHHTTrigModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1abcbcf9addf5b1ea080766e6d75545f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 tagHHTTrigMode
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHHTTrigModeResponse(null);
    if (msg.tagHHTTrigMode !== undefined) {
      resolved.tagHHTTrigMode = msg.tagHHTTrigMode;
    }
    else {
      resolved.tagHHTTrigMode = 0
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
  Request: GetHHTTrigModeRequest,
  Response: GetHHTTrigModeResponse,
  md5sum() { return '1abcbcf9addf5b1ea080766e6d75545f'; },
  datatype() { return 'dobot/GetHHTTrigMode'; }
};
