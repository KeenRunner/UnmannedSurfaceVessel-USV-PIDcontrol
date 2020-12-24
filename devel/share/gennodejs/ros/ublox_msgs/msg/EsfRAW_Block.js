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

class EsfRAW_Block {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.sTtag = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
      if (initObj.hasOwnProperty('sTtag')) {
        this.sTtag = initObj.sTtag
      }
      else {
        this.sTtag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EsfRAW_Block
    // Serialize message field [data]
    bufferOffset = _serializer.uint32(obj.data, buffer, bufferOffset);
    // Serialize message field [sTtag]
    bufferOffset = _serializer.uint32(obj.sTtag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EsfRAW_Block
    let len;
    let data = new EsfRAW_Block(null);
    // Deserialize message field [data]
    data.data = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sTtag]
    data.sTtag = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/EsfRAW_Block';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b688443e4ebc6f99b9ac9276b838d477';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EsfRAW_Block(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    if (msg.sTtag !== undefined) {
      resolved.sTtag = msg.sTtag;
    }
    else {
      resolved.sTtag = 0
    }

    return resolved;
    }
};

// Constants for message
EsfRAW_Block.Constants = {
  DATA_FIELD_MASK: 16777215,
  DATA_TYPE_MASK: 4278190080,
}

module.exports = EsfRAW_Block;
