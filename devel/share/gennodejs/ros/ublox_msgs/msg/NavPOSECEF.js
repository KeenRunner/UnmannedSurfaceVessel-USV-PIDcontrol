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

class NavPOSECEF {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.ecefX = null;
      this.ecefY = null;
      this.ecefZ = null;
      this.pAcc = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('ecefX')) {
        this.ecefX = initObj.ecefX
      }
      else {
        this.ecefX = 0;
      }
      if (initObj.hasOwnProperty('ecefY')) {
        this.ecefY = initObj.ecefY
      }
      else {
        this.ecefY = 0;
      }
      if (initObj.hasOwnProperty('ecefZ')) {
        this.ecefZ = initObj.ecefZ
      }
      else {
        this.ecefZ = 0;
      }
      if (initObj.hasOwnProperty('pAcc')) {
        this.pAcc = initObj.pAcc
      }
      else {
        this.pAcc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavPOSECEF
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [ecefX]
    bufferOffset = _serializer.int32(obj.ecefX, buffer, bufferOffset);
    // Serialize message field [ecefY]
    bufferOffset = _serializer.int32(obj.ecefY, buffer, bufferOffset);
    // Serialize message field [ecefZ]
    bufferOffset = _serializer.int32(obj.ecefZ, buffer, bufferOffset);
    // Serialize message field [pAcc]
    bufferOffset = _serializer.uint32(obj.pAcc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavPOSECEF
    let len;
    let data = new NavPOSECEF(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ecefX]
    data.ecefX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefY]
    data.ecefY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefZ]
    data.ecefZ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pAcc]
    data.pAcc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavPOSECEF';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f1f4f9473d5586f7fa1427a3c53cee9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-POSECEF (0x01 0x01)
    # Position Solution in ECEF
    #
    # See important comments concerning validity of position given in section
    # Navigation Output Filters.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 1
    
    uint32 iTOW             # GPS Millisecond Time of Week [ms]
    
    int32 ecefX             # ECEF X coordinate [cm]
    int32 ecefY             # ECEF Y coordinate [cm]
    int32 ecefZ             # ECEF Z coordinate [cm]
    uint32 pAcc             # Position Accuracy Estimate [cm]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavPOSECEF(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.ecefX !== undefined) {
      resolved.ecefX = msg.ecefX;
    }
    else {
      resolved.ecefX = 0
    }

    if (msg.ecefY !== undefined) {
      resolved.ecefY = msg.ecefY;
    }
    else {
      resolved.ecefY = 0
    }

    if (msg.ecefZ !== undefined) {
      resolved.ecefZ = msg.ecefZ;
    }
    else {
      resolved.ecefZ = 0
    }

    if (msg.pAcc !== undefined) {
      resolved.pAcc = msg.pAcc;
    }
    else {
      resolved.pAcc = 0
    }

    return resolved;
    }
};

// Constants for message
NavPOSECEF.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 1,
}

module.exports = NavPOSECEF;
