// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavDGPS_SV = require('./NavDGPS_SV.js');

//-----------------------------------------------------------

class NavDGPS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.age = null;
      this.baseId = null;
      this.baseHealth = null;
      this.numCh = null;
      this.status = null;
      this.reserved1 = null;
      this.sv = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('baseId')) {
        this.baseId = initObj.baseId
      }
      else {
        this.baseId = 0;
      }
      if (initObj.hasOwnProperty('baseHealth')) {
        this.baseHealth = initObj.baseHealth
      }
      else {
        this.baseHealth = 0;
      }
      if (initObj.hasOwnProperty('numCh')) {
        this.numCh = initObj.numCh
      }
      else {
        this.numCh = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('sv')) {
        this.sv = initObj.sv
      }
      else {
        this.sv = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavDGPS
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.int32(obj.age, buffer, bufferOffset);
    // Serialize message field [baseId]
    bufferOffset = _serializer.int16(obj.baseId, buffer, bufferOffset);
    // Serialize message field [baseHealth]
    bufferOffset = _serializer.int16(obj.baseHealth, buffer, bufferOffset);
    // Serialize message field [numCh]
    bufferOffset = _serializer.int8(obj.numCh, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint16(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [sv]
    // Serialize the length for message field [sv]
    bufferOffset = _serializer.uint32(obj.sv.length, buffer, bufferOffset);
    obj.sv.forEach((val) => {
      bufferOffset = NavDGPS_SV.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavDGPS
    let len;
    let data = new NavDGPS(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [baseId]
    data.baseId = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [baseHealth]
    data.baseHealth = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [numCh]
    data.numCh = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sv]
    // Deserialize array length for message field [sv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sv[i] = NavDGPS_SV.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.sv.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavDGPS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b40fcf35e803e9b5ccedf7c1c7ca332d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-DGPS (0x01 0x31)
    # DGPS Data Used for NAV
    #
    # This message outputs the Correction data as it has been applied to the current
    # NAV Solution. See also the notes on the RTCM protocol.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 49
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    
    int32 age               # Age of newest correction data [ms]
    int16 baseId            # DGPS Base Station ID
    int16 baseHealth        # DGPS Base Station Health Status
    int8 numCh              # Number of channels for which correction data is 
                            # following
    
    uint8 status            # DGPS Correction Type Status
    uint8 DGPS_CORRECTION_NONE = 0
    uint8 DGPS_CORRECTION_PR_PRR = 1
    
    uint16 reserved1        # Reserved
    
    NavDGPS_SV[] sv
    
    ================================================================================
    MSG: ublox_msgs/NavDGPS_SV
    # see message NavDGPS
    
    uint8 svid              # Satellite ID
    
    uint8 flags             # Bitmask / Channel Number and Usage:
    uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15
                                    # Channel numbers > 15 marked as 15
    uint8 FLAGS_DGPS = 16           # DGPS Used for this SV
    
    uint16 ageC             # Age of latest correction data [ms]
    float32 prc             # Pseudo Range Correction [m]
    float32 prrc            # Pseudo Range Rate Correction [m/s]
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavDGPS(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.baseId !== undefined) {
      resolved.baseId = msg.baseId;
    }
    else {
      resolved.baseId = 0
    }

    if (msg.baseHealth !== undefined) {
      resolved.baseHealth = msg.baseHealth;
    }
    else {
      resolved.baseHealth = 0
    }

    if (msg.numCh !== undefined) {
      resolved.numCh = msg.numCh;
    }
    else {
      resolved.numCh = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    if (msg.sv !== undefined) {
      resolved.sv = new Array(msg.sv.length);
      for (let i = 0; i < resolved.sv.length; ++i) {
        resolved.sv[i] = NavDGPS_SV.Resolve(msg.sv[i]);
      }
    }
    else {
      resolved.sv = []
    }

    return resolved;
    }
};

// Constants for message
NavDGPS.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 49,
  DGPS_CORRECTION_NONE: 0,
  DGPS_CORRECTION_PR_PRR: 1,
}

module.exports = NavDGPS;
