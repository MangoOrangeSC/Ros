// Auto-generated. Do not edit!

// (in-package my_msgs4.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gpsData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.northVel = null;
      this.skyVel = null;
      this.eastVel = null;
      this.latitude = null;
      this.longtitude = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('northVel')) {
        this.northVel = initObj.northVel
      }
      else {
        this.northVel = 0.0;
      }
      if (initObj.hasOwnProperty('skyVel')) {
        this.skyVel = initObj.skyVel
      }
      else {
        this.skyVel = 0.0;
      }
      if (initObj.hasOwnProperty('eastVel')) {
        this.eastVel = initObj.eastVel
      }
      else {
        this.eastVel = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longtitude')) {
        this.longtitude = initObj.longtitude
      }
      else {
        this.longtitude = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpsData
    // Serialize message field [northVel]
    bufferOffset = _serializer.float32(obj.northVel, buffer, bufferOffset);
    // Serialize message field [skyVel]
    bufferOffset = _serializer.float32(obj.skyVel, buffer, bufferOffset);
    // Serialize message field [eastVel]
    bufferOffset = _serializer.float32(obj.eastVel, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float32(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longtitude]
    bufferOffset = _serializer.float32(obj.longtitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpsData
    let len;
    let data = new gpsData(null);
    // Deserialize message field [northVel]
    data.northVel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [skyVel]
    data.skyVel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eastVel]
    data.eastVel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longtitude]
    data.longtitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msgs4/gpsData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e90aa33e849d86074f13628217060af8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 northVel
    float32 skyVel
    float32 eastVel
    float32 latitude
    float32 longtitude
    float32 height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gpsData(null);
    if (msg.northVel !== undefined) {
      resolved.northVel = msg.northVel;
    }
    else {
      resolved.northVel = 0.0
    }

    if (msg.skyVel !== undefined) {
      resolved.skyVel = msg.skyVel;
    }
    else {
      resolved.skyVel = 0.0
    }

    if (msg.eastVel !== undefined) {
      resolved.eastVel = msg.eastVel;
    }
    else {
      resolved.eastVel = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longtitude !== undefined) {
      resolved.longtitude = msg.longtitude;
    }
    else {
      resolved.longtitude = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

module.exports = gpsData;
