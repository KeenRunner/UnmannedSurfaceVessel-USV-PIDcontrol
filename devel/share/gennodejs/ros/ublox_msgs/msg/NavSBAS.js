// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavSBAS_SV = require('./NavSBAS_SV.js');

//-----------------------------------------------------------

class NavSBAS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.geo = null;
      this.mode = null;
      this.sys = null;
      this.service = null;
      this.cnt = null;
      this.reserved0 = null;
      this.sv = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('geo')) {
        this.geo = initObj.geo
      }
      else {
        this.geo = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('sys')) {
        this.sys = initObj.sys
      }
      else {
        this.sys = 0;
      }
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = 0;
      }
      if (initObj.hasOwnProperty('cnt')) {
        this.cnt = initObj.cnt
      }
      else {
        this.cnt = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('sv')) {
        this.sv = initObj.sv
      }
      else {
        this.sv = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSBAS
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [geo]
    bufferOffset = _serializer.uint8(obj.geo, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [sys]
    bufferOffset = _serializer.int8(obj.sys, buffer, bufferOffset);
    // Serialize message field [service]
    bufferOffset = _serializer.uint8(obj.service, buffer, bufferOffset);
    // Serialize message field [cnt]
    bufferOffset = _serializer.uint8(obj.cnt, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 3) {
      throw new Error('Unable to serialize array field reserved0 - length must be 3')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 3);
    // Serialize message field [sv]
    // Serialize the length for message field [sv]
    bufferOffset = _serializer.uint32(obj.sv.length, buffer, bufferOffset);
    obj.sv.forEach((val) => {
      bufferOffset = NavSBAS_SV.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSBAS
    let len;
    let data = new NavSBAS(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [geo]
    data.geo = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sys]
    data.sys = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [service]
    data.service = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cnt]
    data.cnt = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [sv]
    // Deserialize array length for message field [sv]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sv = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sv[i] = NavSBAS_SV.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.sv.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSBAS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ea0a5f1e74c114f14024eb1bc277c57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-SBAS (0x01 0x32)
    # SBAS Status Data
    #
    # This message outputs the status of the SBAS sub system
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 50
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    
    uint8 geo               # PRN Number of the GEO where correction and integrity 
                            # data is used from
    
    uint8 mode              # SBAS Mode
    uint8 MODE_DISABLED = 0
    uint8 MODE_ENABLED_INTEGRITY = 1
    uint8 MODE_ENABLED_TESTMODE = 3
    
    int8 sys                # SBAS System (WAAS/EGNOS/...)
    int8 SYS_UNKNOWN = -1
    int8 SYS_WAAS = 0
    int8 SYS_EGNOS = 1
    int8 SYS_MSAS = 2
    int8 SYS_GAGAN = 3
    int8 SYS_GPS = 16
    
    uint8 service           # SBAS Services available
    uint8 SERVICE_RANGING = 1
    uint8 SERVICE_CORRECTIONS = 2
    uint8 SERVICE_INTEGRITY = 4
    uint8 SERVICE_TESTMODE = 8
    
    uint8 cnt               # Number of SV data following
    uint8[3] reserved0      # Reserved
    
    NavSBAS_SV[] sv
    
    ================================================================================
    MSG: ublox_msgs/NavSBAS_SV
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
    const resolved = new NavSBAS(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.geo !== undefined) {
      resolved.geo = msg.geo;
    }
    else {
      resolved.geo = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.sys !== undefined) {
      resolved.sys = msg.sys;
    }
    else {
      resolved.sys = 0
    }

    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = 0
    }

    if (msg.cnt !== undefined) {
      resolved.cnt = msg.cnt;
    }
    else {
      resolved.cnt = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(3).fill(0)
    }

    if (msg.sv !== undefined) {
      resolved.sv = new Array(msg.sv.length);
      for (let i = 0; i < resolved.sv.length; ++i) {
        resolved.sv[i] = NavSBAS_SV.Resolve(msg.sv[i]);
      }
    }
    else {
      resolved.sv = []
    }

    return resolved;
    }
};

// Constants for message
NavSBAS.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 50,
  MODE_DISABLED: 0,
  MODE_ENABLED_INTEGRITY: 1,
  MODE_ENABLED_TESTMODE: 3,
  SYS_UNKNOWN: -1,
  SYS_WAAS: 0,
  SYS_EGNOS: 1,
  SYS_MSAS: 2,
  SYS_GAGAN: 3,
  SYS_GPS: 16,
  SERVICE_RANGING: 1,
  SERVICE_CORRECTIONS: 2,
  SERVICE_INTEGRITY: 4,
  SERVICE_TESTMODE: 8,
}

module.exports = NavSBAS;
