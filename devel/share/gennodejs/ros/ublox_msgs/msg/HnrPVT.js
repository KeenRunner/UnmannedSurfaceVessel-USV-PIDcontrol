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

class HnrPVT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.year = null;
      this.month = null;
      this.day = null;
      this.hour = null;
      this.min = null;
      this.sec = null;
      this.valid = null;
      this.nano = null;
      this.gpsFix = null;
      this.flags = null;
      this.reserved0 = null;
      this.lon = null;
      this.lat = null;
      this.height = null;
      this.hMSL = null;
      this.gSpeed = null;
      this.speed = null;
      this.headMot = null;
      this.headVeh = null;
      this.hAcc = null;
      this.vAcc = null;
      this.sAcc = null;
      this.headAcc = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = 0;
      }
      if (initObj.hasOwnProperty('month')) {
        this.month = initObj.month
      }
      else {
        this.month = 0;
      }
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = 0;
      }
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = 0;
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0;
      }
      if (initObj.hasOwnProperty('sec')) {
        this.sec = initObj.sec
      }
      else {
        this.sec = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = 0;
      }
      if (initObj.hasOwnProperty('nano')) {
        this.nano = initObj.nano
      }
      else {
        this.nano = 0;
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
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('hMSL')) {
        this.hMSL = initObj.hMSL
      }
      else {
        this.hMSL = 0;
      }
      if (initObj.hasOwnProperty('gSpeed')) {
        this.gSpeed = initObj.gSpeed
      }
      else {
        this.gSpeed = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('headMot')) {
        this.headMot = initObj.headMot
      }
      else {
        this.headMot = 0;
      }
      if (initObj.hasOwnProperty('headVeh')) {
        this.headVeh = initObj.headVeh
      }
      else {
        this.headVeh = 0;
      }
      if (initObj.hasOwnProperty('hAcc')) {
        this.hAcc = initObj.hAcc
      }
      else {
        this.hAcc = 0;
      }
      if (initObj.hasOwnProperty('vAcc')) {
        this.vAcc = initObj.vAcc
      }
      else {
        this.vAcc = 0;
      }
      if (initObj.hasOwnProperty('sAcc')) {
        this.sAcc = initObj.sAcc
      }
      else {
        this.sAcc = 0;
      }
      if (initObj.hasOwnProperty('headAcc')) {
        this.headAcc = initObj.headAcc
      }
      else {
        this.headAcc = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HnrPVT
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [year]
    bufferOffset = _serializer.uint16(obj.year, buffer, bufferOffset);
    // Serialize message field [month]
    bufferOffset = _serializer.uint8(obj.month, buffer, bufferOffset);
    // Serialize message field [day]
    bufferOffset = _serializer.uint8(obj.day, buffer, bufferOffset);
    // Serialize message field [hour]
    bufferOffset = _serializer.uint8(obj.hour, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.uint8(obj.min, buffer, bufferOffset);
    // Serialize message field [sec]
    bufferOffset = _serializer.uint8(obj.sec, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.uint8(obj.valid, buffer, bufferOffset);
    // Serialize message field [nano]
    bufferOffset = _serializer.int32(obj.nano, buffer, bufferOffset);
    // Serialize message field [gpsFix]
    bufferOffset = _serializer.uint8(obj.gpsFix, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 2) {
      throw new Error('Unable to serialize array field reserved0 - length must be 2')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 2);
    // Serialize message field [lon]
    bufferOffset = _serializer.int32(obj.lon, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.int32(obj.lat, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [hMSL]
    bufferOffset = _serializer.int32(obj.hMSL, buffer, bufferOffset);
    // Serialize message field [gSpeed]
    bufferOffset = _serializer.int32(obj.gSpeed, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    // Serialize message field [headMot]
    bufferOffset = _serializer.int32(obj.headMot, buffer, bufferOffset);
    // Serialize message field [headVeh]
    bufferOffset = _serializer.int32(obj.headVeh, buffer, bufferOffset);
    // Serialize message field [hAcc]
    bufferOffset = _serializer.uint32(obj.hAcc, buffer, bufferOffset);
    // Serialize message field [vAcc]
    bufferOffset = _serializer.uint32(obj.vAcc, buffer, bufferOffset);
    // Serialize message field [sAcc]
    bufferOffset = _serializer.uint32(obj.sAcc, buffer, bufferOffset);
    // Serialize message field [headAcc]
    bufferOffset = _serializer.uint32(obj.headAcc, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 4) {
      throw new Error('Unable to serialize array field reserved1 - length must be 4')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HnrPVT
    let len;
    let data = new HnrPVT(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [year]
    data.year = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [month]
    data.month = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [day]
    data.day = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hour]
    data.hour = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sec]
    data.sec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nano]
    data.nano = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gpsFix]
    data.gpsFix = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [lon]
    data.lon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hMSL]
    data.hMSL = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gSpeed]
    data.gSpeed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [headMot]
    data.headMot = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [headVeh]
    data.headVeh = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hAcc]
    data.hAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [vAcc]
    data.vAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sAcc]
    data.sAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [headAcc]
    data.headAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/HnrPVT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1803c15f4ff593453ea993864baf0f33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # HNR-PVT (0x28 0x00)
    # High Rate Output of PVT Solution
    #
    # Note that during a leap second there may be more (or less) than 60 seconds in
    # a minute; see the description of leap seconds for details.
    #
    # This message provides the position, velocity and time solution with high 
    # output rate.
    #
    # Supported on ADR and UDR products.
    #
    uint8 CLASS_ID = 40
    uint8 MESSAGE_ID = 0
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    uint16 year             # Year (UTC)
    uint8 month             # Month, range 1..12 (UTC)
    uint8 day               # Day of month, range 1..31 (UTC)
    uint8 hour              # Hour of day, range 0..23 (UTC)
    uint8 min               # Minute of hour, range 0..59 (UTC)
    uint8 sec               # Seconds of minute, range 0..60 (UTC)
    
    uint8 valid             # Validity flags
    uint8 VALID_DATE = 1            # Valid UTC Date
    uint8 VALID_TIME = 2            # Valid 
    uint8 VALID_FULLY_RESOLVED = 4  # UTC time of day has been fully resolved 
                                    # (no seconds uncertainty)
    uint8 VALID_MAG = 8             # Valid Magnetic Declination
    
    int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)
    
    uint8 gpsFix            # GPS fix Type, range 0..5
    uint8 FIX_TYPE_NO_FIX = 0
    uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1
    uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, 
                                                    # constant altitude assumed
    uint8 FIX_TYPE_3D = 3
    uint8 FIX_TYPE_GPS_DEAD_RECKONING_COMBINED = 4  # GPS + Dead reckoning
    uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix 
    
    uint8 flags             # Fix Status Flags
    uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks
    uint8 FLAGS_DIFF_SOLN = 2            # DGPS used
    uint8 FLAGS_WKN_SET = 4              # Valid GPS week number
    uint8 FLAGS_TOW_SET = 8              # Valid GPS time of week (iTOW & fTOW)
    uint8 FLAGS_HEAD_VEH_VALID = 32      # heading of vehicle is valid
    
    uint8[2] reserved0      # Reserved
    
    int32 lon               # Longitude [deg / 1e-7]
    int32 lat               # Latitude [deg / 1e-7]
    int32 height            # Height above Ellipsoid [mm]
    int32 hMSL              # Height above mean sea level [mm]
    
    int32 gSpeed            # Ground Speed (2-D) [mm/s]
    int32 speed             # Speed (3-D) [mm/s]
    
    int32 headMot           # Heading of motion (2-D) [deg / 1e-5]
    int32 headVeh           # Heading of vehicle (2-D) [deg / 1e-5]
    
    uint32 hAcc             # Horizontal Accuracy Estimate [mm]
    uint32 vAcc             # Vertical Accuracy Estimate [mm]
    uint32 sAcc             # Speed Accuracy Estimate [mm/s]
    uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) 
                            # [deg / 1e-5]
    
    uint8[4] reserved1      # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HnrPVT(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.year !== undefined) {
      resolved.year = msg.year;
    }
    else {
      resolved.year = 0
    }

    if (msg.month !== undefined) {
      resolved.month = msg.month;
    }
    else {
      resolved.month = 0
    }

    if (msg.day !== undefined) {
      resolved.day = msg.day;
    }
    else {
      resolved.day = 0
    }

    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = 0
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0
    }

    if (msg.sec !== undefined) {
      resolved.sec = msg.sec;
    }
    else {
      resolved.sec = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = 0
    }

    if (msg.nano !== undefined) {
      resolved.nano = msg.nano;
    }
    else {
      resolved.nano = 0
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

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(2).fill(0)
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.hMSL !== undefined) {
      resolved.hMSL = msg.hMSL;
    }
    else {
      resolved.hMSL = 0
    }

    if (msg.gSpeed !== undefined) {
      resolved.gSpeed = msg.gSpeed;
    }
    else {
      resolved.gSpeed = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.headMot !== undefined) {
      resolved.headMot = msg.headMot;
    }
    else {
      resolved.headMot = 0
    }

    if (msg.headVeh !== undefined) {
      resolved.headVeh = msg.headVeh;
    }
    else {
      resolved.headVeh = 0
    }

    if (msg.hAcc !== undefined) {
      resolved.hAcc = msg.hAcc;
    }
    else {
      resolved.hAcc = 0
    }

    if (msg.vAcc !== undefined) {
      resolved.vAcc = msg.vAcc;
    }
    else {
      resolved.vAcc = 0
    }

    if (msg.sAcc !== undefined) {
      resolved.sAcc = msg.sAcc;
    }
    else {
      resolved.sAcc = 0
    }

    if (msg.headAcc !== undefined) {
      resolved.headAcc = msg.headAcc;
    }
    else {
      resolved.headAcc = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(4).fill(0)
    }

    return resolved;
    }
};

// Constants for message
HnrPVT.Constants = {
  CLASS_ID: 40,
  MESSAGE_ID: 0,
  VALID_DATE: 1,
  VALID_TIME: 2,
  VALID_FULLY_RESOLVED: 4,
  VALID_MAG: 8,
  FIX_TYPE_NO_FIX: 0,
  FIX_TYPE_DEAD_RECKONING_ONLY: 1,
  FIX_TYPE_2D: 2,
  FIX_TYPE_3D: 3,
  FIX_TYPE_GPS_DEAD_RECKONING_COMBINED: 4,
  FIX_TYPE_TIME_ONLY: 5,
  FLAGS_GNSS_FIX_OK: 1,
  FLAGS_DIFF_SOLN: 2,
  FLAGS_WKN_SET: 4,
  FLAGS_TOW_SET: 8,
  FLAGS_HEAD_VEH_VALID: 32,
}

module.exports = HnrPVT;
