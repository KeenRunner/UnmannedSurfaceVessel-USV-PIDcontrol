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

class TimTM2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ch = null;
      this.flags = null;
      this.risingEdgeCount = null;
      this.wnR = null;
      this.wnF = null;
      this.towMsR = null;
      this.towSubMsR = null;
      this.towMsF = null;
      this.towSubMsF = null;
      this.accEst = null;
    }
    else {
      if (initObj.hasOwnProperty('ch')) {
        this.ch = initObj.ch
      }
      else {
        this.ch = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('risingEdgeCount')) {
        this.risingEdgeCount = initObj.risingEdgeCount
      }
      else {
        this.risingEdgeCount = 0;
      }
      if (initObj.hasOwnProperty('wnR')) {
        this.wnR = initObj.wnR
      }
      else {
        this.wnR = 0;
      }
      if (initObj.hasOwnProperty('wnF')) {
        this.wnF = initObj.wnF
      }
      else {
        this.wnF = 0;
      }
      if (initObj.hasOwnProperty('towMsR')) {
        this.towMsR = initObj.towMsR
      }
      else {
        this.towMsR = 0;
      }
      if (initObj.hasOwnProperty('towSubMsR')) {
        this.towSubMsR = initObj.towSubMsR
      }
      else {
        this.towSubMsR = 0;
      }
      if (initObj.hasOwnProperty('towMsF')) {
        this.towMsF = initObj.towMsF
      }
      else {
        this.towMsF = 0;
      }
      if (initObj.hasOwnProperty('towSubMsF')) {
        this.towSubMsF = initObj.towSubMsF
      }
      else {
        this.towSubMsF = 0;
      }
      if (initObj.hasOwnProperty('accEst')) {
        this.accEst = initObj.accEst
      }
      else {
        this.accEst = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimTM2
    // Serialize message field [ch]
    bufferOffset = _serializer.uint8(obj.ch, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [risingEdgeCount]
    bufferOffset = _serializer.uint16(obj.risingEdgeCount, buffer, bufferOffset);
    // Serialize message field [wnR]
    bufferOffset = _serializer.uint16(obj.wnR, buffer, bufferOffset);
    // Serialize message field [wnF]
    bufferOffset = _serializer.uint16(obj.wnF, buffer, bufferOffset);
    // Serialize message field [towMsR]
    bufferOffset = _serializer.uint32(obj.towMsR, buffer, bufferOffset);
    // Serialize message field [towSubMsR]
    bufferOffset = _serializer.uint32(obj.towSubMsR, buffer, bufferOffset);
    // Serialize message field [towMsF]
    bufferOffset = _serializer.uint32(obj.towMsF, buffer, bufferOffset);
    // Serialize message field [towSubMsF]
    bufferOffset = _serializer.uint32(obj.towSubMsF, buffer, bufferOffset);
    // Serialize message field [accEst]
    bufferOffset = _serializer.uint32(obj.accEst, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimTM2
    let len;
    let data = new TimTM2(null);
    // Deserialize message field [ch]
    data.ch = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [risingEdgeCount]
    data.risingEdgeCount = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [wnR]
    data.wnR = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [wnF]
    data.wnF = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [towMsR]
    data.towMsR = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [towSubMsR]
    data.towSubMsR = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [towMsF]
    data.towMsF = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [towSubMsF]
    data.towSubMsF = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [accEst]
    data.accEst = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/TimTM2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aae2d427845426ce522cb55dffc19b63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # TIM-TM2 (0x0D, 0x03)
    # Time mark data 
    #
    # Description for details.
    # 
    # Supported on:
    #  - u-blox 8 / u-blox M8 with protocol version 22 (only with Timing Products)
    #
    
    uint8 CLASS_ID = 13 
    uint8 MESSAGE_ID = 3
    
    uint8 ch                     # Channel (i.e. EXTINT) upon which the pulse was measured
    
    uint8 flags                   # Bitmask [newRisingEdge, time, utc, timeBase, , newFallingEdge, run, mode]
    uint8 FLAGS_MODE_RUNNING = 1  # single = 0, running = 1
    uint8 FLAGS_RUN = 2		# armed = 0, stopped = 1
    uint8 FLAGS_NEWFALLINGEDGE = 4 	# new falling edge detected
    uint8 FLAGS_TIMEBASE_GNSS = 8	# 0 = time base is receiver time, 1 = time base is GNSS Time (according to the configuration in CFG-TP5 for tpldx= 0)
    uint8 FLAGS_TIMEBASE_UTC = 16	# Time Base is UTC (the variant according to the configuration in CFG-NAV5
    uint8 FLAGS_UTC_AVAIL = 32	# 0 = utc not available, 1 = utc available
    uint8 FLAGS_TIME_VALID = 64	# 0 = time is not valid, 1 time is valid
    uint8 FLAGS_NEWRISINGEDGE = 128	# new rising edge detected
    
    uint16 risingEdgeCount		# rising edge count
    uint16 wnR			# week number of last rising edge
    uint16 wnF			# week number of last falling edge
    uint32 towMsR			# Tow of rising edge 
    uint32 towSubMsR		# Millisecond Fraction of Tow of rising edge in nanoseconds
    uint32 towMsF			# tow of falling edge
    uint32 towSubMsF		# millisecond fraction of tow of falling edge in nanoseconds
    uint32 accEst			# Accuracy estimate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimTM2(null);
    if (msg.ch !== undefined) {
      resolved.ch = msg.ch;
    }
    else {
      resolved.ch = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.risingEdgeCount !== undefined) {
      resolved.risingEdgeCount = msg.risingEdgeCount;
    }
    else {
      resolved.risingEdgeCount = 0
    }

    if (msg.wnR !== undefined) {
      resolved.wnR = msg.wnR;
    }
    else {
      resolved.wnR = 0
    }

    if (msg.wnF !== undefined) {
      resolved.wnF = msg.wnF;
    }
    else {
      resolved.wnF = 0
    }

    if (msg.towMsR !== undefined) {
      resolved.towMsR = msg.towMsR;
    }
    else {
      resolved.towMsR = 0
    }

    if (msg.towSubMsR !== undefined) {
      resolved.towSubMsR = msg.towSubMsR;
    }
    else {
      resolved.towSubMsR = 0
    }

    if (msg.towMsF !== undefined) {
      resolved.towMsF = msg.towMsF;
    }
    else {
      resolved.towMsF = 0
    }

    if (msg.towSubMsF !== undefined) {
      resolved.towSubMsF = msg.towSubMsF;
    }
    else {
      resolved.towSubMsF = 0
    }

    if (msg.accEst !== undefined) {
      resolved.accEst = msg.accEst;
    }
    else {
      resolved.accEst = 0
    }

    return resolved;
    }
};

// Constants for message
TimTM2.Constants = {
  CLASS_ID: 13,
  MESSAGE_ID: 3,
  FLAGS_MODE_RUNNING: 1,
  FLAGS_RUN: 2,
  FLAGS_NEWFALLINGEDGE: 4,
  FLAGS_TIMEBASE_GNSS: 8,
  FLAGS_TIMEBASE_UTC: 16,
  FLAGS_UTC_AVAIL: 32,
  FLAGS_TIME_VALID: 64,
  FLAGS_NEWRISINGEDGE: 128,
}

module.exports = TimTM2;
