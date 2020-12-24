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

class NavVELNED {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.velN = null;
      this.velE = null;
      this.velD = null;
      this.speed = null;
      this.gSpeed = null;
      this.heading = null;
      this.sAcc = null;
      this.cAcc = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
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
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
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
      if (initObj.hasOwnProperty('cAcc')) {
        this.cAcc = initObj.cAcc
      }
      else {
        this.cAcc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavVELNED
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [velN]
    bufferOffset = _serializer.int32(obj.velN, buffer, bufferOffset);
    // Serialize message field [velE]
    bufferOffset = _serializer.int32(obj.velE, buffer, bufferOffset);
    // Serialize message field [velD]
    bufferOffset = _serializer.int32(obj.velD, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint32(obj.speed, buffer, bufferOffset);
    // Serialize message field [gSpeed]
    bufferOffset = _serializer.uint32(obj.gSpeed, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.int32(obj.heading, buffer, bufferOffset);
    // Serialize message field [sAcc]
    bufferOffset = _serializer.uint32(obj.sAcc, buffer, bufferOffset);
    // Serialize message field [cAcc]
    bufferOffset = _serializer.uint32(obj.cAcc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavVELNED
    let len;
    let data = new NavVELNED(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [velN]
    data.velN = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velE]
    data.velE = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velD]
    data.velD = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gSpeed]
    data.gSpeed = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sAcc]
    data.sAcc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cAcc]
    data.cAcc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavVELNED';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b03402bb86164e74f01e04bff1850150';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-VELNED (0x01 0x12)
    # Velocity Solution in NED
    #
    # See important comments concerning validity of velocity given in section
    # Navigation Output Filters.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 18
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    
    int32 velN              # NED north velocity [cm/s]
    int32 velE              # NED east velocity [cm/s]
    int32 velD              # NED down velocity [cm/s]
    uint32 speed            # Speed (3-D) [cm/s]
    uint32 gSpeed           # Ground Speed (2-D) [cm/s]
    int32 heading           # Heading of motion 2-D [deg / 1e-5]
    uint32 sAcc             # Speed Accuracy Estimate [cm/s]
    uint32 cAcc             # Course / Heading Accuracy Estimate [deg / 1e-5]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavVELNED(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
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

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
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

    if (msg.cAcc !== undefined) {
      resolved.cAcc = msg.cAcc;
    }
    else {
      resolved.cAcc = 0
    }

    return resolved;
    }
};

// Constants for message
NavVELNED.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 18,
}

module.exports = NavVELNED;
