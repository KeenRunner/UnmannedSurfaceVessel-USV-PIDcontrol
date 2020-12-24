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

class CfgANT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flags = null;
      this.pins = null;
    }
    else {
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('pins')) {
        this.pins = initObj.pins
      }
      else {
        this.pins = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgANT
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Serialize message field [pins]
    bufferOffset = _serializer.uint16(obj.pins, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgANT
    let len;
    let data = new CfgANT(null);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pins]
    data.pins = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgANT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c437e89b3ea397651d3a01434d681c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-ANT (0x06 0x13)
    # Antenna Control Settings
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 19
    
    uint16 flags            # Antenna Flag Mask
    uint16 FLAGS_SVCS = 1         # Enable Antenna Supply Voltage Control Signal
    uint16 FLAGS_SCD = 2          # Enable Short Circuit Detection
    uint16 FLAGS_OCD = 4          # Enable Open Circuit Detection
    uint16 FLAGS_PDWN_ON_SCD = 8  # Power Down Antenna supply if Short Circuit is 
                                  # detected. (only in combination with Bit 1)
    uint16 FLAGS_RECOVERY = 16    # Enable automatic recovery from short state
    
    uint16 pins             # Antenna Pin Configuration
    uint16 PIN_SWITCH_MASK = 31    # PIO-Pin used for switching antenna supply 
                                   # (internal to TIM-LP/TIM-LF)
    uint16 PIN_SCD_MASK = 992      # PIO-Pin used for detecting a short in the 
                                   # antenna supply
    uint16 PIN_OCD_MASK = 31744    # PIO-Pin used for detecting open/not connected 
                                   # antenna
    uint16 PIN_RECONFIG = 32678    # if set to one, and this command is sent to the 
                                   # receiver, the receiver will reconfigure the 
                                   # pins as specified.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgANT(null);
    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.pins !== undefined) {
      resolved.pins = msg.pins;
    }
    else {
      resolved.pins = 0
    }

    return resolved;
    }
};

// Constants for message
CfgANT.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 19,
  FLAGS_SVCS: 1,
  FLAGS_SCD: 2,
  FLAGS_OCD: 4,
  FLAGS_PDWN_ON_SCD: 8,
  FLAGS_RECOVERY: 16,
  PIN_SWITCH_MASK: 31,
  PIN_SCD_MASK: 992,
  PIN_OCD_MASK: 31744,
  PIN_RECONFIG: 32678,
}

module.exports = CfgANT;
