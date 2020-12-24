// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RxmRAWX_Meas = require('./RxmRAWX_Meas.js');

//-----------------------------------------------------------

class RxmRAWX {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcvTOW = null;
      this.week = null;
      this.leapS = null;
      this.numMeas = null;
      this.recStat = null;
      this.version = null;
      this.reserved1 = null;
      this.meas = null;
    }
    else {
      if (initObj.hasOwnProperty('rcvTOW')) {
        this.rcvTOW = initObj.rcvTOW
      }
      else {
        this.rcvTOW = 0.0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('leapS')) {
        this.leapS = initObj.leapS
      }
      else {
        this.leapS = 0;
      }
      if (initObj.hasOwnProperty('numMeas')) {
        this.numMeas = initObj.numMeas
      }
      else {
        this.numMeas = 0;
      }
      if (initObj.hasOwnProperty('recStat')) {
        this.recStat = initObj.recStat
      }
      else {
        this.recStat = 0;
      }
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
        this.reserved1 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('meas')) {
        this.meas = initObj.meas
      }
      else {
        this.meas = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxmRAWX
    // Serialize message field [rcvTOW]
    bufferOffset = _serializer.float64(obj.rcvTOW, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint16(obj.week, buffer, bufferOffset);
    // Serialize message field [leapS]
    bufferOffset = _serializer.int8(obj.leapS, buffer, bufferOffset);
    // Serialize message field [numMeas]
    bufferOffset = _serializer.uint8(obj.numMeas, buffer, bufferOffset);
    // Serialize message field [recStat]
    bufferOffset = _serializer.uint8(obj.recStat, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 2) {
      throw new Error('Unable to serialize array field reserved1 - length must be 2')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 2);
    // Serialize message field [meas]
    // Serialize the length for message field [meas]
    bufferOffset = _serializer.uint32(obj.meas.length, buffer, bufferOffset);
    obj.meas.forEach((val) => {
      bufferOffset = RxmRAWX_Meas.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmRAWX
    let len;
    let data = new RxmRAWX(null);
    // Deserialize message field [rcvTOW]
    data.rcvTOW = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [leapS]
    data.leapS = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [numMeas]
    data.numMeas = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [recStat]
    data.recStat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [meas]
    // Deserialize array length for message field [meas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.meas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.meas[i] = RxmRAWX_Meas.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 32 * object.meas.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmRAWX';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2df4b27b6a2a1565e42f5669dbb11b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RXM-RAWX (0x02 0x15)
    # Multi-GNSS Raw Measurement Data
    #
    # This message contains the information needed to be able to generate a RINEX 3
    # multi-GNSS observation file.
    # This message contains pseudorange, Doppler, carrier phase, phase lock and
    # signal quality information for GNSS satellites once signals have been
    # synchronized. This message supports all active GNSS.
    # 
    
    uint8 CLASS_ID = 2
    uint8 MESSAGE_ID = 21
    
    float64 rcvTOW          # Measurement time of week in receiver local time [s]
                            # approximately aligned to the GPS time system. The
                            # receiver local time of week number and leap second
                            # information can be used to translate the time to other 
                            # time systems. More information about the difference in
                            # time systems can be found in RINEX 3 documentation. 
                            # For a receiver operating in GLONASS only mode, UTC
                            # time can be determined by subtracting the leapS field 
                            # from GPS time regardless of whether the GPS leap
                            # seconds are valid. 
    uint16 week             # GPS week number in receiver local time. [weeks]
    int8 leapS              # GPS leap seconds (GPS-UTC). [s]
                            # This field represents the receiver's best knowledge of
                            # the leap seconds offset. A flag is given in the
                            # recStat bitfield to indicate if the leap seconds 
                            # are known.
    uint8 numMeas           # # of measurements to follow
    uint8 recStat           # Receiver tracking status bitfield
    uint8 REC_STAT_LEAP_SEC = 1   # Leap seconds have been determined
    uint8 REC_STAT_CLK_RESET = 2  # Clock reset applied. Typically the receiver  
                                  # clock is changed in increments of integer
                                  # milliseconds.
    uint8 version           # Message version (0x01 for this version).
    uint8[2] reserved1      # Reserved
    
    RxmRAWX_Meas[] meas
    
    ================================================================================
    MSG: ublox_msgs/RxmRAWX_Meas
    # see message RxmRAWX
    #
    
    float64 prMes             # Pseudorange measurement [m]. GLONASS inter frequency
                              # channel delays are compensated with an internal
                              # calibration table.
    float64 cpMes             # Carrier phase measurement [L1 cycles]. The carrier
                              # phase initial ambiguity is initialized using an
                              # approximate value to make the magnitude of
                              # the phase close to the pseudorange
                              # measurement. Clock resets are applied to both
                              # phase and code measurements in accordance
                              # with the RINEX specification.
    float32 doMes             # Doppler measurement [Hz] (positive sign for
                              # approaching satellites)
    uint8 gnssId              # GNSS identifier (see CfgGNSS for constants)
    
    uint8 svId                # Satellite identifier (see Satellite Numbering)
    
    uint8 reserved0           # Reserved
    
    uint8 freqId              # Only used for GLONASS: This is the frequency
                              # slot + 7 (range from 0 to 13)
    uint16 locktime           # Carrier phase locktime counter [ms] 
                              # (maximum 64500 ms)
    int8 cno                  # Carrier-to-noise density ratio (signal strength) 
                              # [dB-Hz]
    uint8 prStdev             # Estimated pseudorange measurement standard
                              # deviation [m / 0.01*2^n]
    uint8 cpStdev             # Estimated carrier phase measurement standard
                              # deviation (note a raw value of 0x0F indicates the
                              # value is invalid) [cycles / 0.004]
    uint8 doStdev             # Estimated Doppler measurement standard deviation 
                              # [Hz / 0.002*2^n]
    
    uint8 trkStat             # Tracking status bitfield
    uint8 TRK_STAT_PR_VALID = 1       # Pseudorange valid
    uint8 TRK_STAT_CP_VALID = 2       # Carrier phase valid
    uint8 TRK_STAT_HALF_CYC = 4       # Half cycle valid
    uint8 TRK_STAT_SUB_HALF_CYC = 8   # Half cycle subtracted from phase
    
    uint8 reserved1           # Reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmRAWX(null);
    if (msg.rcvTOW !== undefined) {
      resolved.rcvTOW = msg.rcvTOW;
    }
    else {
      resolved.rcvTOW = 0.0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.leapS !== undefined) {
      resolved.leapS = msg.leapS;
    }
    else {
      resolved.leapS = 0
    }

    if (msg.numMeas !== undefined) {
      resolved.numMeas = msg.numMeas;
    }
    else {
      resolved.numMeas = 0
    }

    if (msg.recStat !== undefined) {
      resolved.recStat = msg.recStat;
    }
    else {
      resolved.recStat = 0
    }

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
      resolved.reserved1 = new Array(2).fill(0)
    }

    if (msg.meas !== undefined) {
      resolved.meas = new Array(msg.meas.length);
      for (let i = 0; i < resolved.meas.length; ++i) {
        resolved.meas[i] = RxmRAWX_Meas.Resolve(msg.meas[i]);
      }
    }
    else {
      resolved.meas = []
    }

    return resolved;
    }
};

// Constants for message
RxmRAWX.Constants = {
  CLASS_ID: 2,
  MESSAGE_ID: 21,
  REC_STAT_LEAP_SEC: 1,
  REC_STAT_CLK_RESET: 2,
}

module.exports = RxmRAWX;
