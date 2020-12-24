// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NavDOP {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.gDOP = null;
      this.pDOP = null;
      this.tDOP = null;
      this.vDOP = null;
      this.hDOP = null;
      this.nDOP = null;
      this.eDOP = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('gDOP')) {
        this.gDOP = initObj.gDOP
      }
      else {
        this.gDOP = 0;
      }
      if (initObj.hasOwnProperty('pDOP')) {
        this.pDOP = initObj.pDOP
      }
      else {
        this.pDOP = 0;
      }
      if (initObj.hasOwnProperty('tDOP')) {
        this.tDOP = initObj.tDOP
      }
      else {
        this.tDOP = 0;
      }
      if (initObj.hasOwnProperty('vDOP')) {
        this.vDOP = initObj.vDOP
      }
      else {
        this.vDOP = 0;
      }
      if (initObj.hasOwnProperty('hDOP')) {
        this.hDOP = initObj.hDOP
      }
      else {
        this.hDOP = 0;
      }
      if (initObj.hasOwnProperty('nDOP')) {
        this.nDOP = initObj.nDOP
      }
      else {
        this.nDOP = 0;
      }
      if (initObj.hasOwnProperty('eDOP')) {
        this.eDOP = initObj.eDOP
      }
      else {
        this.eDOP = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavDOP
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [gDOP]
    bufferOffset = _serializer.uint16(obj.gDOP, buffer, bufferOffset);
    // Serialize message field [pDOP]
    bufferOffset = _serializer.uint16(obj.pDOP, buffer, bufferOffset);
    // Serialize message field [tDOP]
    bufferOffset = _serializer.uint16(obj.tDOP, buffer, bufferOffset);
    // Serialize message field [vDOP]
    bufferOffset = _serializer.uint16(obj.vDOP, buffer, bufferOffset);
    // Serialize message field [hDOP]
    bufferOffset = _serializer.uint16(obj.hDOP, buffer, bufferOffset);
    // Serialize message field [nDOP]
    bufferOffset = _serializer.uint16(obj.nDOP, buffer, bufferOffset);
    // Serialize message field [eDOP]
    bufferOffset = _serializer.uint16(obj.eDOP, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavDOP
    let len;
    let data = new NavDOP(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gDOP]
    data.gDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pDOP]
    data.pDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tDOP]
    data.tDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vDOP]
    data.vDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [hDOP]
    data.hDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [nDOP]
    data.nDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [eDOP]
    data.eDOP = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavDOP';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19fe2210fc48e52c1c14b7d2c567407f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-DOP (0x01 0x04)
    # Dilution of precision
    #
    # - DOP values are dimensionless.
    # - All DOP values are scaled by a factor of 100. If the unit transmits a value 
    #   of e.g. 156, the DOP value is 1.56.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 4
    
    uint32 iTOW             # GPS Millisecond Time of Week [ms]
    
    uint16 gDOP             # Geometric DOP [1 / 0.01]
    uint16 pDOP             # Position DOP  [1 / 0.01]
    uint16 tDOP             # Time DOP [1 / 0.01]
    uint16 vDOP             # Vertical DOP [1 / 0.01]
    uint16 hDOP             # Horizontal DOP [1 / 0.01]
    uint16 nDOP             # Northing DOP [1 / 0.01]
    uint16 eDOP             # Easting DOP [1 / 0.01]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavDOP(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.gDOP !== undefined) {
      resolved.gDOP = msg.gDOP;
    }
    else {
      resolved.gDOP = 0
    }

    if (msg.pDOP !== undefined) {
      resolved.pDOP = msg.pDOP;
    }
    else {
      resolved.pDOP = 0
    }

    if (msg.tDOP !== undefined) {
      resolved.tDOP = msg.tDOP;
    }
    else {
      resolved.tDOP = 0
    }

    if (msg.vDOP !== undefined) {
      resolved.vDOP = msg.vDOP;
    }
    else {
      resolved.vDOP = 0
    }

    if (msg.hDOP !== undefined) {
      resolved.hDOP = msg.hDOP;
    }
    else {
      resolved.hDOP = 0
    }

    if (msg.nDOP !== undefined) {
      resolved.nDOP = msg.nDOP;
    }
    else {
      resolved.nDOP = 0
    }

    if (msg.eDOP !== undefined) {
      resolved.eDOP = msg.eDOP;
    }
    else {
      resolved.eDOP = 0
    }

    return resolved;
    }
};

// Constants for message
NavDOP.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 4,
}

module.exports = NavDOP;
