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

class RxmRAW_SV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cpMes = null;
      this.prMes = null;
      this.doMes = null;
      this.sv = null;
      this.mesQI = null;
      this.cno = null;
      this.lli = null;
    }
    else {
      if (initObj.hasOwnProperty('cpMes')) {
        this.cpMes = initObj.cpMes
      }
      else {
        this.cpMes = 0.0;
      }
      if (initObj.hasOwnProperty('prMes')) {
        this.prMes = initObj.prMes
      }
      else {
        this.prMes = 0.0;
      }
      if (initObj.hasOwnProperty('doMes')) {
        this.doMes = initObj.doMes
      }
      else {
        this.doMes = 0.0;
      }
      if (initObj.hasOwnProperty('sv')) {
        this.sv = initObj.sv
      }
      else {
        this.sv = 0;
      }
      if (initObj.hasOwnProperty('mesQI')) {
        this.mesQI = initObj.mesQI
      }
      else {
        this.mesQI = 0;
      }
      if (initObj.hasOwnProperty('cno')) {
        this.cno = initObj.cno
      }
      else {
        this.cno = 0;
      }
      if (initObj.hasOwnProperty('lli')) {
        this.lli = initObj.lli
      }
      else {
        this.lli = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxmRAW_SV
    // Serialize message field [cpMes]
    bufferOffset = _serializer.float64(obj.cpMes, buffer, bufferOffset);
    // Serialize message field [prMes]
    bufferOffset = _serializer.float64(obj.prMes, buffer, bufferOffset);
    // Serialize message field [doMes]
    bufferOffset = _serializer.float32(obj.doMes, buffer, bufferOffset);
    // Serialize message field [sv]
    bufferOffset = _serializer.uint8(obj.sv, buffer, bufferOffset);
    // Serialize message field [mesQI]
    bufferOffset = _serializer.int8(obj.mesQI, buffer, bufferOffset);
    // Serialize message field [cno]
    bufferOffset = _serializer.int8(obj.cno, buffer, bufferOffset);
    // Serialize message field [lli]
    bufferOffset = _serializer.uint8(obj.lli, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmRAW_SV
    let len;
    let data = new RxmRAW_SV(null);
    // Deserialize message field [cpMes]
    data.cpMes = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prMes]
    data.prMes = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [doMes]
    data.doMes = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sv]
    data.sv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mesQI]
    data.mesQI = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cno]
    data.cno = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lli]
    data.lli = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmRAW_SV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b32efd29577416a2c280e629abcb69a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # see message RxmRAW
    #
    
    float64 cpMes             # Carrier phase measurement [L1 cycles]
    float64 prMes             # Pseudorange measurement [m]
    float32 doMes             # Doppler measurement [Hz]
    
    uint8 sv                  # Space Vehicle Number
    int8 mesQI                # Nav Measurements Quality Indicator
                              #  >=4 : PR+DO OK
                              #  >=5 : PR+DO+CP OK
                              #  <6 : likely loss of carrier lock in previous 
                              #       interval
    int8 cno                  # Signal strength C/No. [dbHz]
    uint8 lli                 # Loss of lock indicator (RINEX definition)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmRAW_SV(null);
    if (msg.cpMes !== undefined) {
      resolved.cpMes = msg.cpMes;
    }
    else {
      resolved.cpMes = 0.0
    }

    if (msg.prMes !== undefined) {
      resolved.prMes = msg.prMes;
    }
    else {
      resolved.prMes = 0.0
    }

    if (msg.doMes !== undefined) {
      resolved.doMes = msg.doMes;
    }
    else {
      resolved.doMes = 0.0
    }

    if (msg.sv !== undefined) {
      resolved.sv = msg.sv;
    }
    else {
      resolved.sv = 0
    }

    if (msg.mesQI !== undefined) {
      resolved.mesQI = msg.mesQI;
    }
    else {
      resolved.mesQI = 0
    }

    if (msg.cno !== undefined) {
      resolved.cno = msg.cno;
    }
    else {
      resolved.cno = 0
    }

    if (msg.lli !== undefined) {
      resolved.lli = msg.lli;
    }
    else {
      resolved.lli = 0
    }

    return resolved;
    }
};

module.exports = RxmRAW_SV;
