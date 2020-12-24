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

class RxmRAWX_Meas {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prMes = null;
      this.cpMes = null;
      this.doMes = null;
      this.gnssId = null;
      this.svId = null;
      this.reserved0 = null;
      this.freqId = null;
      this.locktime = null;
      this.cno = null;
      this.prStdev = null;
      this.cpStdev = null;
      this.doStdev = null;
      this.trkStat = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('prMes')) {
        this.prMes = initObj.prMes
      }
      else {
        this.prMes = 0.0;
      }
      if (initObj.hasOwnProperty('cpMes')) {
        this.cpMes = initObj.cpMes
      }
      else {
        this.cpMes = 0.0;
      }
      if (initObj.hasOwnProperty('doMes')) {
        this.doMes = initObj.doMes
      }
      else {
        this.doMes = 0.0;
      }
      if (initObj.hasOwnProperty('gnssId')) {
        this.gnssId = initObj.gnssId
      }
      else {
        this.gnssId = 0;
      }
      if (initObj.hasOwnProperty('svId')) {
        this.svId = initObj.svId
      }
      else {
        this.svId = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = 0;
      }
      if (initObj.hasOwnProperty('freqId')) {
        this.freqId = initObj.freqId
      }
      else {
        this.freqId = 0;
      }
      if (initObj.hasOwnProperty('locktime')) {
        this.locktime = initObj.locktime
      }
      else {
        this.locktime = 0;
      }
      if (initObj.hasOwnProperty('cno')) {
        this.cno = initObj.cno
      }
      else {
        this.cno = 0;
      }
      if (initObj.hasOwnProperty('prStdev')) {
        this.prStdev = initObj.prStdev
      }
      else {
        this.prStdev = 0;
      }
      if (initObj.hasOwnProperty('cpStdev')) {
        this.cpStdev = initObj.cpStdev
      }
      else {
        this.cpStdev = 0;
      }
      if (initObj.hasOwnProperty('doStdev')) {
        this.doStdev = initObj.doStdev
      }
      else {
        this.doStdev = 0;
      }
      if (initObj.hasOwnProperty('trkStat')) {
        this.trkStat = initObj.trkStat
      }
      else {
        this.trkStat = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxmRAWX_Meas
    // Serialize message field [prMes]
    bufferOffset = _serializer.float64(obj.prMes, buffer, bufferOffset);
    // Serialize message field [cpMes]
    bufferOffset = _serializer.float64(obj.cpMes, buffer, bufferOffset);
    // Serialize message field [doMes]
    bufferOffset = _serializer.float32(obj.doMes, buffer, bufferOffset);
    // Serialize message field [gnssId]
    bufferOffset = _serializer.uint8(obj.gnssId, buffer, bufferOffset);
    // Serialize message field [svId]
    bufferOffset = _serializer.uint8(obj.svId, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [freqId]
    bufferOffset = _serializer.uint8(obj.freqId, buffer, bufferOffset);
    // Serialize message field [locktime]
    bufferOffset = _serializer.uint16(obj.locktime, buffer, bufferOffset);
    // Serialize message field [cno]
    bufferOffset = _serializer.int8(obj.cno, buffer, bufferOffset);
    // Serialize message field [prStdev]
    bufferOffset = _serializer.uint8(obj.prStdev, buffer, bufferOffset);
    // Serialize message field [cpStdev]
    bufferOffset = _serializer.uint8(obj.cpStdev, buffer, bufferOffset);
    // Serialize message field [doStdev]
    bufferOffset = _serializer.uint8(obj.doStdev, buffer, bufferOffset);
    // Serialize message field [trkStat]
    bufferOffset = _serializer.uint8(obj.trkStat, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmRAWX_Meas
    let len;
    let data = new RxmRAWX_Meas(null);
    // Deserialize message field [prMes]
    data.prMes = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cpMes]
    data.cpMes = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [doMes]
    data.doMes = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gnssId]
    data.gnssId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svId]
    data.svId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [freqId]
    data.freqId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [locktime]
    data.locktime = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cno]
    data.cno = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [prStdev]
    data.prStdev = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cpStdev]
    data.cpStdev = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [doStdev]
    data.doStdev = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [trkStat]
    data.trkStat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmRAWX_Meas';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6a580262875bf83a377ba14dcdd659f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RxmRAWX_Meas(null);
    if (msg.prMes !== undefined) {
      resolved.prMes = msg.prMes;
    }
    else {
      resolved.prMes = 0.0
    }

    if (msg.cpMes !== undefined) {
      resolved.cpMes = msg.cpMes;
    }
    else {
      resolved.cpMes = 0.0
    }

    if (msg.doMes !== undefined) {
      resolved.doMes = msg.doMes;
    }
    else {
      resolved.doMes = 0.0
    }

    if (msg.gnssId !== undefined) {
      resolved.gnssId = msg.gnssId;
    }
    else {
      resolved.gnssId = 0
    }

    if (msg.svId !== undefined) {
      resolved.svId = msg.svId;
    }
    else {
      resolved.svId = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = 0
    }

    if (msg.freqId !== undefined) {
      resolved.freqId = msg.freqId;
    }
    else {
      resolved.freqId = 0
    }

    if (msg.locktime !== undefined) {
      resolved.locktime = msg.locktime;
    }
    else {
      resolved.locktime = 0
    }

    if (msg.cno !== undefined) {
      resolved.cno = msg.cno;
    }
    else {
      resolved.cno = 0
    }

    if (msg.prStdev !== undefined) {
      resolved.prStdev = msg.prStdev;
    }
    else {
      resolved.prStdev = 0
    }

    if (msg.cpStdev !== undefined) {
      resolved.cpStdev = msg.cpStdev;
    }
    else {
      resolved.cpStdev = 0
    }

    if (msg.doStdev !== undefined) {
      resolved.doStdev = msg.doStdev;
    }
    else {
      resolved.doStdev = 0
    }

    if (msg.trkStat !== undefined) {
      resolved.trkStat = msg.trkStat;
    }
    else {
      resolved.trkStat = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    return resolved;
    }
};

// Constants for message
RxmRAWX_Meas.Constants = {
  TRK_STAT_PR_VALID: 1,
  TRK_STAT_CP_VALID: 2,
  TRK_STAT_HALF_CYC: 4,
  TRK_STAT_SUB_HALF_CYC: 8,
}

module.exports = RxmRAWX_Meas;
