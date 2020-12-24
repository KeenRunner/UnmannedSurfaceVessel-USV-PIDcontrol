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

class CfgSBAS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.usage = null;
      this.maxSBAS = null;
      this.scanmode2 = null;
      this.scanmode1 = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('usage')) {
        this.usage = initObj.usage
      }
      else {
        this.usage = 0;
      }
      if (initObj.hasOwnProperty('maxSBAS')) {
        this.maxSBAS = initObj.maxSBAS
      }
      else {
        this.maxSBAS = 0;
      }
      if (initObj.hasOwnProperty('scanmode2')) {
        this.scanmode2 = initObj.scanmode2
      }
      else {
        this.scanmode2 = 0;
      }
      if (initObj.hasOwnProperty('scanmode1')) {
        this.scanmode1 = initObj.scanmode1
      }
      else {
        this.scanmode1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgSBAS
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [usage]
    bufferOffset = _serializer.uint8(obj.usage, buffer, bufferOffset);
    // Serialize message field [maxSBAS]
    bufferOffset = _serializer.uint8(obj.maxSBAS, buffer, bufferOffset);
    // Serialize message field [scanmode2]
    bufferOffset = _serializer.uint8(obj.scanmode2, buffer, bufferOffset);
    // Serialize message field [scanmode1]
    bufferOffset = _serializer.uint32(obj.scanmode1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgSBAS
    let len;
    let data = new CfgSBAS(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [usage]
    data.usage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxSBAS]
    data.maxSBAS = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [scanmode2]
    data.scanmode2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [scanmode1]
    data.scanmode1 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgSBAS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b03a1b853ac45d2da104aafaa036e7e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-SBAS (0x06 0x16)
    # SBAS Configuration
    #
    # This message configures the SBAS receiver subsystem (i.e. WAAS, EGNOS, MSAS).
    # See the SBAS Configuration Settings Description for a detailed description of
    # how these settings affect receiver operation
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 22
    
    uint8 mode              # SBAS Mode
    uint8 MODE_ENABLED = 1    # SBAS Enabled (1) / Disabled (0)
                              #  This field is deprecated; use UBX-CFG-GNSS to 
                              # enable/disable SBAS operation
    uint8 MODE_TEST = 2       # SBAS Testbed: Use data anyhow (1) / Ignore data when 
                              # in Test Mode (SBAS Msg 0)
    
    uint8 usage             # SBAS Usage
    uint8 USAGE_RANGE = 1     # Use SBAS GEOs as a ranging source (for navigation)
    uint8 USAGE_DIFF_CORR = 2 # Use SBAS Differential Corrections
    uint8 USAGE_INTEGRITY = 4 # Use SBAS Integrity Information
    
    uint8 maxSBAS           # Maximum Number of SBAS prioritized tracking
                            # channels (valid range: 0 - 3) to use
                            # (obsolete and superseeded by UBX-CFG-GNSS in protocol
                            # versions 14+).
    
    
    uint8 scanmode2         # Continuation of scanmode bitmask below
                            # PRN 152...158
    uint32 scanmode1        # Which SBAS PRN numbers to search for (Bitmask)
                            # If all Bits are set to zero, auto-scan (i.e. all valid
                            # PRNs) are searched. Every bit corresponds to a PRN 
                            # number.
                            # PRN 120..151
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgSBAS(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.usage !== undefined) {
      resolved.usage = msg.usage;
    }
    else {
      resolved.usage = 0
    }

    if (msg.maxSBAS !== undefined) {
      resolved.maxSBAS = msg.maxSBAS;
    }
    else {
      resolved.maxSBAS = 0
    }

    if (msg.scanmode2 !== undefined) {
      resolved.scanmode2 = msg.scanmode2;
    }
    else {
      resolved.scanmode2 = 0
    }

    if (msg.scanmode1 !== undefined) {
      resolved.scanmode1 = msg.scanmode1;
    }
    else {
      resolved.scanmode1 = 0
    }

    return resolved;
    }
};

// Constants for message
CfgSBAS.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 22,
  MODE_ENABLED: 1,
  MODE_TEST: 2,
  USAGE_RANGE: 1,
  USAGE_DIFF_CORR: 2,
  USAGE_INTEGRITY: 4,
}

module.exports = CfgSBAS;
