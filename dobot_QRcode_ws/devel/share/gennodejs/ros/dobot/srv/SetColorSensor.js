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

class SetColorSensorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableCtrl = null;
      this.colorPort = null;
    }
    else {
      if (initObj.hasOwnProperty('enableCtrl')) {
        this.enableCtrl = initObj.enableCtrl
      }
      else {
        this.enableCtrl = false;
      }
      if (initObj.hasOwnProperty('colorPort')) {
        this.colorPort = initObj.colorPort
      }
      else {
        this.colorPort = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetColorSensorRequest
    // Serialize message field [enableCtrl]
    bufferOffset = _serializer.bool(obj.enableCtrl, buffer, bufferOffset);
    // Serialize message field [colorPort]
    bufferOffset = _serializer.int32(obj.colorPort, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetColorSensorRequest
    let len;
    let data = new SetColorSensorRequest(null);
    // Deserialize message field [enableCtrl]
    data.enableCtrl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [colorPort]
    data.colorPort = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetColorSensorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63fa2c7813ac4b03b676ca34b5daeab7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enableCtrl
    int32 colorPort
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetColorSensorRequest(null);
    if (msg.enableCtrl !== undefined) {
      resolved.enableCtrl = msg.enableCtrl;
    }
    else {
      resolved.enableCtrl = false
    }

    if (msg.colorPort !== undefined) {
      resolved.colorPort = msg.colorPort;
    }
    else {
      resolved.colorPort = 0
    }

    return resolved;
    }
};

class SetColorSensorResponse {
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
    // Serializes a message object of type SetColorSensorResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetColorSensorResponse
    let len;
    let data = new SetColorSensorResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dobot/SetColorSensorResponse';
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
    const resolved = new SetColorSensorResponse(null);
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
  Request: SetColorSensorRequest,
  Response: SetColorSensorResponse,
  md5sum() { return '2bf2a7c11ddc2a48c7a0f63413545e80'; },
  datatype() { return 'dobot/SetColorSensor'; }
};
