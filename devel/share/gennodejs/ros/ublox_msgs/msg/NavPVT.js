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

class NavPVT {
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
      this.tAcc = null;
      this.nano = null;
      this.fixType = null;
      this.flags = null;
      this.flags2 = null;
      this.numSV = null;
      this.lon = null;
      this.lat = null;
      this.height = null;
      this.hMSL = null;
      this.hAcc = null;
      this.vAcc = null;
      this.velN = null;
      this.velE = null;
      this.velD = null;
      this.gSpeed = null;
      this.heading = null;
      this.sAcc = null;
      this.headAcc = null;
      this.pDOP = null;
      this.reserved1 = null;
      this.headVeh = null;
      this.magDec = null;
      this.magAcc = null;
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
      if (initObj.hasOwnProperty('tAcc')) {
        this.tAcc = initObj.tAcc
      }
      else {
        this.tAcc = 0;
      }
      if (initObj.hasOwnProperty('nano')) {
        this.nano = initObj.nano
      }
      else {
        this.nano = 0;
      }
      if (initObj.hasOwnProperty('fixType')) {
        this.fixType = initObj.fixType
      }
      else {
        this.fixType = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('flags2')) {
        this.flags2 = initObj.flags2
      }
      else {
        this.flags2 = 0;
      }
      if (initObj.hasOwnProperty('numSV')) {
        this.numSV = initObj.numSV
      }
      else {
        this.numSV = 0;
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
      if (initObj.hasOwnProperty('velN')) {
        this.velN = initObj.velN
      }
      else {
        this.velN = 0;
      }
      if (initObj.hasOwnProperty('velE')) {
        this.velE = initObj.velE
      }
      else {
        this.velE = 0;
      }
      if (initObj.hasOwnProperty('velD')) {
        this.velD = initObj.velD
      }
      else {
        this.velD = 0;
      }
      if (initObj.hasOwnProperty('gSpeed')) {
        this.gSpeed = initObj.gSpeed
      }
      else {
        this.gSpeed = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
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
        this.reserved1 = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('headVeh')) {
        this.headVeh = initObj.headVeh
      }
      else {
        this.headVeh = 0;
      }
      if (initObj.hasOwnProperty('magDec')) {
        this.magDec = initObj.magDec
      }
      else {
        this.magDec = 0;
      }
      if (initObj.hasOwnProperty('magAcc')) {
        this.magAcc = initObj.magAcc
      }
      else {
        this.magAcc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavPVT
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
    // Serialize message field [tAcc]
    bufferOffset = _serializer.uint32(obj.tAcc, buffer, bufferOffset);
    // Serialize message field [nano]
    bufferOffset = _serializer.int32(obj.nano, buffer, bufferOffset);
    // Serialize message field [fixType]
    bufferOffset = _serializer.uint8(obj.fixType, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [flags2]
    bufferOffset = _serializer.uint8(obj.flags2, buffer, bufferOffset);
    // Serialize message field [numSV]
    bufferOffset = _serializer.uint8(obj.numSV, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.int32(obj.lon, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.int32(obj.lat, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [hMSL]
    bufferOffset = _serializer.int32(obj.hMSL, buffer, bufferOffset);
    // Serialize message field [hAcc]
    bufferOffset = _serializer.uint32(obj.hAcc, buffer, bufferOffset);
    // Serialize message field [vAcc]
    bufferOffset = _serializer.uint32(obj.vAcc, buffer, bufferOffset);
    // Serialize message field [velN]
    bufferOffset = _serializer.int32(obj.velN, buffer, bufferOffset);
    // Serialize message field [velE]
    bufferOffset = _serializer.int32(obj.velE, buffer, bufferOffset);
    // Serialize message field [velD]
    bufferOffset = _serializer.int32(obj.velD, buffer, bufferOffset);
    // Serialize message field [gSpeed]
    bufferOffset = _serializer.int32(obj.gSpeed, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.int32(obj.heading, buffer, bufferOffset);
    // Serialize message field [sAcc]
    bufferOffset = _serializer.uint32(obj.sAcc, buffer, bufferOffset);
    // Serialize message field [headAcc]
    bufferOffset = _serializer.uint32(obj.headAcc, buffer, bufferOffset);
    // Serialize message field [pDOP]
    bufferOffset = _serializer.uint16(obj.pDOP, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 6) {
      throw new Error('Unable to serialize array field reserved1 - length must be 6')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 6);
    // Serialize message field [headVeh]
    bufferOffset = _serializer.int32(obj.headVeh, buffer, bufferOffset);
    // Serialize message field [magDec]
    bufferOffset = _serializer.int16(obj.magDec, buffer, bufferOffset);
    // Serialize message field [magAcc]
    bufferOffset = _serializer.uint16(obj.magAcc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavPVT
    let len;
    let data = new NavPVT(null);
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
    // Deserialize message field [tAcc]
    data.tAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nano]
    data.nano = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fixType]
    data.fixType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags2]
    data.flags2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numSV]
    data.numSV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hMSL]
    data.hMSL = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hAcc]
    data.hAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [vAcc]
    data.vAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [velN]
    data.velN = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velE]
    data.velE = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velD]
    data.velD = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gSpeed]
    data.gSpeed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sAcc]
    data.sAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [headAcc]
    data.headAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pDOP]
    data.pDOP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 6)
    // Deserialize message field [headVeh]
    data.headVeh = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [magDec]
    data.magDec = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [magAcc]
    data.magAcc = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavPVT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10f57b0db1fa3679c06567492fa4e5f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-PVT (0x01 0x07)
    # Navigation Position Velocity Time Solution
    #
    # Note that during a leap second there may be more (or less) than 60 seconds in
    # a minute; see the description of leap seconds for details.
    #
    # This message combines Position, velocity and time solution in LLH, 
    # including accuracy figures
    #
    # WARNING: For firmware version 7, this message is a different length.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 7
    
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
    
    uint32 tAcc             # time accuracy estimate [ns] (UTC)
    int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)
    
    uint8 fixType           # GNSS fix Type, range 0..5
    uint8 FIX_TYPE_NO_FIX = 0
    uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1
    uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, 
                                                    # constant altitude assumed
    uint8 FIX_TYPE_3D = 3
    uint8 FIX_TYPE_GNSS_DEAD_RECKONING_COMBINED = 4 # GNSS + Dead reckoning
    uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix (High precision 
                                                    # devices)
    
    uint8 flags             # Fix Status Flags
    uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks
    uint8 FLAGS_DIFF_SOLN = 2            # DGPS used
    uint8 FLAGS_PSM_MASK = 28            # Power Save Mode
    uint8 PSM_OFF = 0                       # PSM is off
    uint8 PSM_ENABLED = 4                   # Enabled (state before acquisition)
    uint8 PSM_ACQUIRED = 8                  # Acquisition
    uint8 PSM_TRACKING = 12                 # Tracking
    uint8 PSM_POWER_OPTIMIZED_TRACKING = 16 # Power Optimized Tracking
    uint8 PSM_INACTIVE = 20                 # Inactive
    uint8 FLAGS_HEAD_VEH_VALID = 32         # heading of vehicle is valid
    uint8 FLAGS_CARRIER_PHASE_MASK = 192 # Carrier Phase Range Solution Status     
    uint8 CARRIER_PHASE_NO_SOLUTION = 0     # no carrier phase range solution
    uint8 CARRIER_PHASE_FLOAT = 64          # carrier phase float solution (no fixed 
                                            # integer measurements have been used to 
                                            # calculate the solution)
    uint8 CARRIER_PHASE_FIXED = 128         # fixed solution (>=1 fixed integer 
                                            # carrier phase range measurements have 
                                            # been used to calculate  the solution)
    
    uint8 flags2            # Additional Flags
    uint8 FLAGS2_CONFIRMED_AVAILABLE = 32   # information about UTC Date and Time of 
                                            # Day validity confirmation is available
    uint8 FLAGS2_CONFIRMED_DATE = 64        # UTC Date validity could be confirmed
    uint8 FLAGS2_CONFIRMED_TIME = 128       # UTC Time of Day could be confirmed
    
    uint8 numSV             # Number of SVs used in Nav Solution
    int32 lon               # Longitude [deg / 1e-7]
    int32 lat               # Latitude [deg / 1e-7]
    int32 height            # Height above Ellipsoid [mm]
    int32 hMSL              # Height above mean sea level [mm]
    uint32 hAcc             # Horizontal Accuracy Estimate [mm]
    uint32 vAcc             # Vertical Accuracy Estimate [mm]
    
    int32 velN              # NED north velocity [mm/s]
    int32 velE              # NED east velocity [mm/s]
    int32 velD              # NED down velocity [mm/s]
    int32 gSpeed            # Ground Speed (2-D) [mm/s]
    int32 heading           # Heading of motion 2-D [deg / 1e-5]
    uint32 sAcc             # Speed Accuracy Estimate [mm/s]
    uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) 
                            # [deg / 1e-5]
    
    uint16 pDOP             # Position DOP [1 / 0.01]
    uint8[6] reserved1      # Reserved
    
    int32 headVeh           # Heading of vehicle (2-D) [deg / 1e-5]
    int16 magDec            # Magnetic declination [deg / 1e-2]
    uint16 magAcc           # Magnetic declination accuracy [deg / 1e-2]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavPVT(null);
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

    if (msg.tAcc !== undefined) {
      resolved.tAcc = msg.tAcc;
    }
    else {
      resolved.tAcc = 0
    }

    if (msg.nano !== undefined) {
      resolved.nano = msg.nano;
    }
    else {
      resolved.nano = 0
    }

    if (msg.fixType !== undefined) {
      resolved.fixType = msg.fixType;
    }
    else {
      resolved.fixType = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.flags2 !== undefined) {
      resolved.flags2 = msg.flags2;
    }
    else {
      resolved.flags2 = 0
    }

    if (msg.numSV !== undefined) {
      resolved.numSV = msg.numSV;
    }
    else {
      resolved.numSV = 0
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

    if (msg.velN !== undefined) {
      resolved.velN = msg.velN;
    }
    else {
      resolved.velN = 0
    }

    if (msg.velE !== undefined) {
      resolved.velE = msg.velE;
    }
    else {
      resolved.velE = 0
    }

    if (msg.velD !== undefined) {
      resolved.velD = msg.velD;
    }
    else {
      resolved.velD = 0
    }

    if (msg.gSpeed !== undefined) {
      resolved.gSpeed = msg.gSpeed;
    }
    else {
      resolved.gSpeed = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
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
      resolved.reserved1 = new Array(6).fill(0)
    }

    if (msg.headVeh !== undefined) {
      resolved.headVeh = msg.headVeh;
    }
    else {
      resolved.headVeh = 0
    }

    if (msg.magDec !== undefined) {
      resolved.magDec = msg.magDec;
    }
    else {
      resolved.magDec = 0
    }

    if (msg.magAcc !== undefined) {
      resolved.magAcc = msg.magAcc;
    }
    else {
      resolved.magAcc = 0
    }

    return resolved;
    }
};

// Constants for message
NavPVT.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 7,
  VALID_DATE: 1,
  VALID_TIME: 2,
  VALID_FULLY_RESOLVED: 4,
  VALID_MAG: 8,
  FIX_TYPE_NO_FIX: 0,
  FIX_TYPE_DEAD_RECKONING_ONLY: 1,
  FIX_TYPE_2D: 2,
  FIX_TYPE_3D: 3,
  FIX_TYPE_GNSS_DEAD_RECKONING_COMBINED: 4,
  FIX_TYPE_TIME_ONLY: 5,
  FLAGS_GNSS_FIX_OK: 1,
  FLAGS_DIFF_SOLN: 2,
  FLAGS_PSM_MASK: 28,
  PSM_OFF: 0,
  PSM_ENABLED: 4,
  PSM_ACQUIRED: 8,
  PSM_TRACKING: 12,
  PSM_POWER_OPTIMIZED_TRACKING: 16,
  PSM_INACTIVE: 20,
  FLAGS_HEAD_VEH_VALID: 32,
  FLAGS_CARRIER_PHASE_MASK: 192,
  CARRIER_PHASE_NO_SOLUTION: 0,
  CARRIER_PHASE_FLOAT: 64,
  CARRIER_PHASE_FIXED: 128,
  FLAGS2_CONFIRMED_AVAILABLE: 32,
  FLAGS2_CONFIRMED_DATE: 64,
  FLAGS2_CONFIRMED_TIME: 128,
}

module.exports = NavPVT;
