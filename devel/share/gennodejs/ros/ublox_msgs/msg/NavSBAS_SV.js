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

class NavSBAS_SV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.svid = null;
      this.flags = null;
      this.udre = null;
      this.svSys = null;
      this.svService = null;
      this.reserved1 = null;
      this.prc = null;
      this.reserved2 = null;
      this.ic = null;
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
      if (initObj.hasOwnProperty('udre')) {
        this.udre = initObj.udre
      }
      else {
        this.udre = 0;
      }
      if (initObj.hasOwnProperty('svSys')) {
        this.svSys = initObj.svSys
      }
      else {
        this.svSys = 0;
      }
      if (initObj.hasOwnProperty('svService')) {
        this.svService = initObj.svService
      }
      else {
        this.svService = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('prc')) {
        this.prc = initObj.prc
      }
      else {
        this.prc = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
      if (initObj.hasOwnProperty('ic')) {
        this.ic = initObj.ic
      }
      else {
        this.ic = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSBAS_SV
    // Serialize message field [svid]
    bufferOffset = _serializer.uint8(obj.svid, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [udre]
    bufferOffset = _serializer.uint8(obj.udre, buffer, bufferOffset);
    // Serialize message field [svSys]
    bufferOffset = _serializer.uint8(obj.svSys, buffer, bufferOffset);
    // Serialize message field [svService]
    bufferOffset = _serializer.uint8(obj.svService, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [prc]
    bufferOffset = _serializer.int16(obj.prc, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint16(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [ic]
    bufferOffset = _serializer.int16(obj.ic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSBAS_SV
    let len;
    let data = new NavSBAS_SV(null);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [udre]
    data.udre = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svSys]
    data.svSys = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svService]
    data.svService = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [prc]
    data.prc = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ic]
    data.ic = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSBAS_SV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45259031fe19a4df2f5a4a667356a0bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # see message NavSBAS
    #
    
    uint8 svid              # SV Id
    uint8 flags             # Flags for this SV
    uint8 udre              # Monitoring status
    uint8 svSys             # System (WAAS/EGNOS/...), same as SYS
    uint8 svService         # Services available, same as SERVICE
    uint8 reserved1         # Reserved
    int16 prc               # Pseudo Range correction in [cm]
    uint16 reserved2        # Reserved
    int16 ic                # Ionosphere correction in [cm]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavSBAS_SV(null);
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

    if (msg.udre !== undefined) {
      resolved.udre = msg.udre;
    }
    else {
      resolved.udre = 0
    }

    if (msg.svSys !== undefined) {
      resolved.svSys = msg.svSys;
    }
    else {
      resolved.svSys = 0
    }

    if (msg.svService !== undefined) {
      resolved.svService = msg.svService;
    }
    else {
      resolved.svService = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    if (msg.prc !== undefined) {
      resolved.prc = msg.prc;
    }
    else {
      resolved.prc = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    if (msg.ic !== undefined) {
      resolved.ic = msg.ic;
    }
    else {
      resolved.ic = 0
    }

    return resolved;
    }
};

module.exports = NavSBAS_SV;
