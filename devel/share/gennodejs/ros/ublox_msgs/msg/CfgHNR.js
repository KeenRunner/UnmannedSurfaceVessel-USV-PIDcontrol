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

class CfgHNR {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.highNavRate = null;
      this.reserved0 = null;
    }
    else {
      if (initObj.hasOwnProperty('highNavRate')) {
        this.highNavRate = initObj.highNavRate
      }
      else {
        this.highNavRate = 0;
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
    // Serializes a message object of type CfgHNR
    // Serialize message field [highNavRate]
    bufferOffset = _serializer.uint8(obj.highNavRate, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 3) {
      throw new Error('Unable to serialize array field reserved0 - length must be 3')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgHNR
    let len;
    let data = new CfgHNR(null);
    // Deserialize message field [highNavRate]
    data.highNavRate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgHNR';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9398ae76435d6cc9cd4bf6ee2c626072';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-HNR (0x06 0x5C)
    # High Navigation Rate Settings
    #
    # The u-blox receivers support high rates of navigation update up to 30 Hz. 
    # The navigation solution output (NAV-HNR) will not be aligned to the top of a
    # second.
    # The update rate has a direct influence on the power consumption. The more
    # fixes that are required, the more CPU power and communication resources are 
    # required.
    # For most applications a 1 Hz update rate would be sufficient.
    #
    # (only with ADR or UDR products)
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 92
    
    uint8 highNavRate     # Rate of navigation solution output [Hz]
    uint8[3] reserved0    # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgHNR(null);
    if (msg.highNavRate !== undefined) {
      resolved.highNavRate = msg.highNavRate;
    }
    else {
      resolved.highNavRate = 0
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
CfgHNR.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 92,
}

module.exports = CfgHNR;
