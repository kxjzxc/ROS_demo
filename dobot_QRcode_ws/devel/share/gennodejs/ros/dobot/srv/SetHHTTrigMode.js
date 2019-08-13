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

class SetHHTTrigModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tagHHTTrigMode = null;
    }
    else {
      if (initObj.hasOwnProperty('tagHHTTrigMode')) {
        this.tagHHTTrigMode = initObj.tagHHTTrigMode
      }
      else {
        this.tagHHTTrigMode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetHHTTrigModeRequest
    // Serialize message field [tagHHTTrigMode]
    bufferOffset = _serializer.uint8(obj.tagHHTTrigMode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetHHTTrigModeRequest
    let len;
    let data = new SetHHTTrigModeRequest(null);
    // Deserialize message field [tagHHTTrigMode]
    data.tagHHTTrigMode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetHHTTrigModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2f1182a7dd0bbc63006dc8fe55f3e4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 tagHHTTrigMode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetHHTTrigModeRequest(null);
    if (msg.tagHHTTrigMode !== undefined) {
      resolved.tagHHTTrigMode = msg.tagHHTTrigMode;
    }
    else {
      resolved.tagHHTTrigMode = 0
    }

    return resolved;
    }
};

class SetHHTTrigModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetHHTTrigModeResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetHHTTrigModeResponse
    let len;
    let data = new SetHHTTrigModeResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetHHTTrigModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetHHTTrigModeResponse(null);
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
  Request: SetHHTTrigModeRequest,
  Response: SetHHTTrigModeResponse,
  md5sum() { return '856f63db51d715161eae0ac2b7d97f56'; },
  datatype() { return 'dobot/SetHHTTrigMode'; }
};
