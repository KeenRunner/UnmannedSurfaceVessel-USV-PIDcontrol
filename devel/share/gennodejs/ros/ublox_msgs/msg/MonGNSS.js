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

class MonGNSS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.supported = null;
      this.defaultGnss = null;
      this.enabled = null;
      this.simultaneous = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('supported')) {
        this.supported = initObj.supported
      }
      else {
        this.supported = 0;
      }
      if (initObj.hasOwnProperty('defaultGnss')) {
        this.defaultGnss = initObj.defaultGnss
      }
      else {
        this.defaultGnss = 0;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = 0;
      }
      if (initObj.hasOwnProperty('simultaneous')) {
        this.simultaneous = initObj.simultaneous
      }
      else {
        this.simultaneous = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonGNSS
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Serialize message field [supported]
    bufferOffset = _serializer.uint8(obj.supported, buffer, bufferOffset);
    // Serialize message field [defaultGnss]
    bufferOffset = _serializer.uint8(obj.defaultGnss, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.uint8(obj.enabled, buffer, bufferOffset);
    // Serialize message field [simultaneous]
    bufferOffset = _serializer.uint8(obj.simultaneous, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 3) {
      throw new Error('Unable to serialize array field reserved1 - length must be 3')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonGNSS
    let len;
    let data = new MonGNSS(null);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [supported]
    data.supported = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [defaultGnss]
    data.defaultGnss = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [simultaneous]
    data.simultaneous = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/MonGNSS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0986728889e4abf5eac46b70b74047ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MON-GNSS (0x0A 0x28)
    # Information message major GNSS selection
    #
    # This message reports major GNSS selection. Augmentation systems are not
    # reported.
    # 
    
    uint8 CLASS_ID = 10
    uint8 MESSAGE_ID = 40
    
    uint8 version         # Message version (0x01 for this version)
    
    uint8 BIT_MASK_GPS = 1
    uint8 BIT_MASK_GLONASS = 2
    uint8 BIT_MASK_BEIDOU = 4
    uint8 BIT_MASK_GALILEO = 8
    
    uint8 supported       # The major GNSS that can be supported by this receiver
    uint8 defaultGnss     # Default major GNSS selection. If the default major GNSS 
                          # selection is currently configured in the efuse for this 
                          # receiver, it takes precedence over the default major 
                          # GNSS selection configured in the executing firmware of 
                          # this receiver.
                          # see bit mask constants
    uint8 enabled         # Current major GNSS selection enabled for this receiver
                          # see bit mask constants
    
    uint8 simultaneous    # Maximum number of concurrent major GNSS that can be 
                          # supported by this receiver
    
    uint8[3] reserved1    # Reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonGNSS(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.supported !== undefined) {
      resolved.supported = msg.supported;
    }
    else {
      resolved.supported = 0
    }

    if (msg.defaultGnss !== undefined) {
      resolved.defaultGnss = msg.defaultGnss;
    }
    else {
      resolved.defaultGnss = 0
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = 0
    }

    if (msg.simultaneous !== undefined) {
      resolved.simultaneous = msg.simultaneous;
    }
    else {
      resolved.simultaneous = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(3).fill(0)
    }

    return resolved;
    }
};

// Constants for message
MonGNSS.Constants = {
  CLASS_ID: 10,
  MESSAGE_ID: 40,
  BIT_MASK_GPS: 1,
  BIT_MASK_GLONASS: 2,
  BIT_MASK_BEIDOU: 4,
  BIT_MASK_GALILEO: 8,
}

module.exports = MonGNSS;
