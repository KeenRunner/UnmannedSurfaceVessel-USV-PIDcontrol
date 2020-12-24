// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavSAT_SV = require('./NavSAT_SV.js');

//-----------------------------------------------------------

class NavSAT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.version = null;
      this.numSvs = null;
      this.reserved0 = null;
      this.sv = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('numSvs')) {
        this.numSvs = initObj.numSvs
      }
      else {
        this.numSvs = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(2).fill(0);
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
    // Serializes a message object of type NavSAT
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Serialize message field [numSvs]
    bufferOffset = _serializer.uint8(obj.numSvs, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 2) {
      throw new Error('Unable to serialize array field reserved0 - length must be 2')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 2);
    // Serialize message field [sv]
    // Serialize the length for message field [sv]
    bufferOffset = _serializer.uint32(obj.sv.length, buffer, bufferOffset);
    obj.sv.forEach((val) => {
      bufferOffset = NavSAT_SV.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSAT
    let len;
    let data = new NavSAT(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numSvs]
    data.numSvs = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [sv]
    // Deserialize array length for message field [sv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sv[i] = NavSAT_SV.deserialize(buffer, bufferOffset)
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
    return 'ublox_msgs/NavSAT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8ea6afd23cb79e7e7385313416d9c15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-SAT (0x01 0x35)
    # Satellite Information
    #
    # This message displays information about SVs which are either known to be 
    # visible or currently tracked by the receiver.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 53
    
    uint32 iTOW                # GPS time of week of the navigation epoch. [ms]
    uint8 version              # Message version (1 for this version)
    uint8 numSvs               # Number of satellites
    uint8[2] reserved0         # Reserved 
    
    # start of repeated block (numSvs times)
    NavSAT_SV[]  sv
    # end of repeated block
    ================================================================================
    MSG: ublox_msgs/NavSAT_SV
    # see NAV-SAT message
    #
    
    uint8 gnssId      # GNSS identifier
    uint8 svId        # Satellite identifier
    
    uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz
    int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]
    int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range 
                      # [deg]
    int16 prRes       # Pseudo range residual [0.1 m]
    
    uint32 flags      # Bitmask
    uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:
    uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal
    uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal
    uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired
    uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but 
                                                        # unusable
    uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time 
                                                        # synchronized
    uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier 
                                                            # locked and time 
                                                            # synchronized, 
                                                            # quality = 1
    uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier 
                                                            # locked and time 
                                                            # synchronized, 
                                                            # quality = 2
    uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier 
                                                            # locked and time 
                                                            # synchronized, 
                                                            # quality = 3
    # Note: Since IMES signals are not time synchronized, a channel tracking an IMES 
    # signal can never reach a quality indicator value of higher than 3.
    uint32 FLAGS_SV_USED = 8                      # whether SV is currently being 
                                                  # used for navigation
    uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:
    uint32 HEALTH_UNKNOWN = 0                       # unknown
    uint32 HEALTH_HEALTHY = 1                       # healthy
    uint32 HEALTH_UNHEALTHY = 2                     # unhealthy
    uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction 
                                                  # data is available for this SV
    uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed 
                                                  # pseudorange used
    uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:
    uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is 
                                                  # available for this SV
    uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used
    uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used
    uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is 
                                                    # used
    uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is 
                                                    # used
    uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is 
                                                    # used
    uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is 
                                                    # used
    uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is 
                                                    # used
    uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available 
                                                  # for this SV
    uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for 
                                                  # this SV
    uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data 
                                                  # is available for this SV
    uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous 
                                                  # data is available for this SV
    uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have 
                                                  # been used for this SV
    uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have 
                                                  # been used for this SV
    uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections 
                                                  # have been used for this SV
    uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range 
                                                  # corrections have been used for 
                                                  # this SV
    uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) 
                                                  # corrections have been used for 
                                                  # this SV
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavSAT(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.numSvs !== undefined) {
      resolved.numSvs = msg.numSvs;
    }
    else {
      resolved.numSvs = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(2).fill(0)
    }

    if (msg.sv !== undefined) {
      resolved.sv = new Array(msg.sv.length);
      for (let i = 0; i < resolved.sv.length; ++i) {
        resolved.sv[i] = NavSAT_SV.Resolve(msg.sv[i]);
      }
    }
    else {
      resolved.sv = []
    }

    return resolved;
    }
};

// Constants for message
NavSAT.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 53,
}

module.exports = NavSAT;
