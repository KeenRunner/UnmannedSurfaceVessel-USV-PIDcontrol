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

class CfgTMODE3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.reserved1 = null;
      this.flags = null;
      this.ecefXOrLat = null;
      this.ecefYOrLon = null;
      this.ecefZOrAlt = null;
      this.ecefXOrLatHP = null;
      this.ecefYOrLonHP = null;
      this.ecefZOrAltHP = null;
      this.reserved2 = null;
      this.fixedPosAcc = null;
      this.svinMinDur = null;
      this.svinAccLimit = null;
      this.reserved3 = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('ecefXOrLat')) {
        this.ecefXOrLat = initObj.ecefXOrLat
      }
      else {
        this.ecefXOrLat = 0;
      }
      if (initObj.hasOwnProperty('ecefYOrLon')) {
        this.ecefYOrLon = initObj.ecefYOrLon
      }
      else {
        this.ecefYOrLon = 0;
      }
      if (initObj.hasOwnProperty('ecefZOrAlt')) {
        this.ecefZOrAlt = initObj.ecefZOrAlt
      }
      else {
        this.ecefZOrAlt = 0;
      }
      if (initObj.hasOwnProperty('ecefXOrLatHP')) {
        this.ecefXOrLatHP = initObj.ecefXOrLatHP
      }
      else {
        this.ecefXOrLatHP = 0;
      }
      if (initObj.hasOwnProperty('ecefYOrLonHP')) {
        this.ecefYOrLonHP = initObj.ecefYOrLonHP
      }
      else {
        this.ecefYOrLonHP = 0;
      }
      if (initObj.hasOwnProperty('ecefZOrAltHP')) {
        this.ecefZOrAltHP = initObj.ecefZOrAltHP
      }
      else {
        this.ecefZOrAltHP = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
      if (initObj.hasOwnProperty('fixedPosAcc')) {
        this.fixedPosAcc = initObj.fixedPosAcc
      }
      else {
        this.fixedPosAcc = 0;
      }
      if (initObj.hasOwnProperty('svinMinDur')) {
        this.svinMinDur = initObj.svinMinDur
      }
      else {
        this.svinMinDur = 0;
      }
      if (initObj.hasOwnProperty('svinAccLimit')) {
        this.svinAccLimit = initObj.svinAccLimit
      }
      else {
        this.svinAccLimit = 0;
      }
      if (initObj.hasOwnProperty('reserved3')) {
        this.reserved3 = initObj.reserved3
      }
      else {
        this.reserved3 = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgTMODE3
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Serialize message field [ecefXOrLat]
    bufferOffset = _serializer.int32(obj.ecefXOrLat, buffer, bufferOffset);
    // Serialize message field [ecefYOrLon]
    bufferOffset = _serializer.int32(obj.ecefYOrLon, buffer, bufferOffset);
    // Serialize message field [ecefZOrAlt]
    bufferOffset = _serializer.int32(obj.ecefZOrAlt, buffer, bufferOffset);
    // Serialize message field [ecefXOrLatHP]
    bufferOffset = _serializer.int8(obj.ecefXOrLatHP, buffer, bufferOffset);
    // Serialize message field [ecefYOrLonHP]
    bufferOffset = _serializer.int8(obj.ecefYOrLonHP, buffer, bufferOffset);
    // Serialize message field [ecefZOrAltHP]
    bufferOffset = _serializer.int8(obj.ecefZOrAltHP, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint8(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [fixedPosAcc]
    bufferOffset = _serializer.uint32(obj.fixedPosAcc, buffer, bufferOffset);
    // Serialize message field [svinMinDur]
    bufferOffset = _serializer.uint32(obj.svinMinDur, buffer, bufferOffset);
    // Serialize message field [svinAccLimit]
    bufferOffset = _serializer.uint32(obj.svinAccLimit, buffer, bufferOffset);
    // Check that the constant length array field [reserved3] has the right length
    if (obj.reserved3.length !== 8) {
      throw new Error('Unable to serialize array field reserved3 - length must be 8')
    }
    // Serialize message field [reserved3]
    bufferOffset = _arraySerializer.uint8(obj.reserved3, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgTMODE3
    let len;
    let data = new CfgTMODE3(null);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ecefXOrLat]
    data.ecefXOrLat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefYOrLon]
    data.ecefYOrLon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefZOrAlt]
    data.ecefZOrAlt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefXOrLatHP]
    data.ecefXOrLatHP = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ecefYOrLonHP]
    data.ecefYOrLonHP = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ecefZOrAltHP]
    data.ecefZOrAltHP = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fixedPosAcc]
    data.fixedPosAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [svinMinDur]
    data.svinMinDur = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [svinAccLimit]
    data.svinAccLimit = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved3]
    data.reserved3 = _arrayDeserializer.uint8(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgTMODE3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '818be20c97f2b940a885faaabc0d98a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-TMODE3 (0x06, 0x71)
    # Time Mode Settings 3
    #
    # Configures the receiver to be in Time Mode. The position referred to in this
    # message is that of the Antenna Reference Point (ARP). See the Time Mode 
    # Description for details.
    # 
    # Supported on:
    #  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision
    #    GNSS products)
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 113
    
    uint8 version                     # Message version (0x00 for this version)
    uint8 reserved1                   # Reserved
    
    uint16 flags
    uint16 FLAGS_MODE_MASK = 255      # Receiver Mode:
    uint16 FLAGS_MODE_DISABLED = 0      # Disabled
    uint16 FLAGS_MODE_SURVEY_IN = 1     # Survey In
    uint16 FLAGS_MODE_FIXED = 2         # Fixed Mode (true ARP position required)
    uint16 FLAGS_LLA = 256            # Position is given in LAT/LON/ALT 
                                      # (default is ECEF)
    
    int32 ecefXOrLat                  # WGS84 ECEF X coordinate (or latitude) of
                                      # the ARP position, depending on flags above
                                      # [cm] or [deg / 1e-7]
    int32 ecefYOrLon                  # WGS84 ECEF Y coordinate (or longitude) of
                                      # the ARP position, depending on flags above
                                      # [cm] or [deg / 1e-7]
    int32 ecefZOrAlt                  # WGS84 ECEF Z coordinate (or altitude) of
                                      # the ARP position, depending on flags above
                                      # [cm]
    int8 ecefXOrLatHP                 # High-precision WGS84 ECEF X coordinate (or
                                      # latitude) of the ARP position, depending on
                                      # flags above. Must be in the range -99..+99.
                                      # The precise WGS84 ECEF X coordinate in units
                                      # of cm, or the precise WGS84 ECEF latitude in
                                      # units of 1e-7 degrees, is given by
                                      # ecefXOrLat + (ecefXOrLatHP * 1e-2)
                                      # [0.1 mm] or [deg * 1e-9]
    int8 ecefYOrLonHP                 # High-precision WGS84 ECEF Y coordinate (or
                                      # longitude) of the ARP position, depending on
                                      # flags above. Must be in the range -99..+99.
                                      # The precise WGS84 ECEF Y coordinate in units
                                      # of cm, or the precise WGS84 ECEF longitude 
                                      # in units of 1e-7 degrees, is given by
                                      # ecefYOrLon + (ecefYOrLonHP * 1e-2)
                                      # [0.1 mm] or [deg * 1e-9]
    int8 ecefZOrAltHP                 # High-precision WGS84 ECEF Z coordinate (or
                                      # altitude) of the ARP position, depending on
                                      # flags above. Must be in the range -99..+99.
                                      # The precise WGS84 ECEF Z coordinate, or
                                      # altitude coordinate, in units of cm is given
                                      # by ecefZOrAlt + (ecefZOrAltHP * 1e-2)
                                      # [0.1 mm]
    uint8 reserved2                   # Reserved
    
    uint32 fixedPosAcc                # Fixed position 3D accuracy
                                      # [0.1 mm]
    uint32 svinMinDur                 # Survey-in minimum duration
                                      # [s]
    uint32 svinAccLimit               # Survey-in position accuracy limit
                                      # [0.1 mm]
    
    uint8[8] reserved3                # Reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgTMODE3(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.ecefXOrLat !== undefined) {
      resolved.ecefXOrLat = msg.ecefXOrLat;
    }
    else {
      resolved.ecefXOrLat = 0
    }

    if (msg.ecefYOrLon !== undefined) {
      resolved.ecefYOrLon = msg.ecefYOrLon;
    }
    else {
      resolved.ecefYOrLon = 0
    }

    if (msg.ecefZOrAlt !== undefined) {
      resolved.ecefZOrAlt = msg.ecefZOrAlt;
    }
    else {
      resolved.ecefZOrAlt = 0
    }

    if (msg.ecefXOrLatHP !== undefined) {
      resolved.ecefXOrLatHP = msg.ecefXOrLatHP;
    }
    else {
      resolved.ecefXOrLatHP = 0
    }

    if (msg.ecefYOrLonHP !== undefined) {
      resolved.ecefYOrLonHP = msg.ecefYOrLonHP;
    }
    else {
      resolved.ecefYOrLonHP = 0
    }

    if (msg.ecefZOrAltHP !== undefined) {
      resolved.ecefZOrAltHP = msg.ecefZOrAltHP;
    }
    else {
      resolved.ecefZOrAltHP = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    if (msg.fixedPosAcc !== undefined) {
      resolved.fixedPosAcc = msg.fixedPosAcc;
    }
    else {
      resolved.fixedPosAcc = 0
    }

    if (msg.svinMinDur !== undefined) {
      resolved.svinMinDur = msg.svinMinDur;
    }
    else {
      resolved.svinMinDur = 0
    }

    if (msg.svinAccLimit !== undefined) {
      resolved.svinAccLimit = msg.svinAccLimit;
    }
    else {
      resolved.svinAccLimit = 0
    }

    if (msg.reserved3 !== undefined) {
      resolved.reserved3 = msg.reserved3;
    }
    else {
      resolved.reserved3 = new Array(8).fill(0)
    }

    return resolved;
    }
};

// Constants for message
CfgTMODE3.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 113,
  FLAGS_MODE_MASK: 255,
  FLAGS_MODE_DISABLED: 0,
  FLAGS_MODE_SURVEY_IN: 1,
  FLAGS_MODE_FIXED: 2,
  FLAGS_LLA: 256,
}

module.exports = CfgTMODE3;
