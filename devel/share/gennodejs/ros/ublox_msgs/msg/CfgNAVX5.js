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

class CfgNAVX5 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.mask1 = null;
      this.mask2 = null;
      this.reserved1 = null;
      this.minSVs = null;
      this.maxSVs = null;
      this.minCNO = null;
      this.reserved2 = null;
      this.iniFix3D = null;
      this.reserved3 = null;
      this.ackAiding = null;
      this.wknRollover = null;
      this.sigAttenCompMode = null;
      this.reserved4 = null;
      this.usePPP = null;
      this.aopCfg = null;
      this.reserved5 = null;
      this.aopOrbMaxErr = null;
      this.reserved6 = null;
      this.useAdr = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('mask1')) {
        this.mask1 = initObj.mask1
      }
      else {
        this.mask1 = 0;
      }
      if (initObj.hasOwnProperty('mask2')) {
        this.mask2 = initObj.mask2
      }
      else {
        this.mask2 = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('minSVs')) {
        this.minSVs = initObj.minSVs
      }
      else {
        this.minSVs = 0;
      }
      if (initObj.hasOwnProperty('maxSVs')) {
        this.maxSVs = initObj.maxSVs
      }
      else {
        this.maxSVs = 0;
      }
      if (initObj.hasOwnProperty('minCNO')) {
        this.minCNO = initObj.minCNO
      }
      else {
        this.minCNO = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
      if (initObj.hasOwnProperty('iniFix3D')) {
        this.iniFix3D = initObj.iniFix3D
      }
      else {
        this.iniFix3D = 0;
      }
      if (initObj.hasOwnProperty('reserved3')) {
        this.reserved3 = initObj.reserved3
      }
      else {
        this.reserved3 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('ackAiding')) {
        this.ackAiding = initObj.ackAiding
      }
      else {
        this.ackAiding = 0;
      }
      if (initObj.hasOwnProperty('wknRollover')) {
        this.wknRollover = initObj.wknRollover
      }
      else {
        this.wknRollover = 0;
      }
      if (initObj.hasOwnProperty('sigAttenCompMode')) {
        this.sigAttenCompMode = initObj.sigAttenCompMode
      }
      else {
        this.sigAttenCompMode = 0;
      }
      if (initObj.hasOwnProperty('reserved4')) {
        this.reserved4 = initObj.reserved4
      }
      else {
        this.reserved4 = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('usePPP')) {
        this.usePPP = initObj.usePPP
      }
      else {
        this.usePPP = 0;
      }
      if (initObj.hasOwnProperty('aopCfg')) {
        this.aopCfg = initObj.aopCfg
      }
      else {
        this.aopCfg = 0;
      }
      if (initObj.hasOwnProperty('reserved5')) {
        this.reserved5 = initObj.reserved5
      }
      else {
        this.reserved5 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('aopOrbMaxErr')) {
        this.aopOrbMaxErr = initObj.aopOrbMaxErr
      }
      else {
        this.aopOrbMaxErr = 0;
      }
      if (initObj.hasOwnProperty('reserved6')) {
        this.reserved6 = initObj.reserved6
      }
      else {
        this.reserved6 = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('useAdr')) {
        this.useAdr = initObj.useAdr
      }
      else {
        this.useAdr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgNAVX5
    // Serialize message field [version]
    bufferOffset = _serializer.uint16(obj.version, buffer, bufferOffset);
    // Serialize message field [mask1]
    bufferOffset = _serializer.uint16(obj.mask1, buffer, bufferOffset);
    // Serialize message field [mask2]
    bufferOffset = _serializer.uint32(obj.mask2, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 2) {
      throw new Error('Unable to serialize array field reserved1 - length must be 2')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 2);
    // Serialize message field [minSVs]
    bufferOffset = _serializer.uint8(obj.minSVs, buffer, bufferOffset);
    // Serialize message field [maxSVs]
    bufferOffset = _serializer.uint8(obj.maxSVs, buffer, bufferOffset);
    // Serialize message field [minCNO]
    bufferOffset = _serializer.uint8(obj.minCNO, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint8(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [iniFix3D]
    bufferOffset = _serializer.uint8(obj.iniFix3D, buffer, bufferOffset);
    // Check that the constant length array field [reserved3] has the right length
    if (obj.reserved3.length !== 2) {
      throw new Error('Unable to serialize array field reserved3 - length must be 2')
    }
    // Serialize message field [reserved3]
    bufferOffset = _arraySerializer.uint8(obj.reserved3, buffer, bufferOffset, 2);
    // Serialize message field [ackAiding]
    bufferOffset = _serializer.uint8(obj.ackAiding, buffer, bufferOffset);
    // Serialize message field [wknRollover]
    bufferOffset = _serializer.uint16(obj.wknRollover, buffer, bufferOffset);
    // Serialize message field [sigAttenCompMode]
    bufferOffset = _serializer.uint8(obj.sigAttenCompMode, buffer, bufferOffset);
    // Check that the constant length array field [reserved4] has the right length
    if (obj.reserved4.length !== 5) {
      throw new Error('Unable to serialize array field reserved4 - length must be 5')
    }
    // Serialize message field [reserved4]
    bufferOffset = _arraySerializer.uint8(obj.reserved4, buffer, bufferOffset, 5);
    // Serialize message field [usePPP]
    bufferOffset = _serializer.uint8(obj.usePPP, buffer, bufferOffset);
    // Serialize message field [aopCfg]
    bufferOffset = _serializer.uint8(obj.aopCfg, buffer, bufferOffset);
    // Check that the constant length array field [reserved5] has the right length
    if (obj.reserved5.length !== 2) {
      throw new Error('Unable to serialize array field reserved5 - length must be 2')
    }
    // Serialize message field [reserved5]
    bufferOffset = _arraySerializer.uint8(obj.reserved5, buffer, bufferOffset, 2);
    // Serialize message field [aopOrbMaxErr]
    bufferOffset = _serializer.uint16(obj.aopOrbMaxErr, buffer, bufferOffset);
    // Check that the constant length array field [reserved6] has the right length
    if (obj.reserved6.length !== 7) {
      throw new Error('Unable to serialize array field reserved6 - length must be 7')
    }
    // Serialize message field [reserved6]
    bufferOffset = _arraySerializer.uint8(obj.reserved6, buffer, bufferOffset, 7);
    // Serialize message field [useAdr]
    bufferOffset = _serializer.uint8(obj.useAdr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgNAVX5
    let len;
    let data = new CfgNAVX5(null);
    // Deserialize message field [version]
    data.version = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [mask1]
    data.mask1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [mask2]
    data.mask2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [minSVs]
    data.minSVs = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxSVs]
    data.maxSVs = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minCNO]
    data.minCNO = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [iniFix3D]
    data.iniFix3D = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved3]
    data.reserved3 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [ackAiding]
    data.ackAiding = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wknRollover]
    data.wknRollover = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sigAttenCompMode]
    data.sigAttenCompMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved4]
    data.reserved4 = _arrayDeserializer.uint8(buffer, bufferOffset, 5)
    // Deserialize message field [usePPP]
    data.usePPP = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [aopCfg]
    data.aopCfg = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved5]
    data.reserved5 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [aopOrbMaxErr]
    data.aopOrbMaxErr = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved6]
    data.reserved6 = _arrayDeserializer.uint8(buffer, bufferOffset, 7)
    // Deserialize message field [useAdr]
    data.useAdr = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgNAVX5';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10b967e4bf2a0c03e74705b79c79a211';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-NAVX5 (0x06 0x23)
    # Navigation Engine Expert Settings
    #
    # Warning: Refer to u-blox protocol spec before changing these settings.
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 35
    
    uint16 version        # Message version (set to 0)
    
    uint16 mask1          # First parameters bitmask (possible values below)
    uint16 MASK1_MIN_MAX        = 4        # apply min/max SVs settings
    uint16 MASK1_MIN_CNO        = 8        # apply minimum C/N0 setting
    uint16 MASK1_INITIAL_FIX_3D = 64       # apply initial 3D fix settings
    uint16 MASK1_WKN_ROLL       = 512      # apply GPS week number rollover settings
    uint16 MASK1_ACK_AID        = 1024     # apply assistance acknowledgment 
                                           # settings
    uint16 MASK1_PPP            = 8192     # apply usePPP flag
    uint16 MASK1_AOP            = 16384    # apply aopCfg (useAOP flag) and 
                                           # aopOrbMaxErr settings
                                           # (AssistNow Autonomous)
    
    uint32 mask2          # Second parameters bitmask (possible values below)
                          # Firmware >=8 only
    uint32 MASK2_ADR = 64                    # Apply ADR sensor fusion on/off 
                                             # setting
    uint32 MASK2_SIG_ATTEN_COMP_MODE = 128   # Apply signal attenuation 
                                             # compensation feature settings
    
    uint8[2] reserved1      # Always set to zero
    
    uint8 minSVs            # Minimum number of satellites for navigation
    uint8 maxSVs            # Maximum number of satellites for navigation
    uint8 minCNO            # Minimum satellite signal level for navigation [dBHz]
    
    uint8 reserved2         # Always set to zero
    
    uint8 iniFix3D          # If set to 1, initial fix must be 3D
    
    uint8[2] reserved3      # Always set to zero
    
    uint8 ackAiding         # If set to 1, issue acknowledgments for assistance
    uint16 wknRollover      # GPS week rollover number, GPS week numbers will be set 
                            # correctly from this week up to 1024 weeks after this 
                            # week
    uint8 sigAttenCompMode  # Permanently attenuated signal compensation [dBHz]
                            # 0 = disabled, 255 = automatic
                            # 1..63 = maximum expected C/N0 value
                            # Firmware 8 only
    
    uint8[5] reserved4      # Always set to zero
    
    uint8 usePPP            # Enable/disable PPP (on supported units)
    uint8 aopCfg            # AssistNow Autonomous configuration, 1: enabled
    
    uint8[2] reserved5      # Always set to zero
    
    uint16 aopOrbMaxErr     # Maximum acceptable (modeled) autonomous orbit 
                            # error [m]
                            # valid range = 5..1000
                            # 0 = reset to firmware default
    
    uint8[7] reserved6      # Always set to zero
    
    uint8 useAdr            # Enable/disable ADR sensor fusion 
                            # 1: enabled, 0: disabled
                            # Only supported on certain products 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgNAVX5(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.mask1 !== undefined) {
      resolved.mask1 = msg.mask1;
    }
    else {
      resolved.mask1 = 0
    }

    if (msg.mask2 !== undefined) {
      resolved.mask2 = msg.mask2;
    }
    else {
      resolved.mask2 = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(2).fill(0)
    }

    if (msg.minSVs !== undefined) {
      resolved.minSVs = msg.minSVs;
    }
    else {
      resolved.minSVs = 0
    }

    if (msg.maxSVs !== undefined) {
      resolved.maxSVs = msg.maxSVs;
    }
    else {
      resolved.maxSVs = 0
    }

    if (msg.minCNO !== undefined) {
      resolved.minCNO = msg.minCNO;
    }
    else {
      resolved.minCNO = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    if (msg.iniFix3D !== undefined) {
      resolved.iniFix3D = msg.iniFix3D;
    }
    else {
      resolved.iniFix3D = 0
    }

    if (msg.reserved3 !== undefined) {
      resolved.reserved3 = msg.reserved3;
    }
    else {
      resolved.reserved3 = new Array(2).fill(0)
    }

    if (msg.ackAiding !== undefined) {
      resolved.ackAiding = msg.ackAiding;
    }
    else {
      resolved.ackAiding = 0
    }

    if (msg.wknRollover !== undefined) {
      resolved.wknRollover = msg.wknRollover;
    }
    else {
      resolved.wknRollover = 0
    }

    if (msg.sigAttenCompMode !== undefined) {
      resolved.sigAttenCompMode = msg.sigAttenCompMode;
    }
    else {
      resolved.sigAttenCompMode = 0
    }

    if (msg.reserved4 !== undefined) {
      resolved.reserved4 = msg.reserved4;
    }
    else {
      resolved.reserved4 = new Array(5).fill(0)
    }

    if (msg.usePPP !== undefined) {
      resolved.usePPP = msg.usePPP;
    }
    else {
      resolved.usePPP = 0
    }

    if (msg.aopCfg !== undefined) {
      resolved.aopCfg = msg.aopCfg;
    }
    else {
      resolved.aopCfg = 0
    }

    if (msg.reserved5 !== undefined) {
      resolved.reserved5 = msg.reserved5;
    }
    else {
      resolved.reserved5 = new Array(2).fill(0)
    }

    if (msg.aopOrbMaxErr !== undefined) {
      resolved.aopOrbMaxErr = msg.aopOrbMaxErr;
    }
    else {
      resolved.aopOrbMaxErr = 0
    }

    if (msg.reserved6 !== undefined) {
      resolved.reserved6 = msg.reserved6;
    }
    else {
      resolved.reserved6 = new Array(7).fill(0)
    }

    if (msg.useAdr !== undefined) {
      resolved.useAdr = msg.useAdr;
    }
    else {
      resolved.useAdr = 0
    }

    return resolved;
    }
};

// Constants for message
CfgNAVX5.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 35,
  MASK1_MIN_MAX: 4,
  MASK1_MIN_CNO: 8,
  MASK1_INITIAL_FIX_3D: 64,
  MASK1_WKN_ROLL: 512,
  MASK1_ACK_AID: 1024,
  MASK1_PPP: 8192,
  MASK1_AOP: 16384,
  MASK2_ADR: 64,
  MASK2_SIG_ATTEN_COMP_MODE: 128,
}

module.exports = CfgNAVX5;
