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

class NavSAT_SV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gnssId = null;
      this.svId = null;
      this.cno = null;
      this.elev = null;
      this.azim = null;
      this.prRes = null;
      this.flags = null;
    }
    else {
      if (initObj.hasOwnProperty('gnssId')) {
        this.gnssId = initObj.gnssId
      }
      else {
        this.gnssId = 0;
      }
      if (initObj.hasOwnProperty('svId')) {
        this.svId = initObj.svId
      }
      else {
        this.svId = 0;
      }
      if (initObj.hasOwnProperty('cno')) {
        this.cno = initObj.cno
      }
      else {
        this.cno = 0;
      }
      if (initObj.hasOwnProperty('elev')) {
        this.elev = initObj.elev
      }
      else {
        this.elev = 0;
      }
      if (initObj.hasOwnProperty('azim')) {
        this.azim = initObj.azim
      }
      else {
        this.azim = 0;
      }
      if (initObj.hasOwnProperty('prRes')) {
        this.prRes = initObj.prRes
      }
      else {
        this.prRes = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSAT_SV
    // Serialize message field [gnssId]
    bufferOffset = _serializer.uint8(obj.gnssId, buffer, bufferOffset);
    // Serialize message field [svId]
    bufferOffset = _serializer.uint8(obj.svId, buffer, bufferOffset);
    // Serialize message field [cno]
    bufferOffset = _serializer.uint8(obj.cno, buffer, bufferOffset);
    // Serialize message field [elev]
    bufferOffset = _serializer.int8(obj.elev, buffer, bufferOffset);
    // Serialize message field [azim]
    bufferOffset = _serializer.int16(obj.azim, buffer, bufferOffset);
    // Serialize message field [prRes]
    bufferOffset = _serializer.int16(obj.prRes, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint32(obj.flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSAT_SV
    let len;
    let data = new NavSAT_SV(null);
    // Deserialize message field [gnssId]
    data.gnssId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svId]
    data.svId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cno]
    data.cno = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [elev]
    data.elev = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [azim]
    data.azim = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [prRes]
    data.prRes = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSAT_SV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '902ea92ca9ebf53188dcf1cdef64a9a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NavSAT_SV(null);
    if (msg.gnssId !== undefined) {
      resolved.gnssId = msg.gnssId;
    }
    else {
      resolved.gnssId = 0
    }

    if (msg.svId !== undefined) {
      resolved.svId = msg.svId;
    }
    else {
      resolved.svId = 0
    }

    if (msg.cno !== undefined) {
      resolved.cno = msg.cno;
    }
    else {
      resolved.cno = 0
    }

    if (msg.elev !== undefined) {
      resolved.elev = msg.elev;
    }
    else {
      resolved.elev = 0
    }

    if (msg.azim !== undefined) {
      resolved.azim = msg.azim;
    }
    else {
      resolved.azim = 0
    }

    if (msg.prRes !== undefined) {
      resolved.prRes = msg.prRes;
    }
    else {
      resolved.prRes = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    return resolved;
    }
};

// Constants for message
NavSAT_SV.Constants = {
  FLAGS_QUALITY_IND_MASK: 7,
  QUALITY_IND_NO_SIGNAL: 0,
  QUALITY_IND_SEARCHING_SIGNAL: 1,
  QUALITY_IND_SIGNAL_ACQUIRED: 2,
  QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE: 3,
  QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC: 4,
  QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1: 5,
  QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2: 6,
  QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3: 7,
  FLAGS_SV_USED: 8,
  FLAGS_HEALTH_MASK: 48,
  HEALTH_UNKNOWN: 0,
  HEALTH_HEALTHY: 1,
  HEALTH_UNHEALTHY: 2,
  FLAGS_DIFF_CORR: 64,
  FLAGS_SMOOTHED: 128,
  FLAGS_ORBIT_SOURCE_MASK: 1792,
  ORBIT_SOURCE_UNAVAILABLE: 0,
  ORBIT_SOURCE_EPH: 256,
  ORBIT_SOURCE_ALM: 512,
  ORBIT_SOURCE_ASSIST_OFFLINE: 768,
  ORBIT_SOURCE_ASSIST_AUTONOMOUS: 1024,
  ORBIT_SOURCE_OTHER1: 1280,
  ORBIT_SOURCE_OTHER2: 1536,
  ORBIT_SOURCE_OTHER3: 1792,
  FLAGS_EPH_AVAIL: 2048,
  FLAGS_ALM_AVAIL: 4096,
  FLAGS_ANO_AVAIL: 8192,
  FLAGS_AOP_AVAIL: 16384,
  FLAGS_SBAS_CORR_USED: 65536,
  FLAGS_RTCM_CORR_USED: 131072,
  FLAGS_PR_CORR_USED: 1048576,
  FLAGS_CR_CORR_USED: 2097152,
  FLAGS_DO_CORR_USED: 4194304,
}

module.exports = NavSAT_SV;
