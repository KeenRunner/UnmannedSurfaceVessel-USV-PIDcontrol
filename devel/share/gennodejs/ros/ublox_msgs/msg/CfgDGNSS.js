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

class CfgDGNSS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dgnssMode = null;
      this.reserved0 = null;
    }
    else {
      if (initObj.hasOwnProperty('dgnssMode')) {
        this.dgnssMode = initObj.dgnssMode
      }
      else {
        this.dgnssMode = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgDGNSS
    // Serialize message field [dgnssMode]
    bufferOffset = _serializer.uint8(obj.dgnssMode, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 3) {
      throw new Error('Unable to serialize array field reserved0 - length must be 3')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgDGNSS
    let len;
    let data = new CfgDGNSS(null);
    // Deserialize message field [dgnssMode]
    data.dgnssMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgDGNSS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec4391f93581f9db720bbc0af2b613e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-DGNSS (0x06 0x70)
    # DGNSS configuration
    #
    # This message allows the user to configure the DGNSS configuration of the 
    # receiver.
    # Supported on:
    #  - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01 (only
    #    with High Precision GNSS products)
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 112
    
    uint8 dgnssMode                 # Specifies differential mode:
    uint8 DGNSS_MODE_RTK_FLOAT = 2    # RTK float: No attempts are made to fix
                                      # ambiguities.
    uint8 DGNSS_MODE_RTK_FIXED = 3    # RTK fixed: Ambiguities are fixed whenever
                                      # possible.
    uint8[3] reserved0              # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgDGNSS(null);
    if (msg.dgnssMode !== undefined) {
      resolved.dgnssMode = msg.dgnssMode;
    }
    else {
      resolved.dgnssMode = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(3).fill(0)
    }

    return resolved;
    }
};

// Constants for message
CfgDGNSS.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 112,
  DGNSS_MODE_RTK_FLOAT: 2,
  DGNSS_MODE_RTK_FIXED: 3,
}

module.exports = CfgDGNSS;
