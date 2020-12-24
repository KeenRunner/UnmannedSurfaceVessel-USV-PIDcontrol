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

class NavATT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.version = null;
      this.reserved0 = null;
      this.roll = null;
      this.pitch = null;
      this.heading = null;
      this.accRoll = null;
      this.accPitch = null;
      this.accHeading = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
      }
      if (initObj.hasOwnProperty('accRoll')) {
        this.accRoll = initObj.accRoll
      }
      else {
        this.accRoll = 0;
      }
      if (initObj.hasOwnProperty('accPitch')) {
        this.accPitch = initObj.accPitch
      }
      else {
        this.accPitch = 0;
      }
      if (initObj.hasOwnProperty('accHeading')) {
        this.accHeading = initObj.accHeading
      }
      else {
        this.accHeading = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavATT
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 3) {
      throw new Error('Unable to serialize array field reserved0 - length must be 3')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 3);
    // Serialize message field [roll]
    bufferOffset = _serializer.int32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.int32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.int32(obj.heading, buffer, bufferOffset);
    // Serialize message field [accRoll]
    bufferOffset = _serializer.uint32(obj.accRoll, buffer, bufferOffset);
    // Serialize message field [accPitch]
    bufferOffset = _serializer.uint32(obj.accPitch, buffer, bufferOffset);
    // Serialize message field [accHeading]
    bufferOffset = _serializer.uint32(obj.accHeading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavATT
    let len;
    let data = new NavATT(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [roll]
    data.roll = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accRoll]
    data.accRoll = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [accPitch]
    data.accPitch = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [accHeading]
    data.accHeading = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavATT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d7fd152cc974cdd6905d89f564451b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-ATT (0x01 0x05)
    # Attitude Solution
    #
    # This message outputs the attitude solution as roll, pitch and heading angles.
    # Supported on ADR and UDR products.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 5
    
    uint32 iTOW               # GPS time of week of the navigation epoch [ms]
    uint8 version             # Message version (0 for this version)
    
    uint8[3] reserved0        # Reserved
    
    int32 roll                # Vehicle roll. [deg / 1e-5]
    int32 pitch               # Vehicle pitch. [deg / 1e-5]
    int32 heading             # Vehicle heading. [deg / 1e-5]
    uint32 accRoll            # Vehicle roll accuracy (if null, roll angle is not 
                              # available). [deg / 1e-5]
    uint32 accPitch           # Vehicle pitch accuracy (if null, pitch angle is not 
                              # available). [deg / 1e-5]
    uint32 accHeading         # Vehicle heading accuracy [deg / 1e-5]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavATT(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(3).fill(0)
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
    }

    if (msg.accRoll !== undefined) {
      resolved.accRoll = msg.accRoll;
    }
    else {
      resolved.accRoll = 0
    }

    if (msg.accPitch !== undefined) {
      resolved.accPitch = msg.accPitch;
    }
    else {
      resolved.accPitch = 0
    }

    if (msg.accHeading !== undefined) {
      resolved.accHeading = msg.accHeading;
    }
    else {
      resolved.accHeading = 0
    }

    return resolved;
    }
};

// Constants for message
NavATT.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 5,
}

module.exports = NavATT;
