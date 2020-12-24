// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EsfRAW_Block = require('./EsfRAW_Block.js');

//-----------------------------------------------------------

class EsfRAW {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reserved0 = null;
      this.blocks = null;
    }
    else {
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('blocks')) {
        this.blocks = initObj.blocks
      }
      else {
        this.blocks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EsfRAW
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 4) {
      throw new Error('Unable to serialize array field reserved0 - length must be 4')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 4);
    // Serialize message field [blocks]
    // Serialize the length for message field [blocks]
    bufferOffset = _serializer.uint32(obj.blocks.length, buffer, bufferOffset);
    obj.blocks.forEach((val) => {
      bufferOffset = EsfRAW_Block.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EsfRAW
    let len;
    let data = new EsfRAW(null);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    // Deserialize message field [blocks]
    // Deserialize array length for message field [blocks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blocks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blocks[i] = EsfRAW_Block.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.blocks.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/EsfRAW';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b942250c5ec94c6b6e69c63d82d9a946';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ESF-RAW (0x10 0x03)
    # Raw sensor measurements
    #
    # The message contains measurements from the active inertial sensors connected
    # to the GNSS chip. Possible data types for the data field are accelerometer,
    # gyroscope and temperature readings as described in the ESF Measurement Data
    # section. Note that the rate selected in CFG-MSG is not respected. If a
    # positive rate is selected then all raw measurements will be output. 
    #
    # Supported on ADR/UDR products.
    #
    
    uint8 CLASS_ID = 16
    uint8 MESSAGE_ID = 3
    
    uint8[4] reserved0 # Reserved
    
    EsfRAW_Block[] blocks
    ================================================================================
    MSG: ublox_msgs/EsfRAW_Block
    # See ESF-RAW
    
    uint32 data      # Its scaling and unit depends on the type and is
                    # the same as in ESF-MEAS
    uint32 DATA_FIELD_MASK = 16777215
    uint32 DATA_TYPE_MASK = 4278190080    # type of data 
                                          # (0 = no data; 1..255 = data type)
    uint32 sTtag     # sensor time tag
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EsfRAW(null);
    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(4).fill(0)
    }

    if (msg.blocks !== undefined) {
      resolved.blocks = new Array(msg.blocks.length);
      for (let i = 0; i < resolved.blocks.length; ++i) {
        resolved.blocks[i] = EsfRAW_Block.Resolve(msg.blocks[i]);
      }
    }
    else {
      resolved.blocks = []
    }

    return resolved;
    }
};

// Constants for message
EsfRAW.Constants = {
  CLASS_ID: 16,
  MESSAGE_ID: 3,
}

module.exports = EsfRAW;
