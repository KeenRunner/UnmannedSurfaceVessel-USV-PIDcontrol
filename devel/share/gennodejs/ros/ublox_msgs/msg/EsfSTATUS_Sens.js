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

class EsfSTATUS_Sens {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensStatus1 = null;
      this.sensStatus2 = null;
      this.freq = null;
      this.faults = null;
    }
    else {
      if (initObj.hasOwnProperty('sensStatus1')) {
        this.sensStatus1 = initObj.sensStatus1
      }
      else {
        this.sensStatus1 = 0;
      }
      if (initObj.hasOwnProperty('sensStatus2')) {
        this.sensStatus2 = initObj.sensStatus2
      }
      else {
        this.sensStatus2 = 0;
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0;
      }
      if (initObj.hasOwnProperty('faults')) {
        this.faults = initObj.faults
      }
      else {
        this.faults = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EsfSTATUS_Sens
    // Serialize message field [sensStatus1]
    bufferOffset = _serializer.uint8(obj.sensStatus1, buffer, bufferOffset);
    // Serialize message field [sensStatus2]
    bufferOffset = _serializer.uint8(obj.sensStatus2, buffer, bufferOffset);
    // Serialize message field [freq]
    bufferOffset = _serializer.uint8(obj.freq, buffer, bufferOffset);
    // Serialize message field [faults]
    bufferOffset = _serializer.uint8(obj.faults, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EsfSTATUS_Sens
    let len;
    let data = new EsfSTATUS_Sens(null);
    // Deserialize message field [sensStatus1]
    data.sensStatus1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sensStatus2]
    data.sensStatus2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [freq]
    data.freq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [faults]
    data.faults = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/EsfSTATUS_Sens';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '642a0b5f53044e3a4dd28074dc540ef3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EsfSTATUS_Sens(null);
    if (msg.sensStatus1 !== undefined) {
      resolved.sensStatus1 = msg.sensStatus1;
    }
    else {
      resolved.sensStatus1 = 0
    }

    if (msg.sensStatus2 !== undefined) {
      resolved.sensStatus2 = msg.sensStatus2;
    }
    else {
      resolved.sensStatus2 = 0
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0
    }

    if (msg.faults !== undefined) {
      resolved.faults = msg.faults;
    }
    else {
      resolved.faults = 0
    }

    return resolved;
    }
};

module.exports = EsfSTATUS_Sens;
