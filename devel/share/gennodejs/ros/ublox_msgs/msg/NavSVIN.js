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

class NavSVIN {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.reserved0 = null;
      this.iTOW = null;
      this.dur = null;
      this.meanX = null;
      this.meanY = null;
      this.meanZ = null;
      this.meanXHP = null;
      this.meanYHP = null;
      this.meanZHP = null;
      this.reserved1 = null;
      this.meanAcc = null;
      this.obs = null;
      this.valid = null;
      this.active = null;
      this.reserved3 = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('dur')) {
        this.dur = initObj.dur
      }
      else {
        this.dur = 0;
      }
      if (initObj.hasOwnProperty('meanX')) {
        this.meanX = initObj.meanX
      }
      else {
        this.meanX = 0;
      }
      if (initObj.hasOwnProperty('meanY')) {
        this.meanY = initObj.meanY
      }
      else {
        this.meanY = 0;
      }
      if (initObj.hasOwnProperty('meanZ')) {
        this.meanZ = initObj.meanZ
      }
      else {
        this.meanZ = 0;
      }
      if (initObj.hasOwnProperty('meanXHP')) {
        this.meanXHP = initObj.meanXHP
      }
      else {
        this.meanXHP = 0;
      }
      if (initObj.hasOwnProperty('meanYHP')) {
        this.meanYHP = initObj.meanYHP
      }
      else {
        this.meanYHP = 0;
      }
      if (initObj.hasOwnProperty('meanZHP')) {
        this.meanZHP = initObj.meanZHP
      }
      else {
        this.meanZHP = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('meanAcc')) {
        this.meanAcc = initObj.meanAcc
      }
      else {
        this.meanAcc = 0;
      }
      if (initObj.hasOwnProperty('obs')) {
        this.obs = initObj.obs
      }
      else {
        this.obs = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = 0;
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = 0;
      }
      if (initObj.hasOwnProperty('reserved3')) {
        this.reserved3 = initObj.reserved3
      }
      else {
        this.reserved3 = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSVIN
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 3) {
      throw new Error('Unable to serialize array field reserved0 - length must be 3')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 3);
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [dur]
    bufferOffset = _serializer.uint32(obj.dur, buffer, bufferOffset);
    // Serialize message field [meanX]
    bufferOffset = _serializer.int32(obj.meanX, buffer, bufferOffset);
    // Serialize message field [meanY]
    bufferOffset = _serializer.int32(obj.meanY, buffer, bufferOffset);
    // Serialize message field [meanZ]
    bufferOffset = _serializer.int32(obj.meanZ, buffer, bufferOffset);
    // Serialize message field [meanXHP]
    bufferOffset = _serializer.int8(obj.meanXHP, buffer, bufferOffset);
    // Serialize message field [meanYHP]
    bufferOffset = _serializer.int8(obj.meanYHP, buffer, bufferOffset);
    // Serialize message field [meanZHP]
    bufferOffset = _serializer.int8(obj.meanZHP, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [meanAcc]
    bufferOffset = _serializer.uint32(obj.meanAcc, buffer, bufferOffset);
    // Serialize message field [obs]
    bufferOffset = _serializer.uint32(obj.obs, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.uint8(obj.valid, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.uint8(obj.active, buffer, bufferOffset);
    // Check that the constant length array field [reserved3] has the right length
    if (obj.reserved3.length !== 2) {
      throw new Error('Unable to serialize array field reserved3 - length must be 2')
    }
    // Serialize message field [reserved3]
    bufferOffset = _arraySerializer.uint8(obj.reserved3, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSVIN
    let len;
    let data = new NavSVIN(null);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dur]
    data.dur = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [meanX]
    data.meanX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [meanY]
    data.meanY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [meanZ]
    data.meanZ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [meanXHP]
    data.meanXHP = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [meanYHP]
    data.meanYHP = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [meanZHP]
    data.meanZHP = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meanAcc]
    data.meanAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [obs]
    data.obs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved3]
    data.reserved3 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSVIN';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c78016f30ce026b9e670e40dd151a8ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-SVIN (0x01 0x3B)
    # Survey-in data
    # 
    # This message contains information about survey-in parameters.
    # Supported on:
    #  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision
    #    GNSS products)
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 59
    
    uint8 version           # Message version (0x00 for this version)
    uint8[3] reserved0      # Reserved
    
    uint32 iTOW             # GPS time of week of the navigation epoch [ms]
    
    uint32 dur              # Passed survey-in observation time [s]
    
    int32 meanX             # Current survey-in mean position ECEF X coordinate [cm]
    int32 meanY             # Current survey-in mean position ECEF Y coordinate [cm]
    int32 meanZ             # Current survey-in mean position ECEF Z coordinate [cm]
    
    int8 meanXHP            # Current high-precision survey-in mean position
                            # ECEF X coordinate. 0.1_mm 
                            # Must be in the range -99..+99.
                            # The current survey-in mean position ECEF X
                            # coordinate, in units of cm, is given by
                            # meanX + (0.01 * meanXHP)
    int8 meanYHP            # Current high-precision survey-in mean position
                            # ECEF Y coordinate. [0.1 mm] 
                            # Must be in the range -99..+99.
                            # The current survey-in mean position ECEF Y
                            # coordinate, in units of cm, is given by
                            # meanY + (0.01 * meanYHP)
    int8 meanZHP            # Current high-precision survey-in mean position
                            # ECEF Z coordinate. [0.1 mm] 
                            # Must be in the range -99..+99.
                            # The current survey-in mean position ECEF Z
                            # coordinate, in units of cm, is given by
                            # meanZ + (0.01 * meanZHP)
    
    uint8 reserved1         # Reserved
    
    uint32 meanAcc          # Current survey-in mean position accuracy [0.1 mm]
    uint32 obs              # Number of position observations used during survey-in
    uint8 valid             # Survey-in position validity flag, 1 = valid
                            # otherwise 0
    uint8 active            # Survey-in in progress flag, 1 = in-progress
                            # otherwise 0
    
    uint8[2] reserved3      # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavSVIN(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(3).fill(0)
    }

    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.dur !== undefined) {
      resolved.dur = msg.dur;
    }
    else {
      resolved.dur = 0
    }

    if (msg.meanX !== undefined) {
      resolved.meanX = msg.meanX;
    }
    else {
      resolved.meanX = 0
    }

    if (msg.meanY !== undefined) {
      resolved.meanY = msg.meanY;
    }
    else {
      resolved.meanY = 0
    }

    if (msg.meanZ !== undefined) {
      resolved.meanZ = msg.meanZ;
    }
    else {
      resolved.meanZ = 0
    }

    if (msg.meanXHP !== undefined) {
      resolved.meanXHP = msg.meanXHP;
    }
    else {
      resolved.meanXHP = 0
    }

    if (msg.meanYHP !== undefined) {
      resolved.meanYHP = msg.meanYHP;
    }
    else {
      resolved.meanYHP = 0
    }

    if (msg.meanZHP !== undefined) {
      resolved.meanZHP = msg.meanZHP;
    }
    else {
      resolved.meanZHP = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    if (msg.meanAcc !== undefined) {
      resolved.meanAcc = msg.meanAcc;
    }
    else {
      resolved.meanAcc = 0
    }

    if (msg.obs !== undefined) {
      resolved.obs = msg.obs;
    }
    else {
      resolved.obs = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = 0
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = 0
    }

    if (msg.reserved3 !== undefined) {
      resolved.reserved3 = msg.reserved3;
    }
    else {
      resolved.reserved3 = new Array(2).fill(0)
    }

    return resolved;
    }
};

// Constants for message
NavSVIN.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 59,
}

module.exports = NavSVIN;
