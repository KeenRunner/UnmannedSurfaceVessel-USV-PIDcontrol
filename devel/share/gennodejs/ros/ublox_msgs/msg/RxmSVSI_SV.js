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

class RxmSVSI_SV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.svid = null;
      this.svFlag = null;
      this.azim = null;
      this.elev = null;
      this.age = null;
    }
    else {
      if (initObj.hasOwnProperty('svid')) {
        this.svid = initObj.svid
      }
      else {
        this.svid = 0;
      }
      if (initObj.hasOwnProperty('svFlag')) {
        this.svFlag = initObj.svFlag
      }
      else {
        this.svFlag = 0;
      }
      if (initObj.hasOwnProperty('azim')) {
        this.azim = initObj.azim
      }
      else {
        this.azim = 0;
      }
      if (initObj.hasOwnProperty('elev')) {
        this.elev = initObj.elev
      }
      else {
        this.elev = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxmSVSI_SV
    // Serialize message field [svid]
    bufferOffset = _serializer.uint8(obj.svid, buffer, bufferOffset);
    // Serialize message field [svFlag]
    bufferOffset = _serializer.uint8(obj.svFlag, buffer, bufferOffset);
    // Serialize message field [azim]
    bufferOffset = _serializer.int16(obj.azim, buffer, bufferOffset);
    // Serialize message field [elev]
    bufferOffset = _serializer.int8(obj.elev, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint8(obj.age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmSVSI_SV
    let len;
    let data = new RxmSVSI_SV(null);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svFlag]
    data.svFlag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [azim]
    data.azim = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [elev]
    data.elev = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmSVSI_SV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '055e3ca33052c1635aff80c3f8ab6197';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # see message RxmSVSI
    #
    
    uint8 svid            # Satellite ID
    
    uint8 svFlag          # Information Flags
    uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15
    uint8 FLAG_HEALTHY = 16       # SV healthy flag
    uint8 FLAG_EPH_VAL = 32       # Ephemeris valid
    uint8 FLAG_ALM_VAL = 64       # Almanac valid
    uint8 FLAG_NOT_AVAIL = 128    # SV not available
    
    int16 azim            # Azimuth
    int8 elev             # Elevation
    
    uint8 age             # Age of Almanac and Ephemeris
    uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4
                                  # i.e. the reference time may be in the future:
                                  # ageOfAlm = (age & 0x0f) - 4
    uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.
                                  # i.e. the reference time may be in the future:
                                  # ageOfEph = ((age & 0xf0) >> 4) - 4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmSVSI_SV(null);
    if (msg.svid !== undefined) {
      resolved.svid = msg.svid;
    }
    else {
      resolved.svid = 0
    }

    if (msg.svFlag !== undefined) {
      resolved.svFlag = msg.svFlag;
    }
    else {
      resolved.svFlag = 0
    }

    if (msg.azim !== undefined) {
      resolved.azim = msg.azim;
    }
    else {
      resolved.azim = 0
    }

    if (msg.elev !== undefined) {
      resolved.elev = msg.elev;
    }
    else {
      resolved.elev = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    return resolved;
    }
};

// Constants for message
RxmSVSI_SV.Constants = {
  FLAG_URA_MASK: 15,
  FLAG_HEALTHY: 16,
  FLAG_EPH_VAL: 32,
  FLAG_ALM_VAL: 64,
  FLAG_NOT_AVAIL: 128,
  AGE_ALM_MASK: 15,
  AGE_EPH_MASK: 240,
}

module.exports = RxmSVSI_SV;
