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

class CfgMSG {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msgClass = null;
      this.msgID = null;
      this.rate = null;
    }
    else {
      if (initObj.hasOwnProperty('msgClass')) {
        this.msgClass = initObj.msgClass
      }
      else {
        this.msgClass = 0;
      }
      if (initObj.hasOwnProperty('msgID')) {
        this.msgID = initObj.msgID
      }
      else {
        this.msgID = 0;
      }
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgMSG
    // Serialize message field [msgClass]
    bufferOffset = _serializer.uint8(obj.msgClass, buffer, bufferOffset);
    // Serialize message field [msgID]
    bufferOffset = _serializer.uint8(obj.msgID, buffer, bufferOffset);
    // Serialize message field [rate]
    bufferOffset = _serializer.uint8(obj.rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgMSG
    let len;
    let data = new CfgMSG(null);
    // Deserialize message field [msgClass]
    data.msgClass = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msgID]
    data.msgID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rate]
    data.rate = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgMSG';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f2fcd2333c19c76cbfdf6a57fc64a9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-MSG (0x06 0x01)
    # Message Rate(s)
    # 
    # Set message rate for the current port
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 1
    
    uint8 msgClass            # Message Class
    uint8 msgID               # Message Identifier
    uint8 rate                # Send rate on current port 
                              # [number of navigation solutions]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgMSG(null);
    if (msg.msgClass !== undefined) {
      resolved.msgClass = msg.msgClass;
    }
    else {
      resolved.msgClass = 0
    }

    if (msg.msgID !== undefined) {
      resolved.msgID = msg.msgID;
    }
    else {
      resolved.msgID = 0
    }

    if (msg.rate !== undefined) {
      resolved.rate = msg.rate;
    }
    else {
      resolved.rate = 0
    }

    return resolved;
    }
};

// Constants for message
CfgMSG.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 1,
}

module.exports = CfgMSG;
