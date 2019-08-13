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

class SetHHTTrigOutputEnabledRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isEnabled = null;
    }
    else {
      if (initObj.hasOwnProperty('isEnabled')) {
        this.isEnabled = initObj.isEnabled
      }
      else {
        this.isEnabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetHHTTrigOutputEnabledRequest
    // Serialize message field [isEnabled]
    bufferOffset = _serializer.bool(obj.isEnabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetHHTTrigOutputEnabledRequest
    let len;
    let data = new SetHHTTrigOutputEnabledRequest(null);
    // Deserialize message field [isEnabled]
    data.isEnabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetHHTTrigOutputEnabledRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49d7f356a678a99078140911ab6e6d2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isEnabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetHHTTrigOutputEnabledRequest(null);
    if (msg.isEnabled !== undefined) {
      resolved.isEnabled = msg.isEnabled;
    }
    else {
      resolved.isEnabled = false
    }

    return resolved;
    }
};

class SetHHTTrigOutputEnabledResponse {
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
    // Serializes a message object of type SetHHTTrigOutputEnabledResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetHHTTrigOutputEnabledResponse
    let len;
    let data = new SetHHTTrigOutputEnabledResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetHHTTrigOutputEnabledResponse';
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
    const resolved = new SetHHTTrigOutputEnabledResponse(null);
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
  Request: SetHHTTrigOutputEnabledRequest,
  Response: SetHHTTrigOutputEnabledResponse,
  md5sum() { return '39404d9e9bcc553c4bcaae6963186b7e'; },
  datatype() { return 'dobot/SetHHTTrigOutputEnabled'; }
};
