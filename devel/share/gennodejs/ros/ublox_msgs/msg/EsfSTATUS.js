// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EsfSTATUS_Sens = require('./EsfSTATUS_Sens.js');

//-----------------------------------------------------------

class EsfSTATUS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.version = null;
      this.reserved1 = null;
      this.fusionMode = null;
      this.reserved2 = null;
      this.numSens = null;
      this.sens = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
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
        this.reserved1 = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('fusionMode')) {
        this.fusionMode = initObj.fusionMode
      }
      else {
        this.fusionMode = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('numSens')) {
        this.numSens = initObj.numSens
      }
      else {
        this.numSens = 0;
      }
      if (initObj.hasOwnProperty('sens')) {
        this.sens = initObj.sens
      }
      else {
        this.sens = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EsfSTATUS
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 7) {
      throw new Error('Unable to serialize array field reserved1 - length must be 7')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 7);
    // Serialize message field [fusionMode]
    bufferOffset = _serializer.uint8(obj.fusionMode, buffer, bufferOffset);
    // Check that the constant length array field [reserved2] has the right length
    if (obj.reserved2.length !== 2) {
      throw new Error('Unable to serialize array field reserved2 - length must be 2')
    }
    // Serialize message field [reserved2]
    bufferOffset = _arraySerializer.uint8(obj.reserved2, buffer, bufferOffset, 2);
    // Serialize message field [numSens]
    bufferOffset = _serializer.uint8(obj.numSens, buffer, bufferOffset);
    // Serialize message field [sens]
    // Serialize the length for message field [sens]
    bufferOffset = _serializer.uint32(obj.sens.length, buffer, bufferOffset);
    obj.sens.forEach((val) => {
      bufferOffset = EsfSTATUS_Sens.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EsfSTATUS
    let len;
    let data = new EsfSTATUS(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 7)
    // Deserialize message field [fusionMode]
    data.fusionMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [numSens]
    data.numSens = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sens]
    // Deserialize array length for message field [sens]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sens = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sens[i] = EsfSTATUS_Sens.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.sens.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/EsfSTATUS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '006f2c0e3e6e9239781223dca67e519b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ESF-STATUS (0x10 0x10)
    # External Sensor Fusion (ESF) status information
    #
    # Supported on UDR/ADR products
    #
    
    uint8 CLASS_ID = 16
    uint8 MESSAGE_ID = 16
    
    uint32 iTOW                   # GPS time of week of the navigation epoch [ms]
    uint8 version                 # Message version (2 for this version)
    
    uint8[7] reserved1            # Reserved
    
    uint8 fusionMode              # Fusion mode:
    uint8 FUSION_MODE_INIT = 0        # receiver is initializing some unknown values
                                      # required for doing sensor fusion
    uint8 FUSION_MODE_FUSION = 1      # GNSS and sensor data are 
                                      # used for navigation solution computation
    uint8 FUSION_MODE_SUSPENDED = 2   # sensor fusion is temporarily disabled 
                                      # due to e.g. invalid sensor data or detected 
                                      # ferry
    uint8 FUSION_MODE_DISABLED = 3    # sensor fusion is permanently disabled 
                                      # until receiver reset due e.g. to sensor 
                                      # error
    
    uint8[2] reserved2            # Reserved
    
    uint8 numSens                 # Number of sensors
    
    
    # Start of repeated block (numSens times)
    EsfSTATUS_Sens[] sens
    # End of repeated block
    ================================================================================
    MSG: ublox_msgs/EsfSTATUS_Sens
    # See Esf-STATUS
    #
    
    uint8 sensStatus1   # Sensor status, part 1 (see graphic below)
    uint8 sensStatus2   # Sensor status, part 2 (see graphic below)
    uint8 freq          # Observation frequency [Hz]
    uint8 faults        # Sensor faults (see graphic below)
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EsfSTATUS(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
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
      resolved.reserved1 = new Array(7).fill(0)
    }

    if (msg.fusionMode !== undefined) {
      resolved.fusionMode = msg.fusionMode;
    }
    else {
      resolved.fusionMode = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = new Array(2).fill(0)
    }

    if (msg.numSens !== undefined) {
      resolved.numSens = msg.numSens;
    }
    else {
      resolved.numSens = 0
    }

    if (msg.sens !== undefined) {
      resolved.sens = new Array(msg.sens.length);
      for (let i = 0; i < resolved.sens.length; ++i) {
        resolved.sens[i] = EsfSTATUS_Sens.Resolve(msg.sens[i]);
      }
    }
    else {
      resolved.sens = []
    }

    return resolved;
    }
};

// Constants for message
EsfSTATUS.Constants = {
  CLASS_ID: 16,
  MESSAGE_ID: 16,
  FUSION_MODE_INIT: 0,
  FUSION_MODE_FUSION: 1,
  FUSION_MODE_SUSPENDED: 2,
  FUSION_MODE_DISABLED: 3,
}

module.exports = EsfSTATUS;
