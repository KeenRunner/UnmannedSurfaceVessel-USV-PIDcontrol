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

class CfgINF_Block {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.protocolID = null;
      this.reserved1 = null;
      this.infMsgMask = null;
    }
    else {
      if (initObj.hasOwnProperty('protocolID')) {
        this.protocolID = initObj.protocolID
      }
      else {
        this.protocolID = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('infMsgMask')) {
        this.infMsgMask = initObj.infMsgMask
      }
      else {
        this.infMsgMask = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgINF_Block
    // Serialize message field [protocolID]
    bufferOffset = _serializer.uint8(obj.protocolID, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 3) {
      throw new Error('Unable to serialize array field reserved1 - length must be 3')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 3);
    // Check that the constant length array field [infMsgMask] has the right length
    if (obj.infMsgMask.length !== 6) {
      throw new Error('Unable to serialize array field infMsgMask - length must be 6')
    }
    // Serialize message field [infMsgMask]
    bufferOffset = _arraySerializer.uint8(obj.infMsgMask, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgINF_Block
    let len;
    let data = new CfgINF_Block(null);
    // Deserialize message field [protocolID]
    data.protocolID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [infMsgMask]
    data.infMsgMask = _arrayDeserializer.uint8(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgINF_Block';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71c7fcecf939acbf06ee4e1259793fce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # See CfgINF message
    #
    
    uint8 protocolID          # Protocol Identifier, identifying for which
                              # protocol the configuration is set/get. The
                              # following are valid Protocol Identifiers:
                              # 0: UBX Protocol
                              # 1: NMEA Protocol
                              # 2-255: Reserved
    uint8 PROTOCOL_ID_UBX = 0
    uint8 PROTOCOL_ID_NMEA = 1
    
    uint8[3] reserved1        # Reserved
    
    uint8[6] infMsgMask       # A bit mask, saying which information messages
                              # are enabled on each I/O port
    uint8 INF_MSG_ERROR = 1              # enable ERROR
    uint8 INF_MSG_WARNING = 2            # enable WARNING
    uint8 INF_MSG_NOTICE = 4             # enable NOTICE
    uint8 INF_MSG_TEST = 8               # enable TEST
    uint8 INF_MSG_DEBUG = 16             # enable DEBUG
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgINF_Block(null);
    if (msg.protocolID !== undefined) {
      resolved.protocolID = msg.protocolID;
    }
    else {
      resolved.protocolID = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(3).fill(0)
    }

    if (msg.infMsgMask !== undefined) {
      resolved.infMsgMask = msg.infMsgMask;
    }
    else {
      resolved.infMsgMask = new Array(6).fill(0)
    }

    return resolved;
    }
};

// Constants for message
CfgINF_Block.Constants = {
  PROTOCOL_ID_UBX: 0,
  PROTOCOL_ID_NMEA: 1,
  INF_MSG_ERROR: 1,
  INF_MSG_WARNING: 2,
  INF_MSG_NOTICE: 4,
  INF_MSG_TEST: 8,
  INF_MSG_DEBUG: 16,
}

module.exports = CfgINF_Block;
