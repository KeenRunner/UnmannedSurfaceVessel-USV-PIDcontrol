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

class MgaGAL {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.version = null;
      this.svid = null;
      this.reserved0 = null;
      this.iodNav = null;
      this.deltaN = null;
      this.m0 = null;
      this.e = null;
      this.sqrtA = null;
      this.omega0 = null;
      this.i0 = null;
      this.omega = null;
      this.omegaDot = null;
      this.iDot = null;
      this.cuc = null;
      this.cus = null;
      this.crc = null;
      this.crs = null;
      this.cic = null;
      this.cis = null;
      this.toe = null;
      this.af0 = null;
      this.af1 = null;
      this.af2 = null;
      this.sisaindexE1E5b = null;
      this.toc = null;
      this.bgdE1E5b = null;
      this.reserved1 = null;
      this.healthE1B = null;
      this.dataValidityE1B = null;
      this.healthE5b = null;
      this.dataValidityE5b = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('svid')) {
        this.svid = initObj.svid
      }
      else {
        this.svid = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = 0;
      }
      if (initObj.hasOwnProperty('iodNav')) {
        this.iodNav = initObj.iodNav
      }
      else {
        this.iodNav = 0;
      }
      if (initObj.hasOwnProperty('deltaN')) {
        this.deltaN = initObj.deltaN
      }
      else {
        this.deltaN = 0;
      }
      if (initObj.hasOwnProperty('m0')) {
        this.m0 = initObj.m0
      }
      else {
        this.m0 = 0;
      }
      if (initObj.hasOwnProperty('e')) {
        this.e = initObj.e
      }
      else {
        this.e = 0;
      }
      if (initObj.hasOwnProperty('sqrtA')) {
        this.sqrtA = initObj.sqrtA
      }
      else {
        this.sqrtA = 0;
      }
      if (initObj.hasOwnProperty('omega0')) {
        this.omega0 = initObj.omega0
      }
      else {
        this.omega0 = 0;
      }
      if (initObj.hasOwnProperty('i0')) {
        this.i0 = initObj.i0
      }
      else {
        this.i0 = 0;
      }
      if (initObj.hasOwnProperty('omega')) {
        this.omega = initObj.omega
      }
      else {
        this.omega = 0;
      }
      if (initObj.hasOwnProperty('omegaDot')) {
        this.omegaDot = initObj.omegaDot
      }
      else {
        this.omegaDot = 0;
      }
      if (initObj.hasOwnProperty('iDot')) {
        this.iDot = initObj.iDot
      }
      else {
        this.iDot = 0;
      }
      if (initObj.hasOwnProperty('cuc')) {
        this.cuc = initObj.cuc
      }
      else {
        this.cuc = 0;
      }
      if (initObj.hasOwnProperty('cus')) {
        this.cus = initObj.cus
      }
      else {
        this.cus = 0;
      }
      if (initObj.hasOwnProperty('crc')) {
        this.crc = initObj.crc
      }
      else {
        this.crc = 0;
      }
      if (initObj.hasOwnProperty('crs')) {
        this.crs = initObj.crs
      }
      else {
        this.crs = 0;
      }
      if (initObj.hasOwnProperty('cic')) {
        this.cic = initObj.cic
      }
      else {
        this.cic = 0;
      }
      if (initObj.hasOwnProperty('cis')) {
        this.cis = initObj.cis
      }
      else {
        this.cis = 0;
      }
      if (initObj.hasOwnProperty('toe')) {
        this.toe = initObj.toe
      }
      else {
        this.toe = 0;
      }
      if (initObj.hasOwnProperty('af0')) {
        this.af0 = initObj.af0
      }
      else {
        this.af0 = 0;
      }
      if (initObj.hasOwnProperty('af1')) {
        this.af1 = initObj.af1
      }
      else {
        this.af1 = 0;
      }
      if (initObj.hasOwnProperty('af2')) {
        this.af2 = initObj.af2
      }
      else {
        this.af2 = 0;
      }
      if (initObj.hasOwnProperty('sisaindexE1E5b')) {
        this.sisaindexE1E5b = initObj.sisaindexE1E5b
      }
      else {
        this.sisaindexE1E5b = 0;
      }
      if (initObj.hasOwnProperty('toc')) {
        this.toc = initObj.toc
      }
      else {
        this.toc = 0;
      }
      if (initObj.hasOwnProperty('bgdE1E5b')) {
        this.bgdE1E5b = initObj.bgdE1E5b
      }
      else {
        this.bgdE1E5b = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('healthE1B')) {
        this.healthE1B = initObj.healthE1B
      }
      else {
        this.healthE1B = 0;
      }
      if (initObj.hasOwnProperty('dataValidityE1B')) {
        this.dataValidityE1B = initObj.dataValidityE1B
      }
      else {
        this.dataValidityE1B = 0;
      }
      if (initObj.hasOwnProperty('healthE5b')) {
        this.healthE5b = initObj.healthE5b
      }
      else {
        this.healthE5b = 0;
      }
      if (initObj.hasOwnProperty('dataValidityE5b')) {
        this.dataValidityE5b = initObj.dataValidityE5b
      }
      else {
        this.dataValidityE5b = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MgaGAL
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Serialize message field [svid]
    bufferOffset = _serializer.uint8(obj.svid, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [iodNav]
    bufferOffset = _serializer.uint16(obj.iodNav, buffer, bufferOffset);
    // Serialize message field [deltaN]
    bufferOffset = _serializer.int16(obj.deltaN, buffer, bufferOffset);
    // Serialize message field [m0]
    bufferOffset = _serializer.int32(obj.m0, buffer, bufferOffset);
    // Serialize message field [e]
    bufferOffset = _serializer.uint32(obj.e, buffer, bufferOffset);
    // Serialize message field [sqrtA]
    bufferOffset = _serializer.uint32(obj.sqrtA, buffer, bufferOffset);
    // Serialize message field [omega0]
    bufferOffset = _serializer.int32(obj.omega0, buffer, bufferOffset);
    // Serialize message field [i0]
    bufferOffset = _serializer.int32(obj.i0, buffer, bufferOffset);
    // Serialize message field [omega]
    bufferOffset = _serializer.int32(obj.omega, buffer, bufferOffset);
    // Serialize message field [omegaDot]
    bufferOffset = _serializer.int32(obj.omegaDot, buffer, bufferOffset);
    // Serialize message field [iDot]
    bufferOffset = _serializer.int16(obj.iDot, buffer, bufferOffset);
    // Serialize message field [cuc]
    bufferOffset = _serializer.int16(obj.cuc, buffer, bufferOffset);
    // Serialize message field [cus]
    bufferOffset = _serializer.int16(obj.cus, buffer, bufferOffset);
    // Serialize message field [crc]
    bufferOffset = _serializer.int16(obj.crc, buffer, bufferOffset);
    // Serialize message field [crs]
    bufferOffset = _serializer.int16(obj.crs, buffer, bufferOffset);
    // Serialize message field [cic]
    bufferOffset = _serializer.int16(obj.cic, buffer, bufferOffset);
    // Serialize message field [cis]
    bufferOffset = _serializer.int16(obj.cis, buffer, bufferOffset);
    // Serialize message field [toe]
    bufferOffset = _serializer.uint16(obj.toe, buffer, bufferOffset);
    // Serialize message field [af0]
    bufferOffset = _serializer.int32(obj.af0, buffer, bufferOffset);
    // Serialize message field [af1]
    bufferOffset = _serializer.int32(obj.af1, buffer, bufferOffset);
    // Serialize message field [af2]
    bufferOffset = _serializer.int8(obj.af2, buffer, bufferOffset);
    // Serialize message field [sisaindexE1E5b]
    bufferOffset = _serializer.uint8(obj.sisaindexE1E5b, buffer, bufferOffset);
    // Serialize message field [toc]
    bufferOffset = _serializer.uint16(obj.toc, buffer, bufferOffset);
    // Serialize message field [bgdE1E5b]
    bufferOffset = _serializer.int16(obj.bgdE1E5b, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 2) {
      throw new Error('Unable to serialize array field reserved1 - length must be 2')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 2);
    // Serialize message field [healthE1B]
    bufferOffset = _serializer.uint8(obj.healthE1B, buffer, bufferOffset);
    // Serialize message field [dataValidityE1B]
    bufferOffset = _serializer.uint8(obj.dataValidityE1B, buffer, bufferOffset);
    // Serialize message field [healthE5b]
    bufferOffset = _serializer.uint8(obj.healthE5b, buffer, bufferOffset);
    // Serialize message field [dataValidityE5b]
    bufferOffset = _serializer.uint8(obj.dataValidityE5b, buffer, bufferOffset);
    // Check that the constant length array field [reserved2] has the right length
    if (obj.reserved2.length !== 4) {
      throw new Error('Unable to serialize array field reserved2 - length must be 4')
    }
    // Serialize message field [reserved2]
    bufferOffset = _arraySerializer.uint8(obj.reserved2, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MgaGAL
    let len;
    let data = new MgaGAL(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [iodNav]
    data.iodNav = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [deltaN]
    data.deltaN = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [m0]
    data.m0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [e]
    data.e = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sqrtA]
    data.sqrtA = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [omega0]
    data.omega0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [i0]
    data.i0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omega]
    data.omega = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omegaDot]
    data.omegaDot = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [iDot]
    data.iDot = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cuc]
    data.cuc = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cus]
    data.cus = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [crc]
    data.crc = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [crs]
    data.crs = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cic]
    data.cic = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cis]
    data.cis = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [toe]
    data.toe = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [af0]
    data.af0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [af1]
    data.af1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [af2]
    data.af2 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sisaindexE1E5b]
    data.sisaindexE1E5b = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [toc]
    data.toc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [bgdE1E5b]
    data.bgdE1E5b = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [healthE1B]
    data.healthE1B = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dataValidityE1B]
    data.dataValidityE1B = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [healthE5b]
    data.healthE5b = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dataValidityE5b]
    data.dataValidityE5b = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/MgaGAL';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '916efe401cfebd852654e34c3cd97512';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MGA-GAL (0x13 0x02)
    # Galileo Ephemeris Assistance
    #
    # This message allows the delivery of Galileo ephemeris assistance to a 
    # receiver. See the description of AssistNow Online for details.
    # 
    
    uint8 CLASS_ID = 19
    uint8 MESSAGE_ID = 2
    
    uint8 type              # Message type (0x01 for this type)
    uint8 version           # Message version (0x00 for this version)
    uint8 svid              # Galileo Satellite identifier
    
    uint8 reserved0         # Reserved
    
    uint16 iodNav           # Ephemeris and clock correction issue of Data
    int16 deltaN            # Mean motion difference from computed value 
                            # [semi-cir cles/s * 2^-43]
    int32 m0                # Mean anomaly at reference time [semi-cir cles 2^-31]
    uint32 e                # Eccentricity [2^-33]
    uint32 sqrtA            # Square root of the semi-major axis [m^0.5 * 2^-19]
    int32 omega0            # Longitude of ascending node of orbital plane at weekly
                            # epoch [semi-cir cles 2^-31]
    int32 i0                # inclination angle at reference time 
                            # [semi-cir cles 2^-31]
    int32 omega             # Argument of perigee [semi-cir cles 2^-31]
    int32 omegaDot          # Rate of change of right ascension 
                            # [semi-cir cles/s 2^-43]
    int16 iDot              # Rate of change of inclination angle 
                            # [semi-cir cles/s 2^-43]
    int16 cuc               # Amplitude of the cosine harmonic correction term to 
                            # the argument of latitude [radians * 2^-29]
    int16 cus               # Amplitude of the sine harmonic correction term to 
                            # the argument of latitude [radians * 2^-29]
    int16 crc               # Amplitude of the cosine harmonic correction term 
                            # to the orbit radius [radians * 2^-5]
    int16 crs               # Amplitude of the sine harmonic correction term to the 
                            # orbit radius [radians * 2^-5]
    int16 cic               # Amplitude of the cosine harmonic correction term to 
                            # the angle of inclination [radians * 2^-29]
    int16 cis               # Amplitude of the sine harmonic correction term to the 
                            # angle of inclination [radians * 2^-29]
    uint16 toe              # Ephemeris reference time [60 * s]
    int32 af0               # clock bias correction coefficient [s * 2^-34]
    int32 af1               # SV clock drift correction coefficient [s/s * 2^-46]
    int8 af2               # SV clock drift rate correction coefficient 
                            # [s/s^2 * 2^-59]
    uint8 sisaindexE1E5b   # Signal-in-Space Accuracy index for dual frequency 
                            # E1-E5b
    uint16 toc              # Clock correction data reference Time of Week [60 * s]
    int16 bgdE1E5b          # E1-E5b Broadcast Group Delay
    
    uint8[2] reserved1     # Reserved
    
    uint8 healthE1B        # E1-B Signal Health Status
    uint8 dataValidityE1B  # E1-B Data Validity Status
    uint8 healthE5b        # E5b Signal Health Status
    uint8 dataValidityE5b  # E5b Data Validity Status
    
    uint8[4] reserved2     # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MgaGAL(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.svid !== undefined) {
      resolved.svid = msg.svid;
    }
    else {
      resolved.svid = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = 0
    }

    if (msg.iodNav !== undefined) {
      resolved.iodNav = msg.iodNav;
    }
    else {
      resolved.iodNav = 0
    }

    if (msg.deltaN !== undefined) {
      resolved.deltaN = msg.deltaN;
    }
    else {
      resolved.deltaN = 0
    }

    if (msg.m0 !== undefined) {
      resolved.m0 = msg.m0;
    }
    else {
      resolved.m0 = 0
    }

    if (msg.e !== undefined) {
      resolved.e = msg.e;
    }
    else {
      resolved.e = 0
    }

    if (msg.sqrtA !== undefined) {
      resolved.sqrtA = msg.sqrtA;
    }
    else {
      resolved.sqrtA = 0
    }

    if (msg.omega0 !== undefined) {
      resolved.omega0 = msg.omega0;
    }
    else {
      resolved.omega0 = 0
    }

    if (msg.i0 !== undefined) {
      resolved.i0 = msg.i0;
    }
    else {
      resolved.i0 = 0
    }

    if (msg.omega !== undefined) {
      resolved.omega = msg.omega;
    }
    else {
      resolved.omega = 0
    }

    if (msg.omegaDot !== undefined) {
      resolved.omegaDot = msg.omegaDot;
    }
    else {
      resolved.omegaDot = 0
    }

    if (msg.iDot !== undefined) {
      resolved.iDot = msg.iDot;
    }
    else {
      resolved.iDot = 0
    }

    if (msg.cuc !== undefined) {
      resolved.cuc = msg.cuc;
    }
    else {
      resolved.cuc = 0
    }

    if (msg.cus !== undefined) {
      resolved.cus = msg.cus;
    }
    else {
      resolved.cus = 0
    }

    if (msg.crc !== undefined) {
      resolved.crc = msg.crc;
    }
    else {
      resolved.crc = 0
    }

    if (msg.crs !== undefined) {
      resolved.crs = msg.crs;
    }
    else {
      resolved.crs = 0
    }

    if (msg.cic !== undefined) {
      resolved.cic = msg.cic;
    }
    else {
      resolved.cic = 0
    }

    if (msg.cis !== undefined) {
      resolved.cis = msg.cis;
    }
    else {
      resolved.cis = 0
    }

    if (msg.toe !== undefined) {
      resolved.toe = msg.toe;
    }
    else {
      resolved.toe = 0
    }

    if (msg.af0 !== undefined) {
      resolved.af0 = msg.af0;
    }
    else {
      resolved.af0 = 0
    }

    if (msg.af1 !== undefined) {
      resolved.af1 = msg.af1;
    }
    else {
      resolved.af1 = 0
    }

    if (msg.af2 !== undefined) {
      resolved.af2 = msg.af2;
    }
    else {
      resolved.af2 = 0
    }

    if (msg.sisaindexE1E5b !== undefined) {
      resolved.sisaindexE1E5b = msg.sisaindexE1E5b;
    }
    else {
      resolved.sisaindexE1E5b = 0
    }

    if (msg.toc !== undefined) {
      resolved.toc = msg.toc;
    }
    else {
      resolved.toc = 0
    }

    if (msg.bgdE1E5b !== undefined) {
      resolved.bgdE1E5b = msg.bgdE1E5b;
    }
    else {
      resolved.bgdE1E5b = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(2).fill(0)
    }

    if (msg.healthE1B !== undefined) {
      resolved.healthE1B = msg.healthE1B;
    }
    else {
      resolved.healthE1B = 0
    }

    if (msg.dataValidityE1B !== undefined) {
      resolved.dataValidityE1B = msg.dataValidityE1B;
    }
    else {
      resolved.dataValidityE1B = 0
    }

    if (msg.healthE5b !== undefined) {
      resolved.healthE5b = msg.healthE5b;
    }
    else {
      resolved.healthE5b = 0
    }

    if (msg.dataValidityE5b !== undefined) {
      resolved.dataValidityE5b = msg.dataValidityE5b;
    }
    else {
      resolved.dataValidityE5b = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = new Array(4).fill(0)
    }

    return resolved;
    }
};

// Constants for message
MgaGAL.Constants = {
  CLASS_ID: 19,
  MESSAGE_ID: 2,
}

module.exports = MgaGAL;
