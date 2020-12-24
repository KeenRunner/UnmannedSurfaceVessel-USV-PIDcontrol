// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RxmRAW_SV = require('./RxmRAW_SV.js');

//-----------------------------------------------------------

class RxmRAW {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcvTOW = null;
      this.week = null;
      this.numSV = null;
      this.reserved1 = null;
      this.sv = null;
    }
    else {
      if (initObj.hasOwnProperty('rcvTOW')) {
        this.rcvTOW = initObj.rcvTOW
      }
      else {
        this.rcvTOW = 0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('numSV')) {
        this.numSV = initObj.numSV
      }
      else {
        this.numSV = 0;
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
    // Serializes a message object of type RxmRAW
    // Serialize message field [rcvTOW]
    bufferOffset = _serializer.int32(obj.rcvTOW, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.int16(obj.week, buffer, bufferOffset);
    // Serialize message field [numSV]
    bufferOffset = _serializer.uint8(obj.numSV, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [sv]
    // Serialize the length for message field [sv]
    bufferOffset = _serializer.uint32(obj.sv.length, buffer, bufferOffset);
    obj.sv.forEach((val) => {
      bufferOffset = RxmRAW_SV.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmRAW
    let len;
    let data = new RxmRAW(null);
    // Deserialize message field [rcvTOW]
    data.rcvTOW = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [numSV]
    data.numSV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sv]
    // Deserialize array length for message field [sv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sv[i] = RxmRAW_SV.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.sv.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmRAW';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd30ff396119937adec288ba58915e228';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RXM-RAW (0x02 0x10)
    # Raw Measurement Data
    #
    # Supported up to ublox 7 firmware. See RxmRAWX for ublox 8
    # This message contains all information needed to be able to generate a RINEX 
    # observation file.
    # This message outputs pseudorange, doppler and carrier phase measurements for 
    # GPS satellites once signals have been synchronised. No other GNSS types are 
    # currently supported.
    # 
    
    uint8 CLASS_ID = 2
    uint8 MESSAGE_ID = 16
    
    int32 rcvTOW            # Measurement time of week in receiver local time [s]
    int16 week              # Measurement week number in receiver local time [weeks]
    
    uint8 numSV             # # of satellites following
    uint8 reserved1         # Reserved
    
    RxmRAW_SV[] sv          # numSV times
    
    ================================================================================
    MSG: ublox_msgs/RxmRAW_SV
    # see message RxmRAW
    #
    
    float64 cpMes             # Carrier phase measurement [L1 cycles]
    float64 prMes             # Pseudorange measurement [m]
    float32 doMes             # Doppler measurement [Hz]
    
    uint8 sv                  # Space Vehicle Number
    int8 mesQI                # Nav Measurements Quality Indicator
                              #  >=4 : PR+DO OK
                              #  >=5 : PR+DO+CP OK
                              #  <6 : likely loss of carrier lock in previous 
                              #       interval
    int8 cno                  # Signal strength C/No. [dbHz]
    uint8 lli                 # Loss of lock indicator (RINEX definition)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmRAW(null);
    if (msg.rcvTOW !== undefined) {
      resolved.rcvTOW = msg.rcvTOW;
    }
    else {
      resolved.rcvTOW = 0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.numSV !== undefined) {
      resolved.numSV = msg.numSV;
    }
    else {
      resolved.numSV = 0
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
        resolved.sv[i] = RxmRAW_SV.Resolve(msg.sv[i]);
      }
    }
    else {
      resolved.sv = []
    }

    return resolved;
    }
};

// Constants for message
RxmRAW.Constants = {
  CLASS_ID: 2,
  MESSAGE_ID: 16,
}

module.exports = RxmRAW;
