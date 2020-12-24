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

class NavTIMEGPS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.fTOW = null;
      this.week = null;
      this.leapS = null;
      this.valid = null;
      this.tAcc = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('fTOW')) {
        this.fTOW = initObj.fTOW
      }
      else {
        this.fTOW = 0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('leapS')) {
        this.leapS = initObj.leapS
      }
      else {
        this.leapS = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = 0;
      }
      if (initObj.hasOwnProperty('tAcc')) {
        this.tAcc = initObj.tAcc
      }
      else {
        this.tAcc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavTIMEGPS
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [fTOW]
    bufferOffset = _serializer.int32(obj.fTOW, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.int16(obj.week, buffer, bufferOffset);
    // Serialize message field [leapS]
    bufferOffset = _serializer.int8(obj.leapS, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.uint8(obj.valid, buffer, bufferOffset);
    // Serialize message field [tAcc]
    bufferOffset = _serializer.uint32(obj.tAcc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavTIMEGPS
    let len;
    let data = new NavTIMEGPS(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fTOW]
    data.fTOW = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [leapS]
    data.leapS = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tAcc]
    data.tAcc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavTIMEGPS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94098180ac3e5e36144a6337c1462f46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-TIMEGPS (0x01 0x20)
    # GPS Time Solution
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 32
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    int32 fTOW              # Fractional Nanoseconds remainder of rounded
                            # ms above, range -500000 .. 500000 [ns]
    int16 week              # GPS week (GPS time)
    
    int8 leapS              # Leap Seconds (GPS-UTC) [s]
    
    uint8 valid             # Validity Flags
    uint8 VALID_TOW = 1        # Valid Time of Week
    uint8 VALID_WEEK = 2       # Valid Week Number
    uint8 VALID_LEAP_S = 4     # Valid Leap Seconds
    
    uint32 tAcc             # Time Accuracy Estimate [ns]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavTIMEGPS(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.fTOW !== undefined) {
      resolved.fTOW = msg.fTOW;
    }
    else {
      resolved.fTOW = 0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.leapS !== undefined) {
      resolved.leapS = msg.leapS;
    }
    else {
      resolved.leapS = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = 0
    }

    if (msg.tAcc !== undefined) {
      resolved.tAcc = msg.tAcc;
    }
    else {
      resolved.tAcc = 0
    }

    return resolved;
    }
};

// Constants for message
NavTIMEGPS.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 32,
  VALID_TOW: 1,
  VALID_WEEK: 2,
  VALID_LEAP_S: 4,
}

module.exports = NavTIMEGPS;
