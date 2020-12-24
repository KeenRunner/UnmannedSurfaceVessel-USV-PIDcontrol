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

class Ack {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clsID = null;
      this.msgID = null;
    }
    else {
      if (initObj.hasOwnProperty('clsID')) {
        this.clsID = initObj.clsID
      }
      else {
        this.clsID = 0;
      }
      if (initObj.hasOwnProperty('msgID')) {
        this.msgID = initObj.msgID
      }
      else {
        this.msgID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ack
    // Serialize message field [clsID]
    bufferOffset = _serializer.uint8(obj.clsID, buffer, bufferOffset);
    // Serialize message field [msgID]
    bufferOffset = _serializer.uint8(obj.msgID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ack
    let len;
    let data = new Ack(null);
    // Deserialize message field [clsID]
    data.clsID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msgID]
    data.msgID = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/Ack';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc3270816d86d7c962dbc4b52a6c5386';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ACK (0x05)
    # Message Acknowledged / Not-Acknowledged
    #
    # Output upon processing of an input message
    #
    
    uint8 CLASS_ID = 5
    uint8 NACK_MESSAGE_ID = 0
    uint8 ACK_MESSAGE_ID = 1
    
    uint8 clsID   # Class ID of the (Not-)Acknowledged Message
    uint8 msgID   # Message ID of the (Not-)Acknowledged Message
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ack(null);
    if (msg.clsID !== undefined) {
      resolved.clsID = msg.clsID;
    }
    else {
      resolved.clsID = 0
    }

    if (msg.msgID !== undefined) {
      resolved.msgID = msg.msgID;
    }
    else {
      resolved.msgID = 0
    }

    return resolved;
    }
};

// Constants for message
Ack.Constants = {
  CLASS_ID: 5,
  NACK_MESSAGE_ID: 0,
  ACK_MESSAGE_ID: 1,
}

module.exports = Ack;
