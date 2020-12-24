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

class AidHUI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health = null;
      this.utcA0 = null;
      this.utcA1 = null;
      this.utcTOW = null;
      this.utcWNT = null;
      this.utcLS = null;
      this.utcWNF = null;
      this.utcDN = null;
      this.utcLSF = null;
      this.utcSpare = null;
      this.klobA0 = null;
      this.klobA1 = null;
      this.klobA2 = null;
      this.klobA3 = null;
      this.klobB0 = null;
      this.klobB1 = null;
      this.klobB2 = null;
      this.klobB3 = null;
      this.flags = null;
    }
    else {
      if (initObj.hasOwnProperty('health')) {
        this.health = initObj.health
      }
      else {
        this.health = 0;
      }
      if (initObj.hasOwnProperty('utcA0')) {
        this.utcA0 = initObj.utcA0
      }
      else {
        this.utcA0 = 0.0;
      }
      if (initObj.hasOwnProperty('utcA1')) {
        this.utcA1 = initObj.utcA1
      }
      else {
        this.utcA1 = 0.0;
      }
      if (initObj.hasOwnProperty('utcTOW')) {
        this.utcTOW = initObj.utcTOW
      }
      else {
        this.utcTOW = 0;
      }
      if (initObj.hasOwnProperty('utcWNT')) {
        this.utcWNT = initObj.utcWNT
      }
      else {
        this.utcWNT = 0;
      }
      if (initObj.hasOwnProperty('utcLS')) {
        this.utcLS = initObj.utcLS
      }
      else {
        this.utcLS = 0;
      }
      if (initObj.hasOwnProperty('utcWNF')) {
        this.utcWNF = initObj.utcWNF
      }
      else {
        this.utcWNF = 0;
      }
      if (initObj.hasOwnProperty('utcDN')) {
        this.utcDN = initObj.utcDN
      }
      else {
        this.utcDN = 0;
      }
      if (initObj.hasOwnProperty('utcLSF')) {
        this.utcLSF = initObj.utcLSF
      }
      else {
        this.utcLSF = 0;
      }
      if (initObj.hasOwnProperty('utcSpare')) {
        this.utcSpare = initObj.utcSpare
      }
      else {
        this.utcSpare = 0;
      }
      if (initObj.hasOwnProperty('klobA0')) {
        this.klobA0 = initObj.klobA0
      }
      else {
        this.klobA0 = 0.0;
      }
      if (initObj.hasOwnProperty('klobA1')) {
        this.klobA1 = initObj.klobA1
      }
      else {
        this.klobA1 = 0.0;
      }
      if (initObj.hasOwnProperty('klobA2')) {
        this.klobA2 = initObj.klobA2
      }
      else {
        this.klobA2 = 0.0;
      }
      if (initObj.hasOwnProperty('klobA3')) {
        this.klobA3 = initObj.klobA3
      }
      else {
        this.klobA3 = 0.0;
      }
      if (initObj.hasOwnProperty('klobB0')) {
        this.klobB0 = initObj.klobB0
      }
      else {
        this.klobB0 = 0.0;
      }
      if (initObj.hasOwnProperty('klobB1')) {
        this.klobB1 = initObj.klobB1
      }
      else {
        this.klobB1 = 0.0;
      }
      if (initObj.hasOwnProperty('klobB2')) {
        this.klobB2 = initObj.klobB2
      }
      else {
        this.klobB2 = 0.0;
      }
      if (initObj.hasOwnProperty('klobB3')) {
        this.klobB3 = initObj.klobB3
      }
      else {
        this.klobB3 = 0.0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AidHUI
    // Serialize message field [health]
    bufferOffset = _serializer.uint32(obj.health, buffer, bufferOffset);
    // Serialize message field [utcA0]
    bufferOffset = _serializer.float64(obj.utcA0, buffer, bufferOffset);
    // Serialize message field [utcA1]
    bufferOffset = _serializer.float64(obj.utcA1, buffer, bufferOffset);
    // Serialize message field [utcTOW]
    bufferOffset = _serializer.int32(obj.utcTOW, buffer, bufferOffset);
    // Serialize message field [utcWNT]
    bufferOffset = _serializer.int16(obj.utcWNT, buffer, bufferOffset);
    // Serialize message field [utcLS]
    bufferOffset = _serializer.int16(obj.utcLS, buffer, bufferOffset);
    // Serialize message field [utcWNF]
    bufferOffset = _serializer.int16(obj.utcWNF, buffer, bufferOffset);
    // Serialize message field [utcDN]
    bufferOffset = _serializer.int16(obj.utcDN, buffer, bufferOffset);
    // Serialize message field [utcLSF]
    bufferOffset = _serializer.int16(obj.utcLSF, buffer, bufferOffset);
    // Serialize message field [utcSpare]
    bufferOffset = _serializer.int16(obj.utcSpare, buffer, bufferOffset);
    // Serialize message field [klobA0]
    bufferOffset = _serializer.float32(obj.klobA0, buffer, bufferOffset);
    // Serialize message field [klobA1]
    bufferOffset = _serializer.float32(obj.klobA1, buffer, bufferOffset);
    // Serialize message field [klobA2]
    bufferOffset = _serializer.float32(obj.klobA2, buffer, bufferOffset);
    // Serialize message field [klobA3]
    bufferOffset = _serializer.float32(obj.klobA3, buffer, bufferOffset);
    // Serialize message field [klobB0]
    bufferOffset = _serializer.float32(obj.klobB0, buffer, bufferOffset);
    // Serialize message field [klobB1]
    bufferOffset = _serializer.float32(obj.klobB1, buffer, bufferOffset);
    // Serialize message field [klobB2]
    bufferOffset = _serializer.float32(obj.klobB2, buffer, bufferOffset);
    // Serialize message field [klobB3]
    bufferOffset = _serializer.float32(obj.klobB3, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint32(obj.flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AidHUI
    let len;
    let data = new AidHUI(null);
    // Deserialize message field [health]
    data.health = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [utcA0]
    data.utcA0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utcA1]
    data.utcA1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utcTOW]
    data.utcTOW = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [utcWNT]
    data.utcWNT = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [utcLS]
    data.utcLS = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [utcWNF]
    data.utcWNF = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [utcDN]
    data.utcDN = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [utcLSF]
    data.utcLSF = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [utcSpare]
    data.utcSpare = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [klobA0]
    data.klobA0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [klobA1]
    data.klobA1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [klobA2]
    data.klobA2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [klobA3]
    data.klobA3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [klobB0]
    data.klobB0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [klobB1]
    data.klobB1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [klobB2]
    data.klobB2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [klobB3]
    data.klobB3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/AidHUI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60cd4ce940333cb9b38edd447085ce5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # AID-HUI (0x0B 0x02)
    # GPS Health, UTC and ionosphere parameters
    #
    # All UBX-AID messages are deprecated; use UBX-MGA messages instead.
    # This message contains a health bit mask, UTC time and Klobuchar parameters. For more
    # information on these parameters, please see the ICD-GPS-200 documentation.
    
    uint8 CLASS_ID = 11
    uint8 MESSAGE_ID = 2
    
    uint32  health          # Bitmask, every bit represents a GPS SV (1-32). 
                            # If the bit is set the SV is healthy.
    float64 utcA0           # UTC - parameter A0
    float64 utcA1           # UTC - parameter A1
    int32   utcTOW          # UTC - reference time of week
    int16   utcWNT          # UTC - reference week number
    int16   utcLS           # UTC - time difference due to leap seconds before event
    int16   utcWNF          # UTC - week number when next leap second event occurs
    int16   utcDN           # UTC - day of week when next leap second event occurs
    int16   utcLSF          # UTC - time difference due to leap seconds after event
    int16   utcSpare        # UTC - Spare to ensure structure is a multiple of 4 
                            # bytes
    float32 klobA0          # Klobuchar - alpha 0 [s]
    float32 klobA1          # Klobuchar - alpha 1 [s/semicircle]
    float32 klobA2          # Klobuchar - alpha 2 [s/semicircle^2]
    float32 klobA3          # Klobuchar - alpha 3 [s/semicircle^3]
    float32 klobB0          # Klobuchar - beta 0  [s]
    float32 klobB1          # Klobuchar - beta 1  [s/semicircle]
    float32 klobB2          # Klobuchar - beta 2  [s/semicircle^2]
    float32 klobB3          # Klobuchar - beta 3  [s/semicircle^3]
    uint32 flags            # flags
    uint32 FLAGS_HEALTH = 1     # Healthmask field in this message is valid
    uint32 FLAGS_UTC = 2        # UTC parameter fields in this message are valid
    uint32 FLAGS_KLOB = 4       # Klobuchar parameter fields in this message are 
                                # valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AidHUI(null);
    if (msg.health !== undefined) {
      resolved.health = msg.health;
    }
    else {
      resolved.health = 0
    }

    if (msg.utcA0 !== undefined) {
      resolved.utcA0 = msg.utcA0;
    }
    else {
      resolved.utcA0 = 0.0
    }

    if (msg.utcA1 !== undefined) {
      resolved.utcA1 = msg.utcA1;
    }
    else {
      resolved.utcA1 = 0.0
    }

    if (msg.utcTOW !== undefined) {
      resolved.utcTOW = msg.utcTOW;
    }
    else {
      resolved.utcTOW = 0
    }

    if (msg.utcWNT !== undefined) {
      resolved.utcWNT = msg.utcWNT;
    }
    else {
      resolved.utcWNT = 0
    }

    if (msg.utcLS !== undefined) {
      resolved.utcLS = msg.utcLS;
    }
    else {
      resolved.utcLS = 0
    }

    if (msg.utcWNF !== undefined) {
      resolved.utcWNF = msg.utcWNF;
    }
    else {
      resolved.utcWNF = 0
    }

    if (msg.utcDN !== undefined) {
      resolved.utcDN = msg.utcDN;
    }
    else {
      resolved.utcDN = 0
    }

    if (msg.utcLSF !== undefined) {
      resolved.utcLSF = msg.utcLSF;
    }
    else {
      resolved.utcLSF = 0
    }

    if (msg.utcSpare !== undefined) {
      resolved.utcSpare = msg.utcSpare;
    }
    else {
      resolved.utcSpare = 0
    }

    if (msg.klobA0 !== undefined) {
      resolved.klobA0 = msg.klobA0;
    }
    else {
      resolved.klobA0 = 0.0
    }

    if (msg.klobA1 !== undefined) {
      resolved.klobA1 = msg.klobA1;
    }
    else {
      resolved.klobA1 = 0.0
    }

    if (msg.klobA2 !== undefined) {
      resolved.klobA2 = msg.klobA2;
    }
    else {
      resolved.klobA2 = 0.0
    }

    if (msg.klobA3 !== undefined) {
      resolved.klobA3 = msg.klobA3;
    }
    else {
      resolved.klobA3 = 0.0
    }

    if (msg.klobB0 !== undefined) {
      resolved.klobB0 = msg.klobB0;
    }
    else {
      resolved.klobB0 = 0.0
    }

    if (msg.klobB1 !== undefined) {
      resolved.klobB1 = msg.klobB1;
    }
    else {
      resolved.klobB1 = 0.0
    }

    if (msg.klobB2 !== undefined) {
      resolved.klobB2 = msg.klobB2;
    }
    else {
      resolved.klobB2 = 0.0
    }

    if (msg.klobB3 !== undefined) {
      resolved.klobB3 = msg.klobB3;
    }
    else {
      resolved.klobB3 = 0.0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    return resolved;
    }
};

// Constants for message
AidHUI.Constants = {
  CLASS_ID: 11,
  MESSAGE_ID: 2,
  FLAGS_HEALTH: 1,
  FLAGS_UTC: 2,
  FLAGS_KLOB: 4,
}

module.exports = AidHUI;
