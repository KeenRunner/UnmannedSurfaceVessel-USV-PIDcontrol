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

class RxmRTCM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.flags = null;
      this.reserved0 = null;
      this.refStation = null;
      this.msgType = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('refStation')) {
        this.refStation = initObj.refStation
      }
      else {
        this.refStation = 0;
      }
      if (initObj.hasOwnProperty('msgType')) {
        this.msgType = initObj.msgType
      }
      else {
        this.msgType = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxmRTCM
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 2) {
      throw new Error('Unable to serialize array field reserved0 - length must be 2')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 2);
    // Serialize message field [refStation]
    bufferOffset = _serializer.uint16(obj.refStation, buffer, bufferOffset);
    // Serialize message field [msgType]
    bufferOffset = _serializer.uint16(obj.msgType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmRTCM
    let len;
    let data = new RxmRTCM(null);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [refStation]
    data.refStation = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [msgType]
    data.msgType = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmRTCM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86ca768ef7c0009454812a5f8c6badfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RXM-RTCM (0x02 0x32)
    # RTCM input status
    #
    # Output upon processing of an RTCM input message
    # Supported on:
    # - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01
    # 
    
    uint8 CLASS_ID = 2
    uint8 MESSAGE_ID = 50
    
    uint8 version                 # Message version (0x02 for this version)
    uint8 flags                   # RTCM input status flags
    uint8 FLAGS_CRC_FAILED = 1    # 0 when RTCM message received and passed CRC 
                                  # check, 1 when failed in which case refStation
                                  # and msgType might be corrupted and misleading
    
    uint8[2] reserved0            # Reserved
    
    uint16 refStation             # Reference station ID
    uint16 msgType                # Message type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmRTCM(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(2).fill(0)
    }

    if (msg.refStation !== undefined) {
      resolved.refStation = msg.refStation;
    }
    else {
      resolved.refStation = 0
    }

    if (msg.msgType !== undefined) {
      resolved.msgType = msg.msgType;
    }
    else {
      resolved.msgType = 0
    }

    return resolved;
    }
};

// Constants for message
RxmRTCM.Constants = {
  CLASS_ID: 2,
  MESSAGE_ID: 50,
  FLAGS_CRC_FAILED: 1,
}

module.exports = RxmRTCM;
