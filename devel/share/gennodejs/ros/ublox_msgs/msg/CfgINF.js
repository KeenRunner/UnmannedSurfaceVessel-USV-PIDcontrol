// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CfgINF_Block = require('./CfgINF_Block.js');

//-----------------------------------------------------------

class CfgINF {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.blocks = null;
    }
    else {
      if (initObj.hasOwnProperty('blocks')) {
        this.blocks = initObj.blocks
      }
      else {
        this.blocks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgINF
    // Serialize message field [blocks]
    // Serialize the length for message field [blocks]
    bufferOffset = _serializer.uint32(obj.blocks.length, buffer, bufferOffset);
    obj.blocks.forEach((val) => {
      bufferOffset = CfgINF_Block.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgINF
    let len;
    let data = new CfgINF(null);
    // Deserialize message field [blocks]
    // Deserialize array length for message field [blocks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blocks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blocks[i] = CfgINF_Block.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 10 * object.blocks.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgINF';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42fb321cf0c63684f2f7086e850ed61e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-INF  (0x06 0x02)
    # Information message configuration
    #
    # The value of infMsgMask[x] below are that each bit represents one of the INF 
    # class messages (Bit 0 for ERROR, Bit 1 for WARNING and so on.). For a complete 
    # list, see the Message Class INF. Several configurations can be concatenated to 
    # one input message.
    # In this case the payload length can be a multiple of the normal length. Output 
    # messages from the module contain only one configuration unit. Note that I/O 
    # Ports 1 and 2 correspond to serial ports 1 and 2. I/O port 0 is DDC. I/O port 
    # 3 is USB. I/O port 4 is SPI. I/O port 5 is reserved for future use
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 2
    
    # start of repeated block
    CfgINF_Block[] blocks
    # end of repeated block
    
    ================================================================================
    MSG: ublox_msgs/CfgINF_Block
    # See CfgINF message
    #
    
    uint8 protocolID          # Protocol Identifier, identifying for which
                              # protocol the configuration is set/get. The
                              # following are valid Protocol Identifiers:
                              # 0: UBX Protocol
                              # 1: NMEA Protocol
                              # 2-255: Reserved
    uint8 PROTOCOL_ID_UBX = 0
    uint8 PROTOCOL_ID_NMEA = 1
    
    uint8[3] reserved1        # Reserved
    
    uint8[6] infMsgMask       # A bit mask, saying which information messages
                              # are enabled on each I/O port
    uint8 INF_MSG_ERROR = 1              # enable ERROR
    uint8 INF_MSG_WARNING = 2            # enable WARNING
    uint8 INF_MSG_NOTICE = 4             # enable NOTICE
    uint8 INF_MSG_TEST = 8               # enable TEST
    uint8 INF_MSG_DEBUG = 16             # enable DEBUG
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgINF(null);
    if (msg.blocks !== undefined) {
      resolved.blocks = new Array(msg.blocks.length);
      for (let i = 0; i < resolved.blocks.length; ++i) {
        resolved.blocks[i] = CfgINF_Block.Resolve(msg.blocks[i]);
      }
    }
    else {
      resolved.blocks = []
    }

    return resolved;
    }
};

// Constants for message
CfgINF.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 2,
}

module.exports = CfgINF;
