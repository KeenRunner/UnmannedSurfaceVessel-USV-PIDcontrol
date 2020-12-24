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

class NavDGPS_SV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.svid = null;
      this.flags = null;
      this.ageC = null;
      this.prc = null;
      this.prrc = null;
    }
    else {
      if (initObj.hasOwnProperty('svid')) {
        this.svid = initObj.svid
      }
      else {
        this.svid = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('ageC')) {
        this.ageC = initObj.ageC
      }
      else {
        this.ageC = 0;
      }
      if (initObj.hasOwnProperty('prc')) {
        this.prc = initObj.prc
      }
      else {
        this.prc = 0.0;
      }
      if (initObj.hasOwnProperty('prrc')) {
        this.prrc = initObj.prrc
      }
      else {
        this.prrc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavDGPS_SV
    // Serialize message field [svid]
    bufferOffset = _serializer.uint8(obj.svid, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [ageC]
    bufferOffset = _serializer.uint16(obj.ageC, buffer, bufferOffset);
    // Serialize message field [prc]
    bufferOffset = _serializer.float32(obj.prc, buffer, bufferOffset);
    // Serialize message field [prrc]
    bufferOffset = _serializer.float32(obj.prrc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavDGPS_SV
    let len;
    let data = new NavDGPS_SV(null);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ageC]
    data.ageC = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [prc]
    data.prc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prrc]
    data.prrc = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavDGPS_SV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c16a60aa23db6f4f1a80cf6720b95063';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # see message NavDGPS
    
    uint8 svid              # Satellite ID
    
    uint8 flags             # Bitmask / Channel Number and Usage:
    uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15
                                    # Channel numbers > 15 marked as 15
    uint8 FLAGS_DGPS = 16           # DGPS Used for this SV
    
    uint16 ageC             # Age of latest correction data [ms]
    float32 prc             # Pseudo Range Correction [m]
    float32 prrc            # Pseudo Range Rate Correction [m/s]
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavDGPS_SV(null);
    if (msg.svid !== undefined) {
      resolved.svid = msg.svid;
    }
    else {
      resolved.svid = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.ageC !== undefined) {
      resolved.ageC = msg.ageC;
    }
    else {
      resolved.ageC = 0
    }

    if (msg.prc !== undefined) {
      resolved.prc = msg.prc;
    }
    else {
      resolved.prc = 0.0
    }

    if (msg.prrc !== undefined) {
      resolved.prrc = msg.prrc;
    }
    else {
      resolved.prrc = 0.0
    }

    return resolved;
    }
};

// Constants for message
NavDGPS_SV.Constants = {
  FLAGS_CHANNEL_MASK: 15,
  FLAGS_DGPS: 16,
}

module.exports = NavDGPS_SV;
