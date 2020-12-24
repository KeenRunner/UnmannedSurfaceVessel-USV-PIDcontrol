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

class CfgRST {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.navBbrMask = null;
      this.resetMode = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('navBbrMask')) {
        this.navBbrMask = initObj.navBbrMask
      }
      else {
        this.navBbrMask = 0;
      }
      if (initObj.hasOwnProperty('resetMode')) {
        this.resetMode = initObj.resetMode
      }
      else {
        this.resetMode = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgRST
    // Serialize message field [navBbrMask]
    bufferOffset = _serializer.uint16(obj.navBbrMask, buffer, bufferOffset);
    // Serialize message field [resetMode]
    bufferOffset = _serializer.uint8(obj.resetMode, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgRST
    let len;
    let data = new CfgRST(null);
    // Deserialize message field [navBbrMask]
    data.navBbrMask = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [resetMode]
    data.resetMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgRST';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1d02f583dd30373e526af3ea4137f5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-RST (0x06 0x04)
    # Reset Receiver / Clear Backup Data Structures
    #
    # Don't expect this message to be acknowledged by the receiver.
    #  - Newer FW version won't acknowledge this message at all.
    #  - Older FW version will acknowledge this message but the acknowledge may not
    #    be sent completely before the receiver is reset.
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 4 
    
    uint16 navBbrMask # BBR Sections to clear. 
    # The following Special Sets apply:
    uint16 NAV_BBR_HOT_START = 0       # Hot start the device
    uint16 NAV_BBR_WARM_START = 1      # Warm start the device
    uint16 NAV_BBR_COLD_START = 65535  # Cold start the device
    uint16 NAV_BBR_EPH = 1       # Ephemeris
    uint16 NAV_BBR_ALM = 2       # Almanac
    uint16 NAV_BBR_HEALTH = 4    # Health
    uint16 NAV_BBR_KLOB = 8      # Klobuchar parameters
    uint16 NAV_BBR_POS = 16      # Position
    uint16 NAV_BBR_CLKD = 32     # Clock Drift
    uint16 NAV_BBR_OSC = 64      # Oscillator Parameter
    uint16 NAV_BBR_UTC = 128     # UTC Correction + GPS Leap Seconds Parameters
    uint16 NAV_BBR_RTC = 256     # RTC
    uint16 NAV_BBR_AOP = 32768   # Autonomous Orbit Parameters
    
    uint8 resetMode              # Reset Type:
    uint8 RESET_MODE_HW_IMMEDIATE = 0       # Hardware reset (Watchdog) immediately
    uint8 RESET_MODE_SW = 1                 # Controlled Software reset
    uint8 RESET_MODE_GNSS = 2               # Controlled Software reset (GNSS only)
    uint8 RESET_MODE_HW_AFTER_SHUTDOWN = 4  # Hardware reset (Watchdog) after 
                                            # shutdown
    uint8 RESET_MODE_GNSS_STOP = 8          # Controlled GNSS stop
    uint8 RESET_MODE_GNSS_START = 9         # Controlled GNSS start
    
    uint8 reserved1     # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgRST(null);
    if (msg.navBbrMask !== undefined) {
      resolved.navBbrMask = msg.navBbrMask;
    }
    else {
      resolved.navBbrMask = 0
    }

    if (msg.resetMode !== undefined) {
      resolved.resetMode = msg.resetMode;
    }
    else {
      resolved.resetMode = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    return resolved;
    }
};

// Constants for message
CfgRST.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 4,
  NAV_BBR_HOT_START: 0,
  NAV_BBR_WARM_START: 1,
  NAV_BBR_COLD_START: 65535,
  NAV_BBR_EPH: 1,
  NAV_BBR_ALM: 2,
  NAV_BBR_HEALTH: 4,
  NAV_BBR_KLOB: 8,
  NAV_BBR_POS: 16,
  NAV_BBR_CLKD: 32,
  NAV_BBR_OSC: 64,
  NAV_BBR_UTC: 128,
  NAV_BBR_RTC: 256,
  NAV_BBR_AOP: 32768,
  RESET_MODE_HW_IMMEDIATE: 0,
  RESET_MODE_SW: 1,
  RESET_MODE_GNSS: 2,
  RESET_MODE_HW_AFTER_SHUTDOWN: 4,
  RESET_MODE_GNSS_STOP: 8,
  RESET_MODE_GNSS_START: 9,
}

module.exports = CfgRST;
