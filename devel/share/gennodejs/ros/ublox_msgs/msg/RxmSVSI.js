// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RxmSVSI_SV = require('./RxmSVSI_SV.js');

//-----------------------------------------------------------

class RxmSVSI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.week = null;
      this.numVis = null;
      this.numSV = null;
      this.sv = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('numVis')) {
        this.numVis = initObj.numVis
      }
      else {
        this.numVis = 0;
      }
      if (initObj.hasOwnProperty('numSV')) {
        this.numSV = initObj.numSV
      }
      else {
        this.numSV = 0;
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
    // Serializes a message object of type RxmSVSI
    // Serialize message field [iTOW]
    bufferOffset = _serializer.int32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.int16(obj.week, buffer, bufferOffset);
    // Serialize message field [numVis]
    bufferOffset = _serializer.uint8(obj.numVis, buffer, bufferOffset);
    // Serialize message field [numSV]
    bufferOffset = _serializer.uint8(obj.numSV, buffer, bufferOffset);
    // Serialize message field [sv]
    // Serialize the length for message field [sv]
    bufferOffset = _serializer.uint32(obj.sv.length, buffer, bufferOffset);
    obj.sv.forEach((val) => {
      bufferOffset = RxmSVSI_SV.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmSVSI
    let len;
    let data = new RxmSVSI(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [numVis]
    data.numVis = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numSV]
    data.numSV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sv]
    // Deserialize array length for message field [sv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sv[i] = RxmSVSI_SV.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.sv.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmSVSI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8358c0613232b962d48cf13f5bda0070';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RXM-SVSI (0x02 0x20)
    # SV Status Info
    #
    # Status of the receiver manager knowledge about GPS Orbit Validity
    #
    # This message has only been retained for backwards compatibility; users are
    # recommended to use the UBX-NAV-ORB message in preference.
    
    uint8 CLASS_ID = 2
    uint8 MESSAGE_ID = 32
    
    int32 iTOW              # GPS time of week of the navigation epoch [ms]
    int16 week              # GPS week number of the navigation epoch [weeks]
    
    uint8 numVis            # Number of visible satellites
    uint8 numSV             # Number of per-SV data blocks following
    
    RxmSVSI_SV[] sv
    
    ================================================================================
    MSG: ublox_msgs/RxmSVSI_SV
    # see message RxmSVSI
    #
    
    uint8 svid            # Satellite ID
    
    uint8 svFlag          # Information Flags
    uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15
    uint8 FLAG_HEALTHY = 16       # SV healthy flag
    uint8 FLAG_EPH_VAL = 32       # Ephemeris valid
    uint8 FLAG_ALM_VAL = 64       # Almanac valid
    uint8 FLAG_NOT_AVAIL = 128    # SV not available
    
    int16 azim            # Azimuth
    int8 elev             # Elevation
    
    uint8 age             # Age of Almanac and Ephemeris
    uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4
                                  # i.e. the reference time may be in the future:
                                  # ageOfAlm = (age & 0x0f) - 4
    uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.
                                  # i.e. the reference time may be in the future:
                                  # ageOfEph = ((age & 0xf0) >> 4) - 4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmSVSI(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.numVis !== undefined) {
      resolved.numVis = msg.numVis;
    }
    else {
      resolved.numVis = 0
    }

    if (msg.numSV !== undefined) {
      resolved.numSV = msg.numSV;
    }
    else {
      resolved.numSV = 0
    }

    if (msg.sv !== undefined) {
      resolved.sv = new Array(msg.sv.length);
      for (let i = 0; i < resolved.sv.length; ++i) {
        resolved.sv[i] = RxmSVSI_SV.Resolve(msg.sv[i]);
      }
    }
    else {
      resolved.sv = []
    }

    return resolved;
    }
};

// Constants for message
RxmSVSI.Constants = {
  CLASS_ID: 2,
  MESSAGE_ID: 32,
}

module.exports = RxmSVSI;
