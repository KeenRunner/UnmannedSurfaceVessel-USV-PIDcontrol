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

class CfgNAV5 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mask = null;
      this.dynModel = null;
      this.fixMode = null;
      this.fixedAlt = null;
      this.fixedAltVar = null;
      this.minElev = null;
      this.drLimit = null;
      this.pDop = null;
      this.tDop = null;
      this.pAcc = null;
      this.tAcc = null;
      this.staticHoldThresh = null;
      this.dgnssTimeOut = null;
      this.cnoThreshNumSvs = null;
      this.cnoThresh = null;
      this.reserved1 = null;
      this.staticHoldMaxDist = null;
      this.utcStandard = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = 0;
      }
      if (initObj.hasOwnProperty('dynModel')) {
        this.dynModel = initObj.dynModel
      }
      else {
        this.dynModel = 0;
      }
      if (initObj.hasOwnProperty('fixMode')) {
        this.fixMode = initObj.fixMode
      }
      else {
        this.fixMode = 0;
      }
      if (initObj.hasOwnProperty('fixedAlt')) {
        this.fixedAlt = initObj.fixedAlt
      }
      else {
        this.fixedAlt = 0;
      }
      if (initObj.hasOwnProperty('fixedAltVar')) {
        this.fixedAltVar = initObj.fixedAltVar
      }
      else {
        this.fixedAltVar = 0;
      }
      if (initObj.hasOwnProperty('minElev')) {
        this.minElev = initObj.minElev
      }
      else {
        this.minElev = 0;
      }
      if (initObj.hasOwnProperty('drLimit')) {
        this.drLimit = initObj.drLimit
      }
      else {
        this.drLimit = 0;
      }
      if (initObj.hasOwnProperty('pDop')) {
        this.pDop = initObj.pDop
      }
      else {
        this.pDop = 0;
      }
      if (initObj.hasOwnProperty('tDop')) {
        this.tDop = initObj.tDop
      }
      else {
        this.tDop = 0;
      }
      if (initObj.hasOwnProperty('pAcc')) {
        this.pAcc = initObj.pAcc
      }
      else {
        this.pAcc = 0;
      }
      if (initObj.hasOwnProperty('tAcc')) {
        this.tAcc = initObj.tAcc
      }
      else {
        this.tAcc = 0;
      }
      if (initObj.hasOwnProperty('staticHoldThresh')) {
        this.staticHoldThresh = initObj.staticHoldThresh
      }
      else {
        this.staticHoldThresh = 0;
      }
      if (initObj.hasOwnProperty('dgnssTimeOut')) {
        this.dgnssTimeOut = initObj.dgnssTimeOut
      }
      else {
        this.dgnssTimeOut = 0;
      }
      if (initObj.hasOwnProperty('cnoThreshNumSvs')) {
        this.cnoThreshNumSvs = initObj.cnoThreshNumSvs
      }
      else {
        this.cnoThreshNumSvs = 0;
      }
      if (initObj.hasOwnProperty('cnoThresh')) {
        this.cnoThresh = initObj.cnoThresh
      }
      else {
        this.cnoThresh = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('staticHoldMaxDist')) {
        this.staticHoldMaxDist = initObj.staticHoldMaxDist
      }
      else {
        this.staticHoldMaxDist = 0;
      }
      if (initObj.hasOwnProperty('utcStandard')) {
        this.utcStandard = initObj.utcStandard
      }
      else {
        this.utcStandard = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgNAV5
    // Serialize message field [mask]
    bufferOffset = _serializer.uint16(obj.mask, buffer, bufferOffset);
    // Serialize message field [dynModel]
    bufferOffset = _serializer.uint8(obj.dynModel, buffer, bufferOffset);
    // Serialize message field [fixMode]
    bufferOffset = _serializer.uint8(obj.fixMode, buffer, bufferOffset);
    // Serialize message field [fixedAlt]
    bufferOffset = _serializer.int32(obj.fixedAlt, buffer, bufferOffset);
    // Serialize message field [fixedAltVar]
    bufferOffset = _serializer.uint32(obj.fixedAltVar, buffer, bufferOffset);
    // Serialize message field [minElev]
    bufferOffset = _serializer.int8(obj.minElev, buffer, bufferOffset);
    // Serialize message field [drLimit]
    bufferOffset = _serializer.uint8(obj.drLimit, buffer, bufferOffset);
    // Serialize message field [pDop]
    bufferOffset = _serializer.uint16(obj.pDop, buffer, bufferOffset);
    // Serialize message field [tDop]
    bufferOffset = _serializer.uint16(obj.tDop, buffer, bufferOffset);
    // Serialize message field [pAcc]
    bufferOffset = _serializer.uint16(obj.pAcc, buffer, bufferOffset);
    // Serialize message field [tAcc]
    bufferOffset = _serializer.uint16(obj.tAcc, buffer, bufferOffset);
    // Serialize message field [staticHoldThresh]
    bufferOffset = _serializer.uint8(obj.staticHoldThresh, buffer, bufferOffset);
    // Serialize message field [dgnssTimeOut]
    bufferOffset = _serializer.uint8(obj.dgnssTimeOut, buffer, bufferOffset);
    // Serialize message field [cnoThreshNumSvs]
    bufferOffset = _serializer.uint8(obj.cnoThreshNumSvs, buffer, bufferOffset);
    // Serialize message field [cnoThresh]
    bufferOffset = _serializer.uint8(obj.cnoThresh, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 2) {
      throw new Error('Unable to serialize array field reserved1 - length must be 2')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 2);
    // Serialize message field [staticHoldMaxDist]
    bufferOffset = _serializer.uint16(obj.staticHoldMaxDist, buffer, bufferOffset);
    // Serialize message field [utcStandard]
    bufferOffset = _serializer.uint8(obj.utcStandard, buffer, bufferOffset);
    // Check that the constant length array field [reserved2] has the right length
    if (obj.reserved2.length !== 5) {
      throw new Error('Unable to serialize array field reserved2 - length must be 5')
    }
    // Serialize message field [reserved2]
    bufferOffset = _arraySerializer.uint8(obj.reserved2, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgNAV5
    let len;
    let data = new CfgNAV5(null);
    // Deserialize message field [mask]
    data.mask = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [dynModel]
    data.dynModel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fixMode]
    data.fixMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fixedAlt]
    data.fixedAlt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fixedAltVar]
    data.fixedAltVar = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [minElev]
    data.minElev = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [drLimit]
    data.drLimit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pDop]
    data.pDop = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tDop]
    data.tDop = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pAcc]
    data.pAcc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tAcc]
    data.tAcc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [staticHoldThresh]
    data.staticHoldThresh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dgnssTimeOut]
    data.dgnssTimeOut = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cnoThreshNumSvs]
    data.cnoThreshNumSvs = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cnoThresh]
    data.cnoThresh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [staticHoldMaxDist]
    data.staticHoldMaxDist = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [utcStandard]
    data.utcStandard = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _arrayDeserializer.uint8(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgNAV5';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30ca0eca946e4bd96bf9f8a145f7b72c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-NAV5 (0x06 0x24)
    # Navigation Engine Settings
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 36
    
    uint16 mask             # Parameters Bitmask. Only the masked
                            # parameters will be applied.
    uint16 MASK_DYN = 1                 # Apply dynamic model settings
    uint16 MASK_MIN_EL = 2              # Apply minimum elevation settings
    uint16 MASK_FIX_MODE = 4            # Apply fix mode settings
    uint16 MASK_DR_LIM = 8              # Apply DR limit settings
    uint16 MASK_POS_MASK = 16           # Apply position mask settings
    uint16 MASK_TIME_MASK = 32          # Apply time mask settings
    uint16 MASK_STATIC_HOLD_MASK = 64   # Apply static hold settings
    uint16 MASK_DGPS_MASK = 128         # Apply DGPS settings, firmware >= 7 only
    uint16 MASK_CNO = 256               # Apply CNO threshold settings
    uint16 MASK_UTC = 1024              # Apply UTC settings, protocol >= 16 only
    
    uint8 dynModel          # Dynamic Platform model:
    uint8 DYN_MODEL_PORTABLE = 0        # Portable
    uint8 DYN_MODEL_STATIONARY = 2      # Stationary
    uint8 DYN_MODEL_PEDESTRIAN = 3      # Pedestrian
    uint8 DYN_MODEL_AUTOMOTIVE = 4      # Automotive
    uint8 DYN_MODEL_SEA = 5             # Sea
    uint8 DYN_MODEL_AIRBORNE_1G = 6     # Airborne with <1g Acceleration
    uint8 DYN_MODEL_AIRBORNE_2G = 7     # Airborne with <2g Acceleration
    uint8 DYN_MODEL_AIRBORNE_4G = 8     # Airborne with <4g Acceleration
    uint8 DYN_MODEL_WRIST_WATCH = 9     # Wrist watch, protocol >= 18
    
    uint8 fixMode           # Position Fixing Mode.
    uint8 FIX_MODE_2D_ONLY = 1          # 2D only
    uint8 FIX_MODE_3D_ONLY = 2          # 3D only
    uint8 FIX_MODE_AUTO = 3             # Auto 2D/3D
    
    int32 fixedAlt          # Fixed altitude (mean sea level) for 2D fix mode. 
                            # [m / 0.01]
    uint32 fixedAltVar      # Fixed altitude variance for 2D mode. [m^2 / 0.0001]
    int8 minElev            # Minimum Elevation for a GNSS satellite to be used in 
                            # NAV [deg]
    uint8 drLimit           # Maximum time to perform dead reckoning [s]
                            # (linear extrapolation) in case of GPS signal loss
    uint16 pDop             # Position DOP Mask to use [1 / 0.1]
    uint16 tDop             # Time DOP Mask to use [1 / 0.1]
    uint16 pAcc             # Position Accuracy Mask [m]
    uint16 tAcc             # Time Accuracy Mask [m]
    uint8 staticHoldThresh  # Static hold threshold [cm/s]
    uint8 dgnssTimeOut      # DGNSS timeout, firmware 7 and newer only [s]
    
    uint8 cnoThreshNumSvs   # Number of satellites required to have C/N0 above 
                            # cnoThresh for a fix to be attempted
    uint8 cnoThresh         # C/N0 threshold for deciding whether to attempt a fix
                            # [dBHz]
    uint8[2] reserved1      # Reserved
    
    uint16 staticHoldMaxDist  # Static hold distance threshold (before quitting 
                              # static hold) [m]
    uint8 utcStandard       # UTC standard to be used:
    uint8 UTC_STANDARD_AUTOMATIC = 0 # receiver selects based on GNSS configuration
    uint8 UTC_STANDARD_GPS = 3       # UTC as operated by the U.S. Naval Observatory 
                                     # (USNO); derived from GPS time
    uint8 UTC_STANDARD_GLONASS = 6   # UTC as operated by the former Soviet Union;
                                     # derived from GLONASS time
    uint8 UTC_STANDARD_BEIDOU = 7    # UTC as operated by the National Time Service
                                     # Center, China; derived from BeiDou time
    uint8[5] reserved2      # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgNAV5(null);
    if (msg.mask !== undefined) {
      resolved.mask = msg.mask;
    }
    else {
      resolved.mask = 0
    }

    if (msg.dynModel !== undefined) {
      resolved.dynModel = msg.dynModel;
    }
    else {
      resolved.dynModel = 0
    }

    if (msg.fixMode !== undefined) {
      resolved.fixMode = msg.fixMode;
    }
    else {
      resolved.fixMode = 0
    }

    if (msg.fixedAlt !== undefined) {
      resolved.fixedAlt = msg.fixedAlt;
    }
    else {
      resolved.fixedAlt = 0
    }

    if (msg.fixedAltVar !== undefined) {
      resolved.fixedAltVar = msg.fixedAltVar;
    }
    else {
      resolved.fixedAltVar = 0
    }

    if (msg.minElev !== undefined) {
      resolved.minElev = msg.minElev;
    }
    else {
      resolved.minElev = 0
    }

    if (msg.drLimit !== undefined) {
      resolved.drLimit = msg.drLimit;
    }
    else {
      resolved.drLimit = 0
    }

    if (msg.pDop !== undefined) {
      resolved.pDop = msg.pDop;
    }
    else {
      resolved.pDop = 0
    }

    if (msg.tDop !== undefined) {
      resolved.tDop = msg.tDop;
    }
    else {
      resolved.tDop = 0
    }

    if (msg.pAcc !== undefined) {
      resolved.pAcc = msg.pAcc;
    }
    else {
      resolved.pAcc = 0
    }

    if (msg.tAcc !== undefined) {
      resolved.tAcc = msg.tAcc;
    }
    else {
      resolved.tAcc = 0
    }

    if (msg.staticHoldThresh !== undefined) {
      resolved.staticHoldThresh = msg.staticHoldThresh;
    }
    else {
      resolved.staticHoldThresh = 0
    }

    if (msg.dgnssTimeOut !== undefined) {
      resolved.dgnssTimeOut = msg.dgnssTimeOut;
    }
    else {
      resolved.dgnssTimeOut = 0
    }

    if (msg.cnoThreshNumSvs !== undefined) {
      resolved.cnoThreshNumSvs = msg.cnoThreshNumSvs;
    }
    else {
      resolved.cnoThreshNumSvs = 0
    }

    if (msg.cnoThresh !== undefined) {
      resolved.cnoThresh = msg.cnoThresh;
    }
    else {
      resolved.cnoThresh = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(2).fill(0)
    }

    if (msg.staticHoldMaxDist !== undefined) {
      resolved.staticHoldMaxDist = msg.staticHoldMaxDist;
    }
    else {
      resolved.staticHoldMaxDist = 0
    }

    if (msg.utcStandard !== undefined) {
      resolved.utcStandard = msg.utcStandard;
    }
    else {
      resolved.utcStandard = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = new Array(5).fill(0)
    }

    return resolved;
    }
};

// Constants for message
CfgNAV5.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 36,
  MASK_DYN: 1,
  MASK_MIN_EL: 2,
  MASK_FIX_MODE: 4,
  MASK_DR_LIM: 8,
  MASK_POS_MASK: 16,
  MASK_TIME_MASK: 32,
  MASK_STATIC_HOLD_MASK: 64,
  MASK_DGPS_MASK: 128,
  MASK_CNO: 256,
  MASK_UTC: 1024,
  DYN_MODEL_PORTABLE: 0,
  DYN_MODEL_STATIONARY: 2,
  DYN_MODEL_PEDESTRIAN: 3,
  DYN_MODEL_AUTOMOTIVE: 4,
  DYN_MODEL_SEA: 5,
  DYN_MODEL_AIRBORNE_1G: 6,
  DYN_MODEL_AIRBORNE_2G: 7,
  DYN_MODEL_AIRBORNE_4G: 8,
  DYN_MODEL_WRIST_WATCH: 9,
  FIX_MODE_2D_ONLY: 1,
  FIX_MODE_3D_ONLY: 2,
  FIX_MODE_AUTO: 3,
  UTC_STANDARD_AUTOMATIC: 0,
  UTC_STANDARD_GPS: 3,
  UTC_STANDARD_GLONASS: 6,
  UTC_STANDARD_BEIDOU: 7,
}

module.exports = CfgNAV5;
