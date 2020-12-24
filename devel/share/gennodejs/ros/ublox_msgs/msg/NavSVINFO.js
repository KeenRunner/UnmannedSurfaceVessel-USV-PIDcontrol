// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavSVINFO_SV = require('./NavSVINFO_SV.js');

//-----------------------------------------------------------

class NavSVINFO {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.numCh = null;
      this.globalFlags = null;
      this.reserved2 = null;
      this.sv = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('numCh')) {
        this.numCh = initObj.numCh
      }
      else {
        this.numCh = 0;
      }
      if (initObj.hasOwnProperty('globalFlags')) {
        this.globalFlags = initObj.globalFlags
      }
      else {
        this.globalFlags = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
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
    // Serializes a message object of type NavSVINFO
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [numCh]
    bufferOffset = _serializer.uint8(obj.numCh, buffer, bufferOffset);
    // Serialize message field [globalFlags]
    bufferOffset = _serializer.uint8(obj.globalFlags, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint16(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [sv]
    // Serialize the length for message field [sv]
    bufferOffset = _serializer.uint32(obj.sv.length, buffer, bufferOffset);
    obj.sv.forEach((val) => {
      bufferOffset = NavSVINFO_SV.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSVINFO
    let len;
    let data = new NavSVINFO(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [numCh]
    data.numCh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [globalFlags]
    data.globalFlags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sv]
    // Deserialize array length for message field [sv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sv[i] = NavSVINFO_SV.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.sv.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSVINFO';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '869d73cea8ef4943b3f757dcb81282ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-SVINFO (0x01 0x30)
    # Space Vehicle Information
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 48
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    
    uint8 numCh             # Number of channels
    
    uint8 globalFlags       # Bitmask
    # Chip Hardware generation flags
    uint8 CHIPGEN_ANTARIS = 0   # Antaris, Antaris 4
    uint8 CHIPGEN_UBLOX5 = 1    # u-blox 5
    uint8 CHIPGEN_UBLOX6 = 2    # u-blox 6
    uint8 CHIPGEN_UBLOX7 = 3    # u-blox 7
    uint8 CHIPGEN_UBLOX8 = 4    # u-blox 8 / u-blox M8
    
    uint16 reserved2        # Reserved
    
    NavSVINFO_SV[] sv
    
    ================================================================================
    MSG: ublox_msgs/NavSVINFO_SV
    # see message NavSVINFO
    #
    
    uint8 chn             # Channel number, 255 for SVs not assigned to a channel
    uint8 svid            # Satellite ID
    
    uint8 flags           # Bitmask
    uint8 FLAGS_SV_USED = 1                     # SV is used for navigation
    uint8 FLAGS_DIFF_CORR = 2                   # Differential correction data 
                                                # is available for this SV
    uint8 FLAGS_ORBIT_AVAIL = 4                 # Orbit information is available for 
                                                # this SV (Ephemeris or Almanach)
    uint8 FLAGS_ORBIT_EPH = 8                   # Orbit information is Ephemeris
    uint8 FLAGS_UNHEALTHY = 16                  # SV is unhealthy / shall not be 
                                                # used
    uint8 FLAGS_ORBIT_ALM = 32                  # Orbit information is Almanac Plus
    uint8 FLAGS_ORBIT_AOP = 64                  # Orbit information is AssistNow 
                                                # Autonomous
    uint8 FLAGS_SMOOTHED = 128                  # Carrier smoothed pseudorange used
    
    uint8 quality         # Bitfield
    # qualityInd: Signal Quality indicator (range 0..7). The following list shows 
    # the meaning of the different QI values:
    # Note: Since IMES signals are not time synchronized, a channel tracking an IMES
    # signal can never reach a quality indicator value of higher than 3.
    uint8 QUALITY_IDLE = 0                      # This channel is idle
    uint8 QUALITY_SEARCHING = 1                 # Channel is searching
    uint8 QUALITY_ACQUIRED = 2                   # Signal acquired
    uint8 QUALITY_DETECTED = 3                  # Signal detected but unusable
    uint8 QUALITY_CODE_LOCK = 4                 # Code Lock on Signal
    uint8 QUALITY_CODE_AND_CARRIER_LOCKED1 = 5  # Code and Carrier locked 
                                                # and time synchronized
    uint8 QUALITY_CODE_AND_CARRIER_LOCKED2 = 6  # Code and Carrier locked 
                                                # and time synchronized
    uint8 QUALITY_CODE_AND_CARRIER_LOCKED3 = 7  # Code and Carrier locked 
                                                # and time synchronized
    
    uint8 cno             # Carrier to Noise Ratio (Signal Strength) [dBHz]
    int8 elev             # Elevation in integer degrees [deg]
    int16 azim            # Azimuth in integer degrees [deg]
    int32 prRes           # Pseudo range residual in centimetres [cm]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavSVINFO(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.numCh !== undefined) {
      resolved.numCh = msg.numCh;
    }
    else {
      resolved.numCh = 0
    }

    if (msg.globalFlags !== undefined) {
      resolved.globalFlags = msg.globalFlags;
    }
    else {
      resolved.globalFlags = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    if (msg.sv !== undefined) {
      resolved.sv = new Array(msg.sv.length);
      for (let i = 0; i < resolved.sv.length; ++i) {
        resolved.sv[i] = NavSVINFO_SV.Resolve(msg.sv[i]);
      }
    }
    else {
      resolved.sv = []
    }

    return resolved;
    }
};

// Constants for message
NavSVINFO.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 48,
  CHIPGEN_ANTARIS: 0,
  CHIPGEN_UBLOX5: 1,
  CHIPGEN_UBLOX6: 2,
  CHIPGEN_UBLOX7: 3,
  CHIPGEN_UBLOX8: 4,
}

module.exports = NavSVINFO;
