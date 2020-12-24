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

class RxmSFRBX {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gnssId = null;
      this.svId = null;
      this.reserved0 = null;
      this.freqId = null;
      this.numWords = null;
      this.chn = null;
      this.version = null;
      this.reserved1 = null;
      this.dwrd = null;
    }
    else {
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
      if (initObj.hasOwnProperty('numWords')) {
        this.numWords = initObj.numWords
      }
      else {
        this.numWords = 0;
      }
      if (initObj.hasOwnProperty('chn')) {
        this.chn = initObj.chn
      }
      else {
        this.chn = 0;
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
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('dwrd')) {
        this.dwrd = initObj.dwrd
      }
      else {
        this.dwrd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxmSFRBX
    // Serialize message field [gnssId]
    bufferOffset = _serializer.uint8(obj.gnssId, buffer, bufferOffset);
    // Serialize message field [svId]
    bufferOffset = _serializer.uint8(obj.svId, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [freqId]
    bufferOffset = _serializer.uint8(obj.freqId, buffer, bufferOffset);
    // Serialize message field [numWords]
    bufferOffset = _serializer.uint8(obj.numWords, buffer, bufferOffset);
    // Serialize message field [chn]
    bufferOffset = _serializer.uint8(obj.chn, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [dwrd]
    bufferOffset = _arraySerializer.uint32(obj.dwrd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmSFRBX
    let len;
    let data = new RxmSFRBX(null);
    // Deserialize message field [gnssId]
    data.gnssId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svId]
    data.svId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [freqId]
    data.freqId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numWords]
    data.numWords = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [chn]
    data.chn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dwrd]
    data.dwrd = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.dwrd.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmSFRBX';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c76473d828cc8e80de3a2d83cd6b9dff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RXM-SFRB (0x02 0x13)
    # Subframe Buffer
    #
    # This message reports a complete subframe of broadcast navigation data decoded 
    # from a single signal. The number of data words reported in each message
    # depends on the nature of the signal. See the section on Broadcast Navigation
    # Data for further details.
    #
    
    uint8 CLASS_ID = 2
    uint8 MESSAGE_ID = 19
    
    uint8 gnssId            # GNSS identifier (see Cfg GNSS for constants)
    
    uint8 svId              # Satellite identifier within corresponding GNSS system
    uint8 reserved0         # Reserved
    uint8 freqId            # Only used for GLONASS: This is the frequency
                            # slot + 7 (range from 0 to 13)
    uint8 numWords          # The number of data words contained in this message (up
                            # to 10, for currently supported signals)
    uint8 chn               # The tracking channel number the message was received
                            # on
    uint8 version           # Message version, (0x02 for this version)
    uint8 reserved1         # Reserved
    
    # Start of repeated block (numWords times)
    uint32[] dwrd           # The data words
    # End of repeated block
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmSFRBX(null);
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

    if (msg.numWords !== undefined) {
      resolved.numWords = msg.numWords;
    }
    else {
      resolved.numWords = 0
    }

    if (msg.chn !== undefined) {
      resolved.chn = msg.chn;
    }
    else {
      resolved.chn = 0
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
      resolved.reserved1 = 0
    }

    if (msg.dwrd !== undefined) {
      resolved.dwrd = msg.dwrd;
    }
    else {
      resolved.dwrd = []
    }

    return resolved;
    }
};

// Constants for message
RxmSFRBX.Constants = {
  CLASS_ID: 2,
  MESSAGE_ID: 19,
}

module.exports = RxmSFRBX;
