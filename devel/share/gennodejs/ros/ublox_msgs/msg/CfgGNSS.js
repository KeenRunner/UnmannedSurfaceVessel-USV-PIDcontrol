// Auto-generated. Do not edit!

// (in-package ublox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CfgGNSS_Block = require('./CfgGNSS_Block.js');

//-----------------------------------------------------------

class CfgGNSS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msgVer = null;
      this.numTrkChHw = null;
      this.numTrkChUse = null;
      this.numConfigBlocks = null;
      this.blocks = null;
    }
    else {
      if (initObj.hasOwnProperty('msgVer')) {
        this.msgVer = initObj.msgVer
      }
      else {
        this.msgVer = 0;
      }
      if (initObj.hasOwnProperty('numTrkChHw')) {
        this.numTrkChHw = initObj.numTrkChHw
      }
      else {
        this.numTrkChHw = 0;
      }
      if (initObj.hasOwnProperty('numTrkChUse')) {
        this.numTrkChUse = initObj.numTrkChUse
      }
      else {
        this.numTrkChUse = 0;
      }
      if (initObj.hasOwnProperty('numConfigBlocks')) {
        this.numConfigBlocks = initObj.numConfigBlocks
      }
      else {
        this.numConfigBlocks = 0;
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
    // Serializes a message object of type CfgGNSS
    // Serialize message field [msgVer]
    bufferOffset = _serializer.uint8(obj.msgVer, buffer, bufferOffset);
    // Serialize message field [numTrkChHw]
    bufferOffset = _serializer.uint8(obj.numTrkChHw, buffer, bufferOffset);
    // Serialize message field [numTrkChUse]
    bufferOffset = _serializer.uint8(obj.numTrkChUse, buffer, bufferOffset);
    // Serialize message field [numConfigBlocks]
    bufferOffset = _serializer.uint8(obj.numConfigBlocks, buffer, bufferOffset);
    // Serialize message field [blocks]
    // Serialize the length for message field [blocks]
    bufferOffset = _serializer.uint32(obj.blocks.length, buffer, bufferOffset);
    obj.blocks.forEach((val) => {
      bufferOffset = CfgGNSS_Block.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgGNSS
    let len;
    let data = new CfgGNSS(null);
    // Deserialize message field [msgVer]
    data.msgVer = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numTrkChHw]
    data.numTrkChHw = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numTrkChUse]
    data.numTrkChUse = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numConfigBlocks]
    data.numConfigBlocks = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [blocks]
    // Deserialize array length for message field [blocks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blocks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blocks[i] = CfgGNSS_Block.deserialize(buffer, bufferOffset)
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
    return 'ublox_msgs/CfgGNSS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1777482e22a0ac50132c66d3284e86f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-GNSS (0x06 0x3E)
    # GNSS Configuration
    #
    # Gets or sets the GNSS system channel sharing configuration.
    # If the receiver is sent a valid new configuration, it will respond with a 
    # UBX-ACK-ACK message and immediately change to the new configuration. Otherwise
    # the receiver will reject the request, by issuing a UBX-ACK-NAK and continuing 
    # operation with the previous configuration.
    # Configuration requirements:
    #  - It is necessary for at least one major GNSS to be enabled, after applying 
    #    the new configuration to the current one.
    #  - It is also required that at least 4 tracking channels are available to each 
    #    enabled major GNSS, i.e. maxTrkCh must have a minimum value of 4 for each
    #    enabled major GNSS.
    #  - The number of tracking channels in use must not exceed the number of 
    #    tracking channels available in hardware, and the sum of all reserved 
    #    tracking channels needs to be less than or equal to the number of tracking
    #    channels in use.
    # Notes:
    #  - To avoid cross-correlation issues, it is recommended that GPS and QZSS are
    #    always both enabled or both disabled.
    #  - Polling this message returns the configuration of all supported GNSS, 
    #    whether enabled or not; it may also include GNSS unsupported by the 
    #    particular product, but in such cases the enable flag will always be unset.
    #  - See section GNSS Configuration for a discussion of the use of this message 
    #    and section Satellite Numbering for a description of the GNSS IDs available
    #  - Configuration specific to the GNSS system can be done via other messages 
    #    (e.g. UBX-CFG-SBAS).
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 62
    
    uint8 msgVer            # Message version (= 0 for this version)
    uint8 numTrkChHw        # Number of tracking channels in hardware (read only)
    uint8 numTrkChUse       # (Read only in protocol versions greater than 23)
                            # Number of tracking channels to use (<= numTrkChHw)
                            # If 0xFF, then number of tracking channels to use will 
                            # be set to numTrkChHw
    uint8 numConfigBlocks   # Number of configuration blocks following
    
    # Start of repeated block (numConfigBlocks times)
    CfgGNSS_Block[] blocks
    # End of repeated block
    ================================================================================
    MSG: ublox_msgs/CfgGNSS_Block
    # see Cfg-GNSS message
    #
    
    uint8 gnssId            # System identifier (see Satellite Numbering)
    
    uint8 GNSS_ID_GPS = 0
    uint8 GNSS_ID_SBAS = 1
    uint8 GNSS_ID_GALILEO = 2
    uint8 GNSS_ID_BEIDOU = 3
    uint8 GNSS_ID_IMES = 4
    uint8 GNSS_ID_QZSS = 5
    uint8 GNSS_ID_GLONASS = 6
    
    uint8 resTrkCh          # (Read only in protocol versions greater than 23)
                            # Number of reserved (minimum) tracking channels 
                            # for this GNSS system
    uint8 RES_TRK_CH_GPS = 8
    uint8 RES_TRK_CH_QZSS = 0
    uint8 RES_TRK_CH_SBAS = 0
    uint8 RES_TRK_CH_GLONASS = 8
    uint8 maxTrkCh          # (Read only in protocol versions greater than 23)
                            # Maximum number of tracking channels used for this 
                            # system. Must be > 0, >= resTrkChn, <= numTrkChUse and
                            # <= maximum number of tracking channels supported for 
                            # this system
    uint8 MAX_TRK_CH_MAJOR_MIN = 4         # maxTrkCh must have this minimum value
                                           # for each enabled major GNSS
    uint8 MAX_TRK_CH_GPS = 16
    uint8 MAX_TRK_CH_GLONASS = 14
    uint8 MAX_TRK_CH_QZSS = 3
    uint8 MAX_TRK_CH_SBAS = 3
    
    uint8 reserved1         # Reserved
    
    uint32 flags            # Bitfield of flags. At least one signal must be
                            # configured in every enabled system. 
    uint32 FLAGS_ENABLE = 1                # Enable this system
    uint32 FLAGS_SIG_CFG_MASK = 16711680   # Signal configuration mask
    uint32 SIG_CFG_GPS_L1CA = 65536        # When gnssId is 0 (GPS)
                                           # * 0x01 = GPS L1C/A
    uint32 SIG_CFG_SBAS_L1CA = 65536       # When gnssId is 1 (SBAS)
                                           # * 0x01 = SBAS L1C/A
    uint32 SIG_CFG_GALILEO_E1OS = 65536    # When gnssId is 2 (Galileo)
                                           # * 0x01 = Galileo E1OS (not supported in 
                                           #   protocol versions less than 18)
    uint32 SIG_CFG_BEIDOU_B1I = 65536      # When gnssId is 3 (BeiDou)
                                           # * 0x01 = BeiDou B1I 
    uint32 SIG_CFG_IMES_L1 = 65536         # When gnssId is 4 (IMES)
                                           # * 0x01 = IMES L1
    uint32 SIG_CFG_QZSS_L1CA = 65536       # When gnssId is 5 (QZSS)
                                           # * 0x01 = QZSS L1C/A
    uint32 SIG_CFG_QZSS_L1SAIF = 262144    # * 0x04 = QZSS L1SAIF
    uint32 SIG_CFG_GLONASS_L1OF = 65536    # When gnssId is 6 (GLONASS)
                                           # * 0x01 = GLONASS L1OF
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgGNSS(null);
    if (msg.msgVer !== undefined) {
      resolved.msgVer = msg.msgVer;
    }
    else {
      resolved.msgVer = 0
    }

    if (msg.numTrkChHw !== undefined) {
      resolved.numTrkChHw = msg.numTrkChHw;
    }
    else {
      resolved.numTrkChHw = 0
    }

    if (msg.numTrkChUse !== undefined) {
      resolved.numTrkChUse = msg.numTrkChUse;
    }
    else {
      resolved.numTrkChUse = 0
    }

    if (msg.numConfigBlocks !== undefined) {
      resolved.numConfigBlocks = msg.numConfigBlocks;
    }
    else {
      resolved.numConfigBlocks = 0
    }

    if (msg.blocks !== undefined) {
      resolved.blocks = new Array(msg.blocks.length);
      for (let i = 0; i < resolved.blocks.length; ++i) {
        resolved.blocks[i] = CfgGNSS_Block.Resolve(msg.blocks[i]);
      }
    }
    else {
      resolved.blocks = []
    }

    return resolved;
    }
};

// Constants for message
CfgGNSS.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 62,
}

module.exports = CfgGNSS;
