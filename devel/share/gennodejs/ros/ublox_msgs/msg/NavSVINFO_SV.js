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

class NavSVINFO_SV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chn = null;
      this.svid = null;
      this.flags = null;
      this.quality = null;
      this.cno = null;
      this.elev = null;
      this.azim = null;
      this.prRes = null;
    }
    else {
      if (initObj.hasOwnProperty('chn')) {
        this.chn = initObj.chn
      }
      else {
        this.chn = 0;
      }
      if (initObj.hasOwnProperty('svid')) {
        this.svid = initObj.svid
      }
      else {
        this.svid = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSVINFO_SV
    // Serialize message field [chn]
    bufferOffset = _serializer.uint8(obj.chn, buffer, bufferOffset);
    // Serialize message field [svid]
    bufferOffset = _serializer.uint8(obj.svid, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.uint8(obj.quality, buffer, bufferOffset);
    // Serialize message field [cno]
    bufferOffset = _serializer.uint8(obj.cno, buffer, bufferOffset);
    // Serialize message field [elev]
    bufferOffset = _serializer.int8(obj.elev, buffer, bufferOffset);
    // Serialize message field [azim]
    bufferOffset = _serializer.int16(obj.azim, buffer, bufferOffset);
    // Serialize message field [prRes]
    bufferOffset = _serializer.int32(obj.prRes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSVINFO_SV
    let len;
    let data = new NavSVINFO_SV(null);
    // Deserialize message field [chn]
    data.chn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cno]
    data.cno = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [elev]
    data.elev = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [azim]
    data.azim = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [prRes]
    data.prRes = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSVINFO_SV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd3d8150f431e87f504da9aafff163a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NavSVINFO_SV(null);
    if (msg.chn !== undefined) {
      resolved.chn = msg.chn;
    }
    else {
      resolved.chn = 0
    }

    if (msg.svid !== undefined) {
      resolved.svid = msg.svid;
    }
    else {
      resolved.svid = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
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

    return resolved;
    }
};

// Constants for message
NavSVINFO_SV.Constants = {
  FLAGS_SV_USED: 1,
  FLAGS_DIFF_CORR: 2,
  FLAGS_ORBIT_AVAIL: 4,
  FLAGS_ORBIT_EPH: 8,
  FLAGS_UNHEALTHY: 16,
  FLAGS_ORBIT_ALM: 32,
  FLAGS_ORBIT_AOP: 64,
  FLAGS_SMOOTHED: 128,
  QUALITY_IDLE: 0,
  QUALITY_SEARCHING: 1,
  QUALITY_ACQUIRED: 2,
  QUALITY_DETECTED: 3,
  QUALITY_CODE_LOCK: 4,
  QUALITY_CODE_AND_CARRIER_LOCKED1: 5,
  QUALITY_CODE_AND_CARRIER_LOCKED2: 6,
  QUALITY_CODE_AND_CARRIER_LOCKED3: 7,
}

module.exports = NavSVINFO_SV;
