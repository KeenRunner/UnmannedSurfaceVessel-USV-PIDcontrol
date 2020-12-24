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

class CfgGNSS_Block {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gnssId = null;
      this.resTrkCh = null;
      this.maxTrkCh = null;
      this.reserved1 = null;
      this.flags = null;
    }
    else {
      if (initObj.hasOwnProperty('gnssId')) {
        this.gnssId = initObj.gnssId
      }
      else {
        this.gnssId = 0;
      }
      if (initObj.hasOwnProperty('resTrkCh')) {
        this.resTrkCh = initObj.resTrkCh
      }
      else {
        this.resTrkCh = 0;
      }
      if (initObj.hasOwnProperty('maxTrkCh')) {
        this.maxTrkCh = initObj.maxTrkCh
      }
      else {
        this.maxTrkCh = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
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
    // Serializes a message object of type CfgGNSS_Block
    // Serialize message field [gnssId]
    bufferOffset = _serializer.uint8(obj.gnssId, buffer, bufferOffset);
    // Serialize message field [resTrkCh]
    bufferOffset = _serializer.uint8(obj.resTrkCh, buffer, bufferOffset);
    // Serialize message field [maxTrkCh]
    bufferOffset = _serializer.uint8(obj.maxTrkCh, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint32(obj.flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgGNSS_Block
    let len;
    let data = new CfgGNSS_Block(null);
    // Deserialize message field [gnssId]
    data.gnssId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [resTrkCh]
    data.resTrkCh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxTrkCh]
    data.maxTrkCh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgGNSS_Block';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f786023414ba20add907814936842e32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CfgGNSS_Block(null);
    if (msg.gnssId !== undefined) {
      resolved.gnssId = msg.gnssId;
    }
    else {
      resolved.gnssId = 0
    }

    if (msg.resTrkCh !== undefined) {
      resolved.resTrkCh = msg.resTrkCh;
    }
    else {
      resolved.resTrkCh = 0
    }

    if (msg.maxTrkCh !== undefined) {
      resolved.maxTrkCh = msg.maxTrkCh;
    }
    else {
      resolved.maxTrkCh = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
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
CfgGNSS_Block.Constants = {
  GNSS_ID_GPS: 0,
  GNSS_ID_SBAS: 1,
  GNSS_ID_GALILEO: 2,
  GNSS_ID_BEIDOU: 3,
  GNSS_ID_IMES: 4,
  GNSS_ID_QZSS: 5,
  GNSS_ID_GLONASS: 6,
  RES_TRK_CH_GPS: 8,
  RES_TRK_CH_QZSS: 0,
  RES_TRK_CH_SBAS: 0,
  RES_TRK_CH_GLONASS: 8,
  MAX_TRK_CH_MAJOR_MIN: 4,
  MAX_TRK_CH_GPS: 16,
  MAX_TRK_CH_GLONASS: 14,
  MAX_TRK_CH_QZSS: 3,
  MAX_TRK_CH_SBAS: 3,
  FLAGS_ENABLE: 1,
  FLAGS_SIG_CFG_MASK: 16711680,
  SIG_CFG_GPS_L1CA: 65536,
  SIG_CFG_SBAS_L1CA: 65536,
  SIG_CFG_GALILEO_E1OS: 65536,
  SIG_CFG_BEIDOU_B1I: 65536,
  SIG_CFG_IMES_L1: 65536,
  SIG_CFG_QZSS_L1CA: 65536,
  SIG_CFG_QZSS_L1SAIF: 262144,
  SIG_CFG_GLONASS_L1OF: 65536,
}

module.exports = CfgGNSS_Block;
