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

class Inf {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str = null;
    }
    else {
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Inf
    // Serialize message field [str]
    bufferOffset = _arraySerializer.char(obj.str, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Inf
    let len;
    let data = new Inf(null);
    // Deserialize message field [str]
    data.str = _arrayDeserializer.char(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/Inf';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1c433234e5eccc57045e40aca48eb6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # UBX-INF (0x04, 0x00...0x04)
    # ASCII output
    #
    # This message has a variable length payload, representing an ASCII string.
    #
    
    uint8 CLASS_ID = 4
    
    char[] str
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Inf(null);
    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = []
    }

    return resolved;
    }
};

// Constants for message
Inf.Constants = {
  CLASS_ID: 4,
}

module.exports = Inf;
