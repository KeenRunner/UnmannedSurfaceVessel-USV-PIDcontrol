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

class EsfINS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bitfield0 = null;
      this.reserved1 = null;
      this.iTOW = null;
      this.xAngRate = null;
      this.yAngRate = null;
      this.zAngRate = null;
      this.xAccel = null;
      this.yAccel = null;
      this.zAccel = null;
    }
    else {
      if (initObj.hasOwnProperty('bitfield0')) {
        this.bitfield0 = initObj.bitfield0
      }
      else {
        this.bitfield0 = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('xAngRate')) {
        this.xAngRate = initObj.xAngRate
      }
      else {
        this.xAngRate = 0;
      }
      if (initObj.hasOwnProperty('yAngRate')) {
        this.yAngRate = initObj.yAngRate
      }
      else {
        this.yAngRate = 0;
      }
      if (initObj.hasOwnProperty('zAngRate')) {
        this.zAngRate = initObj.zAngRate
      }
      else {
        this.zAngRate = 0;
      }
      if (initObj.hasOwnProperty('xAccel')) {
        this.xAccel = initObj.xAccel
      }
      else {
        this.xAccel = 0;
      }
      if (initObj.hasOwnProperty('yAccel')) {
        this.yAccel = initObj.yAccel
      }
      else {
        this.yAccel = 0;
      }
      if (initObj.hasOwnProperty('zAccel')) {
        this.zAccel = initObj.zAccel
      }
      else {
        this.zAccel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EsfINS
    // Serialize message field [bitfield0]
    bufferOffset = _serializer.uint32(obj.bitfield0, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 4) {
      throw new Error('Unable to serialize array field reserved1 - length must be 4')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 4);
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [xAngRate]
    bufferOffset = _serializer.int32(obj.xAngRate, buffer, bufferOffset);
    // Serialize message field [yAngRate]
    bufferOffset = _serializer.int32(obj.yAngRate, buffer, bufferOffset);
    // Serialize message field [zAngRate]
    bufferOffset = _serializer.int32(obj.zAngRate, buffer, bufferOffset);
    // Serialize message field [xAccel]
    bufferOffset = _serializer.int32(obj.xAccel, buffer, bufferOffset);
    // Serialize message field [yAccel]
    bufferOffset = _serializer.int32(obj.yAccel, buffer, bufferOffset);
    // Serialize message field [zAccel]
    bufferOffset = _serializer.int32(obj.zAccel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EsfINS
    let len;
    let data = new EsfINS(null);
    // Deserialize message field [bitfield0]
    data.bitfield0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [xAngRate]
    data.xAngRate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yAngRate]
    data.yAngRate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [zAngRate]
    data.zAngRate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [xAccel]
    data.xAccel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yAccel]
    data.yAccel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [zAccel]
    data.zAccel = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/EsfINS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '975d05e9503737524d7e47a42cb9fff1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ESF-INS (0x10 0x15)
    # Vehicle dynamics information
    # 
    # This message outputs information about vehicle dynamics computed by the 
    # Inertial Navigation System (INS) during ESF-based navigation.
    # For ADR products, the output dynamics information (angular rates and 
    # accelerations) is expressed with respect to the vehicle-frame.
    # For UDR products, the output dynamics information (angular rates and 
    # accelerations) is expressed with respect to the body-frame.
    #
    
    uint8 CLASS_ID = 16
    uint8 MESSAGE_ID = 21
    
    uint32 bitfield0      # Bitfield (see graphic below)
    uint32 BITFIELD0_VERSION = 255            # Message version (1 for this version).
    uint32 BITFIELD0_X_ANG_RATE_VALID = 256   # Compensated x-axis angular rate data 
                                              # validity flag
    uint32 BITFIELD0_Y_ANG_RATE_VALID = 512   # Compensated y-axis angular rate data 
                                              # validity flag
    uint32 BITFIELD0_Z_ANG_RATE_VALID = 1024  # Compensated z-axis angular rate data 
                                              # validity flag
    uint32 BITFIELD0_X_ACCEL_VALID = 2048     # Compensated x-axis acceleration data 
                                              # validity flag
    uint32 BITFIELD0_Y_ACCEL_VALID = 4096     # Compensated y-axis acceleration data 
                                              # validity flag
    uint32 BITFIELD0_Z_ACCEL_VALID = 8192     # Compensated z-axis acceleration data 
                                              # validity flag
    
    uint8[4] reserved1    # Reserved
    
    uint32 iTOW           # GPS time of week of the navigation epoch [ms]
    int32 xAngRate        # Compensated x-axis angular rate [deg/s / 1e-3]
    int32 yAngRate        # Compensated y-axis angular rate [deg/s / 1e-3]
    int32 zAngRate        # Compensated z-axis angular rate [deg/s / 1e-3]
    int32 xAccel          # Compensated x-axis acceleration (gravity-free) [mg]
    int32 yAccel          # Compensated y-axis acceleration (gravity-free) [mg]
    int32 zAccel          # Compensated z-axis acceleration (gravity-free) [mg]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EsfINS(null);
    if (msg.bitfield0 !== undefined) {
      resolved.bitfield0 = msg.bitfield0;
    }
    else {
      resolved.bitfield0 = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(4).fill(0)
    }

    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.xAngRate !== undefined) {
      resolved.xAngRate = msg.xAngRate;
    }
    else {
      resolved.xAngRate = 0
    }

    if (msg.yAngRate !== undefined) {
      resolved.yAngRate = msg.yAngRate;
    }
    else {
      resolved.yAngRate = 0
    }

    if (msg.zAngRate !== undefined) {
      resolved.zAngRate = msg.zAngRate;
    }
    else {
      resolved.zAngRate = 0
    }

    if (msg.xAccel !== undefined) {
      resolved.xAccel = msg.xAccel;
    }
    else {
      resolved.xAccel = 0
    }

    if (msg.yAccel !== undefined) {
      resolved.yAccel = msg.yAccel;
    }
    else {
      resolved.yAccel = 0
    }

    if (msg.zAccel !== undefined) {
      resolved.zAccel = msg.zAccel;
    }
    else {
      resolved.zAccel = 0
    }

    return resolved;
    }
};

// Constants for message
EsfINS.Constants = {
  CLASS_ID: 16,
  MESSAGE_ID: 21,
  BITFIELD0_VERSION: 255,
  BITFIELD0_X_ANG_RATE_VALID: 256,
  BITFIELD0_Y_ANG_RATE_VALID: 512,
  BITFIELD0_Z_ANG_RATE_VALID: 1024,
  BITFIELD0_X_ACCEL_VALID: 2048,
  BITFIELD0_Y_ACCEL_VALID: 4096,
  BITFIELD0_Z_ACCEL_VALID: 8192,
}

module.exports = EsfINS;
