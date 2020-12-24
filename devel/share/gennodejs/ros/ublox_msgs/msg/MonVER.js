// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MonVER_Extension = require('./MonVER_Extension.js');

//-----------------------------------------------------------

class MonVER {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swVersion = null;
      this.hwVersion = null;
      this.extension = null;
    }
    else {
      if (initObj.hasOwnProperty('swVersion')) {
        this.swVersion = initObj.swVersion
      }
      else {
        this.swVersion = new Array(30).fill(0);
      }
      if (initObj.hasOwnProperty('hwVersion')) {
        this.hwVersion = initObj.hwVersion
      }
      else {
        this.hwVersion = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('extension')) {
        this.extension = initObj.extension
      }
      else {
        this.extension = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonVER
    // Check that the constant length array field [swVersion] has the right length
    if (obj.swVersion.length !== 30) {
      throw new Error('Unable to serialize array field swVersion - length must be 30')
    }
    // Serialize message field [swVersion]
    bufferOffset = _arraySerializer.char(obj.swVersion, buffer, bufferOffset, 30);
    // Check that the constant length array field [hwVersion] has the right length
    if (obj.hwVersion.length !== 10) {
      throw new Error('Unable to serialize array field hwVersion - length must be 10')
    }
    // Serialize message field [hwVersion]
    bufferOffset = _arraySerializer.char(obj.hwVersion, buffer, bufferOffset, 10);
    // Serialize message field [extension]
    // Serialize the length for message field [extension]
    bufferOffset = _serializer.uint32(obj.extension.length, buffer, bufferOffset);
    obj.extension.forEach((val) => {
      bufferOffset = MonVER_Extension.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonVER
    let len;
    let data = new MonVER(null);
    // Deserialize message field [swVersion]
    data.swVersion = _arrayDeserializer.char(buffer, bufferOffset, 30)
    // Deserialize message field [hwVersion]
    data.hwVersion = _arrayDeserializer.char(buffer, bufferOffset, 10)
    // Deserialize message field [extension]
    // Deserialize array length for message field [extension]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.extension = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.extension[i] = MonVER_Extension.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 30 * object.extension.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/MonVER';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83c8a03d7744e76cc085d953e1a5a293';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MON-VER (0x0A 0x04)
    #
    # Receiver/Software Version
    # Returned when the version is polled.
    
    uint8 CLASS_ID = 10
    uint8 MESSAGE_ID = 4
    
    char[30] swVersion    # Zero-terminated software version string.
    char[10] hwVersion    # Zero-terminated hardware version string.
    
    # Start of repeated block (N times)
    MonVER_Extension[] extension
    # End of repeated block
    
    ================================================================================
    MSG: ublox_msgs/MonVER_Extension
    # see MonVER message
    #
    
    char[30] field
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonVER(null);
    if (msg.swVersion !== undefined) {
      resolved.swVersion = msg.swVersion;
    }
    else {
      resolved.swVersion = new Array(30).fill(0)
    }

    if (msg.hwVersion !== undefined) {
      resolved.hwVersion = msg.hwVersion;
    }
    else {
      resolved.hwVersion = new Array(10).fill(0)
    }

    if (msg.extension !== undefined) {
      resolved.extension = new Array(msg.extension.length);
      for (let i = 0; i < resolved.extension.length; ++i) {
        resolved.extension[i] = MonVER_Extension.Resolve(msg.extension[i]);
      }
    }
    else {
      resolved.extension = []
    }

    return resolved;
    }
};

// Constants for message
MonVER.Constants = {
  CLASS_ID: 10,
  MESSAGE_ID: 4,
}

module.exports = MonVER;
