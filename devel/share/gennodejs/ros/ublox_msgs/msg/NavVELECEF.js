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

class NavVELECEF {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.ecefVX = null;
      this.ecefVY = null;
      this.ecefVZ = null;
      this.sAcc = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('ecefVX')) {
        this.ecefVX = initObj.ecefVX
      }
      else {
        this.ecefVX = 0;
      }
      if (initObj.hasOwnProperty('ecefVY')) {
        this.ecefVY = initObj.ecefVY
      }
      else {
        this.ecefVY = 0;
      }
      if (initObj.hasOwnProperty('ecefVZ')) {
        this.ecefVZ = initObj.ecefVZ
      }
      else {
        this.ecefVZ = 0;
      }
      if (initObj.hasOwnProperty('sAcc')) {
        this.sAcc = initObj.sAcc
      }
      else {
        this.sAcc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavVELECEF
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [ecefVX]
    bufferOffset = _serializer.int32(obj.ecefVX, buffer, bufferOffset);
    // Serialize message field [ecefVY]
    bufferOffset = _serializer.int32(obj.ecefVY, buffer, bufferOffset);
    // Serialize message field [ecefVZ]
    bufferOffset = _serializer.int32(obj.ecefVZ, buffer, bufferOffset);
    // Serialize message field [sAcc]
    bufferOffset = _serializer.uint32(obj.sAcc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavVELECEF
    let len;
    let data = new NavVELECEF(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ecefVX]
    data.ecefVX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefVY]
    data.ecefVY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefVZ]
    data.ecefVZ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sAcc]
    data.sAcc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavVELECEF';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97299f597364a39a6c0e96ed2ee4e702';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-VELECEF (0x01 0x11)
    # Velocity Solution in ECEF
    #
    # See important comments concerning validity of velocity given in section
    # Navigation Output Filters.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 17
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    
    int32 ecefVX            # ECEF X velocity [cm/s]
    int32 ecefVY            # ECEF Y velocity [cm/s]
    int32 ecefVZ            # ECEF Z velocity [cm/s]
    uint32 sAcc             # Speed Accuracy Estimate [cm/s]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavVELECEF(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.ecefVX !== undefined) {
      resolved.ecefVX = msg.ecefVX;
    }
    else {
      resolved.ecefVX = 0
    }

    if (msg.ecefVY !== undefined) {
      resolved.ecefVY = msg.ecefVY;
    }
    else {
      resolved.ecefVY = 0
    }

    if (msg.ecefVZ !== undefined) {
      resolved.ecefVZ = msg.ecefVZ;
    }
    else {
      resolved.ecefVZ = 0
    }

    if (msg.sAcc !== undefined) {
      resolved.sAcc = msg.sAcc;
    }
    else {
      resolved.sAcc = 0
    }

    return resolved;
    }
};

// Constants for message
NavVELECEF.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 17,
}

module.exports = NavVELECEF;
