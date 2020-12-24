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

class NavTIMEUTC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.tAcc = null;
      this.nano = null;
      this.year = null;
      this.month = null;
      this.day = null;
      this.hour = null;
      this.min = null;
      this.sec = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('tAcc')) {
        this.tAcc = initObj.tAcc
      }
      else {
        this.tAcc = 0;
      }
      if (initObj.hasOwnProperty('nano')) {
        this.nano = initObj.nano
      }
      else {
        this.nano = 0;
      }
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = 0;
      }
      if (initObj.hasOwnProperty('month')) {
        this.month = initObj.month
      }
      else {
        this.month = 0;
      }
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = 0;
      }
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = 0;
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0;
      }
      if (initObj.hasOwnProperty('sec')) {
        this.sec = initObj.sec
      }
      else {
        this.sec = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavTIMEUTC
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [tAcc]
    bufferOffset = _serializer.uint32(obj.tAcc, buffer, bufferOffset);
    // Serialize message field [nano]
    bufferOffset = _serializer.int32(obj.nano, buffer, bufferOffset);
    // Serialize message field [year]
    bufferOffset = _serializer.uint16(obj.year, buffer, bufferOffset);
    // Serialize message field [month]
    bufferOffset = _serializer.uint8(obj.month, buffer, bufferOffset);
    // Serialize message field [day]
    bufferOffset = _serializer.uint8(obj.day, buffer, bufferOffset);
    // Serialize message field [hour]
    bufferOffset = _serializer.uint8(obj.hour, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.uint8(obj.min, buffer, bufferOffset);
    // Serialize message field [sec]
    bufferOffset = _serializer.uint8(obj.sec, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.uint8(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavTIMEUTC
    let len;
    let data = new NavTIMEUTC(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [tAcc]
    data.tAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nano]
    data.nano = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [year]
    data.year = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [month]
    data.month = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [day]
    data.day = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hour]
    data.hour = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sec]
    data.sec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavTIMEUTC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd39089655ebb13ff8d01cbe3a087db1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-TIMEUTC (0x01 0x21)
    # UTC Time Solution
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 33
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    
    uint32 tAcc             # Time Accuracy Estimate [ns]
    int32 nano              # Fraction of second, range -1e9 .. 1e9 (UTC) [ns]
    uint16 year             # Year, range 1999..2099 (UTC) [y]
    uint8 month             # Month, range 1..12 (UTC) [month]
    uint8 day               # Day of Month, range 1..31 (UTC) [d]
    uint8 hour              # Hour of Day, range 0..23 (UTC) [h]
    uint8 min               # Minute of Hour, range 0..59 (UTC) [min]
    uint8 sec               # Seconds of Minute, range 0..60 (UTC) [s] (60 for 
                            # leap second)
    
    uint8 valid             # Validity Flags
    uint8 VALID_TOW = 1         # Valid Time of Week
    uint8 VALID_WKN = 2         # Valid Week Number
    uint8 VALID_UTC = 4         # Valid Leap Seconds, i.e. Leap Seconds already known
    uint8 VALID_UTC_STANDARD_MASK = 240  # UTC standard Identifier Bit mask:
    uint8 UTC_STANDARD_NOT_AVAILABLE = 0    # Information not available
    uint8 UTC_STANDARD_CRL = 16             # Communications Research Labratory
    uint8 UTC_STANDARD_NIST = 32            # National Institute of Standards and 
                                            # Technology (NIST)
    uint8 UTC_STANDARD_USNO = 48            # U.S. Naval Observatory (USNO)
    uint8 UTC_STANDARD_BIPM = 64            # International Bureau of Weights and 
                                            # Measures (BIPM)
    uint8 UTC_STANDARD_EL = 80              # European Laboratory (tbd)
    uint8 UTC_STANDARD_SU = 96              # Former Soviet Union (SU)
    uint8 UTC_STANDARD_NTSC = 112           # National Time Service Center, China
    uint8 UTC_STANDARD_UNKNOWN = 240
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavTIMEUTC(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.tAcc !== undefined) {
      resolved.tAcc = msg.tAcc;
    }
    else {
      resolved.tAcc = 0
    }

    if (msg.nano !== undefined) {
      resolved.nano = msg.nano;
    }
    else {
      resolved.nano = 0
    }

    if (msg.year !== undefined) {
      resolved.year = msg.year;
    }
    else {
      resolved.year = 0
    }

    if (msg.month !== undefined) {
      resolved.month = msg.month;
    }
    else {
      resolved.month = 0
    }

    if (msg.day !== undefined) {
      resolved.day = msg.day;
    }
    else {
      resolved.day = 0
    }

    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = 0
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0
    }

    if (msg.sec !== undefined) {
      resolved.sec = msg.sec;
    }
    else {
      resolved.sec = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = 0
    }

    return resolved;
    }
};

// Constants for message
NavTIMEUTC.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 33,
  VALID_TOW: 1,
  VALID_WKN: 2,
  VALID_UTC: 4,
  VALID_UTC_STANDARD_MASK: 240,
  UTC_STANDARD_NOT_AVAILABLE: 0,
  UTC_STANDARD_CRL: 16,
  UTC_STANDARD_NIST: 32,
  UTC_STANDARD_USNO: 48,
  UTC_STANDARD_BIPM: 64,
  UTC_STANDARD_EL: 80,
  UTC_STANDARD_SU: 96,
  UTC_STANDARD_NTSC: 112,
  UTC_STANDARD_UNKNOWN: 240,
}

module.exports = NavTIMEUTC;
