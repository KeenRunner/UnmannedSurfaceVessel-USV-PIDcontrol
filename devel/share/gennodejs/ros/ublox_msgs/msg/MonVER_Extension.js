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

class MonVER_Extension {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field = null;
    }
    else {
      if (initObj.hasOwnProperty('field')) {
        this.field = initObj.field
      }
      else {
        this.field = new Array(30).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonVER_Extension
    // Check that the constant length array field [field] has the right length
    if (obj.field.length !== 30) {
      throw new Error('Unable to serialize array field field - length must be 30')
    }
    // Serialize message field [field]
    bufferOffset = _arraySerializer.char(obj.field, buffer, bufferOffset, 30);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonVER_Extension
    let len;
    let data = new MonVER_Extension(null);
    // Deserialize message field [field]
    data.field = _arrayDeserializer.char(buffer, bufferOffset, 30)
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/MonVER_Extension';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef92c9d93e6bd2c2701384b0595ac2b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MonVER_Extension(null);
    if (msg.field !== undefined) {
      resolved.field = msg.field;
    }
    else {
      resolved.field = new Array(30).fill(0)
    }

    return resolved;
    }
};

module.exports = MonVER_Extension;
