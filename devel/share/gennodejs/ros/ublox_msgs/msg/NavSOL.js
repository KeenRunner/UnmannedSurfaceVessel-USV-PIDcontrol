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

class NavSOL {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.fTOW = null;
      this.week = null;
      this.gpsFix = null;
      this.flags = null;
      this.ecefX = null;
      this.ecefY = null;
      this.ecefZ = null;
      this.pAcc = null;
      this.ecefVX = null;
      this.ecefVY = null;
      this.ecefVZ = null;
      this.sAcc = null;
      this.pDOP = null;
      this.reserved1 = null;
      this.numSV = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('fTOW')) {
        this.fTOW = initObj.fTOW
      }
      else {
        this.fTOW = 0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('gpsFix')) {
        this.gpsFix = initObj.gpsFix
      }
      else {
        this.gpsFix = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('ecefX')) {
        this.ecefX = initObj.ecefX
      }
      else {
        this.ecefX = 0;
      }
      if (initObj.hasOwnProperty('ecefY')) {
        this.ecefY = initObj.ecefY
      }
      else {
        this.ecefY = 0;
      }
      if (initObj.hasOwnProperty('ecefZ')) {
        this.ecefZ = initObj.ecefZ
      }
      else {
        this.ecefZ = 0;
      }
      if (initObj.hasOwnProperty('pAcc')) {
        this.pAcc = initObj.pAcc
      }
      else {
        this.pAcc = 0;
      }
      if (initObj.hasOwnProperty('ecefVX')) {
        this.ecefVX = initObj.ecefVX
      }
      else {
        this.ecefVX = 0;
      }
      if (initObj.hasOwnProperty('ecefVY')) {
        this.ecefVY = initObj.ecefVY
      }
      else {
        this.ecefVY = 0;
      }
      if (initObj.hasOwnProperty('ecefVZ')) {
        this.ecefVZ = initObj.ecefVZ
      }
      else {
        this.ecefVZ = 0;
      }
      if (initObj.hasOwnProperty('sAcc')) {
        this.sAcc = initObj.sAcc
      }
      else {
        this.sAcc = 0;
      }
      if (initObj.hasOwnProperty('pDOP')) {
        this.pDOP = initObj.pDOP
      }
      else {
        this.pDOP = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('numSV')) {
        this.numSV = initObj.numSV
      }
      else {
        this.numSV = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSOL
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [fTOW]
    bufferOffset = _serializer.int32(obj.fTOW, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.int16(obj.week, buffer, bufferOffset);
    // Serialize message field [gpsFix]
    bufferOffset = _serializer.uint8(obj.gpsFix, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [ecefX]
    bufferOffset = _serializer.int32(obj.ecefX, buffer, bufferOffset);
    // Serialize message field [ecefY]
    bufferOffset = _serializer.int32(obj.ecefY, buffer, bufferOffset);
    // Serialize message field [ecefZ]
    bufferOffset = _serializer.int32(obj.ecefZ, buffer, bufferOffset);
    // Serialize message field [pAcc]
    bufferOffset = _serializer.uint32(obj.pAcc, buffer, bufferOffset);
    // Serialize message field [ecefVX]
    bufferOffset = _serializer.int32(obj.ecefVX, buffer, bufferOffset);
    // Serialize message field [ecefVY]
    bufferOffset = _serializer.int32(obj.ecefVY, buffer, bufferOffset);
    // Serialize message field [ecefVZ]
    bufferOffset = _serializer.int32(obj.ecefVZ, buffer, bufferOffset);
    // Serialize message field [sAcc]
    bufferOffset = _serializer.uint32(obj.sAcc, buffer, bufferOffset);
    // Serialize message field [pDOP]
    bufferOffset = _serializer.uint16(obj.pDOP, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [numSV]
    bufferOffset = _serializer.uint8(obj.numSV, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint32(obj.reserved2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSOL
    let len;
    let data = new NavSOL(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fTOW]
    data.fTOW = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gpsFix]
    data.gpsFix = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ecefX]
    data.ecefX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefY]
    data.ecefY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefZ]
    data.ecefZ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pAcc]
    data.pAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ecefVX]
    data.ecefVX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefVY]
    data.ecefVY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ecefVZ]
    data.ecefVZ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sAcc]
    data.sAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pDOP]
    data.pDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numSV]
    data.numSV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSOL';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbabf6cbcea22aacacf0f8dbb86da71f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-SOL (0x01 0x06)
    # Navigation Solution Information
    #
    # This message combines Position, velocity and time solution in ECEF, including 
    # accuracy figures
    # This message has only been retained for backwards compatibility; users are 
    # recommended to use the UBX-NAV-PVT message in preference.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 6
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    int32 fTOW              # Fractional Nanoseconds remainder of rounded
                            # ms above, range -500000 .. 500000 [ns]
    int16 week              # GPS week (GPS time)
    
    uint8 gpsFix            # GPSfix Type, range 0..5
    uint8 GPS_NO_FIX = 0
    uint8 GPS_DEAD_RECKONING_ONLY = 1
    uint8 GPS_2D_FIX = 2
    uint8 GPS_3D_FIX = 3
    uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4
    uint8 GPS_TIME_ONLY_FIX = 5
    
    uint8 flags             # Fix Status Flags
    uint8 FLAGS_GPS_FIX_OK = 1      # Fix within limits i.e. within DOP & ACC Masks
    uint8 FLAGS_DIFF_SOLN = 2       # DGPS used
    uint8 FLAGS_WKNSET = 4          # Week Number valid
    uint8 FLAGS_TOWSET = 8          # Time of Week valid
    
    int32 ecefX             # ECEF X coordinate [cm]
    int32 ecefY             # ECEF Y coordinate [cm]
    int32 ecefZ             # ECEF Z coordinate [cm]
    uint32 pAcc             # 3D Position Accuracy Estimate [cm]
    int32 ecefVX            # ECEF X velocity [cm/s]
    int32 ecefVY            # ECEF Y velocity [cm/s]
    int32 ecefVZ            # ECEF Z velocity [cm/s]
    uint32 sAcc             # Speed Accuracy Estimate [cm/s]
    uint16 pDOP             # Position DOP [1 / 0.01]
    uint8 reserved1         # Reserved
    uint8 numSV             # Number of SVs used in Nav Solution
    uint32 reserved2        # Reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavSOL(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.fTOW !== undefined) {
      resolved.fTOW = msg.fTOW;
    }
    else {
      resolved.fTOW = 0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.gpsFix !== undefined) {
      resolved.gpsFix = msg.gpsFix;
    }
    else {
      resolved.gpsFix = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.ecefX !== undefined) {
      resolved.ecefX = msg.ecefX;
    }
    else {
      resolved.ecefX = 0
    }

    if (msg.ecefY !== undefined) {
      resolved.ecefY = msg.ecefY;
    }
    else {
      resolved.ecefY = 0
    }

    if (msg.ecefZ !== undefined) {
      resolved.ecefZ = msg.ecefZ;
    }
    else {
      resolved.ecefZ = 0
    }

    if (msg.pAcc !== undefined) {
      resolved.pAcc = msg.pAcc;
    }
    else {
      resolved.pAcc = 0
    }

    if (msg.ecefVX !== undefined) {
      resolved.ecefVX = msg.ecefVX;
    }
    else {
      resolved.ecefVX = 0
    }

    if (msg.ecefVY !== undefined) {
      resolved.ecefVY = msg.ecefVY;
    }
    else {
      resolved.ecefVY = 0
    }

    if (msg.ecefVZ !== undefined) {
      resolved.ecefVZ = msg.ecefVZ;
    }
    else {
      resolved.ecefVZ = 0
    }

    if (msg.sAcc !== undefined) {
      resolved.sAcc = msg.sAcc;
    }
    else {
      resolved.sAcc = 0
    }

    if (msg.pDOP !== undefined) {
      resolved.pDOP = msg.pDOP;
    }
    else {
      resolved.pDOP = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    if (msg.numSV !== undefined) {
      resolved.numSV = msg.numSV;
    }
    else {
      resolved.numSV = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    return resolved;
    }
};

// Constants for message
NavSOL.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 6,
  GPS_NO_FIX: 0,
  GPS_DEAD_RECKONING_ONLY: 1,
  GPS_2D_FIX: 2,
  GPS_3D_FIX: 3,
  GPS_GPS_DEAD_RECKONING_COMBINED: 4,
  GPS_TIME_ONLY_FIX: 5,
  FLAGS_GPS_FIX_OK: 1,
  FLAGS_DIFF_SOLN: 2,
  FLAGS_WKNSET: 4,
  FLAGS_TOWSET: 8,
}

module.exports = NavSOL;
