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

class CfgNMEA6 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filter = null;
      this.version = null;
      this.numSV = null;
      this.flags = null;
    }
    else {
      if (initObj.hasOwnProperty('filter')) {
        this.filter = initObj.filter
      }
      else {
        this.filter = 0;
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('numSV')) {
        this.numSV = initObj.numSV
      }
      else {
        this.numSV = 0;
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
    // Serializes a message object of type CfgNMEA6
    // Serialize message field [filter]
    bufferOffset = _serializer.uint8(obj.filter, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.uint8(obj.version, buffer, bufferOffset);
    // Serialize message field [numSV]
    bufferOffset = _serializer.uint8(obj.numSV, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgNMEA6
    let len;
    let data = new CfgNMEA6(null);
    // Deserialize message field [filter]
    data.filter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numSV]
    data.numSV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgNMEA6';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ffbd21c832ce4472519430326bb44e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-NMEA (0x06 0x17)
    # NMEA protocol configuration
    #
    # Set/Get the NMEA protocol configuration. See section NMEA Protocol 
    # Configuration for a detailed description of the configuration effects on 
    # NMEA output
    #
    # Supported on u-blox 6 from firmware version 6.00 up to version 7.03.
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 23 
    
    uint8 filter                  # filter flags
    uint8 FILTER_POS = 1          # Disable position filtering
    uint8 FILTER_MSK_POS = 2      # Disable masked position filtering
    uint8 FILTER_TIME = 4         # Disable time filtering
    uint8 FILTER_DATE = 8         # Disable date filtering
    uint8 FILTER_SBAS_FILT = 16   # Enable SBAS filtering
    uint8 FILTER_TRACK = 32       # Disable track filtering
    
    uint8 version             # NMEA version
    uint8 NMEA_VERSION_2_3 = 35     # Version 2.3
    uint8 NMEA_VERSION_2_1 = 33     # Version 2.1
    
    uint8 numSV                   # Maximum Number of SVs to report in NMEA
                                  # protocol.
                                  # This does not affect the receiver's operation.
                                  # It only limits the number of SVs reported in
                                  # NMEA mode (this might be needed with older
                                  # mapping applications which only support 8- or
                                  # 12-channel receivers)
    
    uint8 flags                   # flags
    uint8 FLAGS_COMPAT = 1          # enable compatibility mode.
                                    # This might be needed for certain applications  
                                    # when customer's NMEA parser expects a fixed 
                                    # number of  digits in position coordinates
    uint8 FLAGS_CONSIDER = 2        # enable considering mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgNMEA6(null);
    if (msg.filter !== undefined) {
      resolved.filter = msg.filter;
    }
    else {
      resolved.filter = 0
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.numSV !== undefined) {
      resolved.numSV = msg.numSV;
    }
    else {
      resolved.numSV = 0
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
CfgNMEA6.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 23,
  FILTER_POS: 1,
  FILTER_MSK_POS: 2,
  FILTER_TIME: 4,
  FILTER_DATE: 8,
  FILTER_SBAS_FILT: 16,
  FILTER_TRACK: 32,
  NMEA_VERSION_2_3: 35,
  NMEA_VERSION_2_1: 33,
  FLAGS_COMPAT: 1,
  FLAGS_CONSIDER: 2,
}

module.exports = CfgNMEA6;
