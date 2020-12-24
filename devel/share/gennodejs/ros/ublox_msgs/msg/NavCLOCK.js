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

class NavCLOCK {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.clkB = null;
      this.clkD = null;
      this.tAcc = null;
      this.fAcc = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('clkB')) {
        this.clkB = initObj.clkB
      }
      else {
        this.clkB = 0;
      }
      if (initObj.hasOwnProperty('clkD')) {
        this.clkD = initObj.clkD
      }
      else {
        this.clkD = 0;
      }
      if (initObj.hasOwnProperty('tAcc')) {
        this.tAcc = initObj.tAcc
      }
      else {
        this.tAcc = 0;
      }
      if (initObj.hasOwnProperty('fAcc')) {
        this.fAcc = initObj.fAcc
      }
      else {
        this.fAcc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavCLOCK
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [clkB]
    bufferOffset = _serializer.int32(obj.clkB, buffer, bufferOffset);
    // Serialize message field [clkD]
    bufferOffset = _serializer.int32(obj.clkD, buffer, bufferOffset);
    // Serialize message field [tAcc]
    bufferOffset = _serializer.uint32(obj.tAcc, buffer, bufferOffset);
    // Serialize message field [fAcc]
    bufferOffset = _serializer.uint32(obj.fAcc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavCLOCK
    let len;
    let data = new NavCLOCK(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [clkB]
    data.clkB = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [clkD]
    data.clkD = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tAcc]
    data.tAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fAcc]
    data.fAcc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavCLOCK';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9acfdf2e7ac2bf086926ae4e6a182a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-CLOCK (0x01 0x22)
    # Clock Solution
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 34
    
    uint32 iTOW             # GPS Millisecond Time of week [ms]
    
    int32 clkB              # Clock bias in nanoseconds [ns]
    int32 clkD              # Clock drift in nanoseconds per second [ns/s]
    uint32 tAcc             # Time Accuracy Estimate [ns]
    uint32 fAcc             # Frequency Accuracy Estimate [ps/s]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavCLOCK(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.clkB !== undefined) {
      resolved.clkB = msg.clkB;
    }
    else {
      resolved.clkB = 0
    }

    if (msg.clkD !== undefined) {
      resolved.clkD = msg.clkD;
    }
    else {
      resolved.clkD = 0
    }

    if (msg.tAcc !== undefined) {
      resolved.tAcc = msg.tAcc;
    }
    else {
      resolved.tAcc = 0
    }

    if (msg.fAcc !== undefined) {
      resolved.fAcc = msg.fAcc;
    }
    else {
      resolved.fAcc = 0
    }

    return resolved;
    }
};

// Constants for message
NavCLOCK.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 34,
}

module.exports = NavCLOCK;
