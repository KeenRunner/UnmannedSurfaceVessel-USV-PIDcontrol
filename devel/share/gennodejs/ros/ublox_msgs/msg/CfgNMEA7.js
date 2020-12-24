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

class CfgNMEA7 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filter = null;
      this.nmeaVersion = null;
      this.numSV = null;
      this.flags = null;
      this.gnssToFilter = null;
      this.svNumbering = null;
      this.mainTalkerId = null;
      this.gsvTalkerId = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('filter')) {
        this.filter = initObj.filter
      }
      else {
        this.filter = 0;
      }
      if (initObj.hasOwnProperty('nmeaVersion')) {
        this.nmeaVersion = initObj.nmeaVersion
      }
      else {
        this.nmeaVersion = 0;
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
      if (initObj.hasOwnProperty('gnssToFilter')) {
        this.gnssToFilter = initObj.gnssToFilter
      }
      else {
        this.gnssToFilter = 0;
      }
      if (initObj.hasOwnProperty('svNumbering')) {
        this.svNumbering = initObj.svNumbering
      }
      else {
        this.svNumbering = 0;
      }
      if (initObj.hasOwnProperty('mainTalkerId')) {
        this.mainTalkerId = initObj.mainTalkerId
      }
      else {
        this.mainTalkerId = 0;
      }
      if (initObj.hasOwnProperty('gsvTalkerId')) {
        this.gsvTalkerId = initObj.gsvTalkerId
      }
      else {
        this.gsvTalkerId = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgNMEA7
    // Serialize message field [filter]
    bufferOffset = _serializer.uint8(obj.filter, buffer, bufferOffset);
    // Serialize message field [nmeaVersion]
    bufferOffset = _serializer.uint8(obj.nmeaVersion, buffer, bufferOffset);
    // Serialize message field [numSV]
    bufferOffset = _serializer.uint8(obj.numSV, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [gnssToFilter]
    bufferOffset = _serializer.uint32(obj.gnssToFilter, buffer, bufferOffset);
    // Serialize message field [svNumbering]
    bufferOffset = _serializer.uint8(obj.svNumbering, buffer, bufferOffset);
    // Serialize message field [mainTalkerId]
    bufferOffset = _serializer.uint8(obj.mainTalkerId, buffer, bufferOffset);
    // Serialize message field [gsvTalkerId]
    bufferOffset = _serializer.uint8(obj.gsvTalkerId, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgNMEA7
    let len;
    let data = new CfgNMEA7(null);
    // Deserialize message field [filter]
    data.filter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nmeaVersion]
    data.nmeaVersion = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [numSV]
    data.numSV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gnssToFilter]
    data.gnssToFilter = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [svNumbering]
    data.svNumbering = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mainTalkerId]
    data.mainTalkerId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gsvTalkerId]
    data.gsvTalkerId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgNMEA7';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f06212695f6e460ea30b1b436df86c2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-NMEA (0x06 0x17)
    # NMEA protocol configuration V0
    #
    # Set/Get the NMEA protocol configuration. See section NMEA Protocol 
    # Configuration for a detailed description of the configuration effects on 
    # NMEA output
    #
    # Supported on: u-blox 7 firmware version 1.00
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 23 
    
    uint8 filter                  # filter flags
    uint8 FILTER_POS = 1          # Enable position output for failed or 
                                  # invalid fixes
    uint8 FILTER_MSK_POS = 2      # Enable position output for invalid fixes
    uint8 FILTER_TIME = 4         # Enable time output for invalid times
    uint8 FILTER_DATE = 8         # Enable date output for invalid dates
    uint8 FILTER_GPS_ONLY = 16    # Restrict output to GPS satellites only
    uint8 FILTER_TRACK = 32       # Enable COG output even if COG is frozen
    
    uint8 nmeaVersion             # NMEA version
    uint8 NMEA_VERSION_2_3 = 35     # Version 2.3
    uint8 NMEA_VERSION_2_1 = 33     # Version 2.1
    
    uint8 numSV                   # Maximum Number of SVs to report per TalkerId: 
                                  # unlimited (0) or 8, 12, 16
    uint8 NUM_SV_UNLIMITED = 0 
    
    uint8 flags                   # flags
    uint8 FLAGS_COMPAT = 1          # enable compatibility mode.
                                    # This might be needed for certain applications  
                                    # when customer's NMEA parser expects a fixed 
                                    # number of  digits in position coordinates
    uint8 FLAGS_CONSIDER = 2        # enable considering mode
    
    uint32 gnssToFilter           # Filters out satellites based on their GNSS.  
                                  # If a bitfield is enabled, the corresponding 
                                  # satellites will be not output.
    uint32 GNSS_TO_FILTER_GPS = 1       # Disable reporting of GPS satellites
    uint32 GNSS_TO_FILTER_SBAS = 2      # Disable reporting of SBAS satellites
    uint32 GNSS_TO_FILTER_QZSS = 16     # Disable reporting of QZSS satellites
    uint32 GNSS_TO_FILTER_GLONASS = 32  # Disable reporting of GLONASS satellites
    
    uint8 svNumbering             # Configures the display of satellites that do not  
                                  # have an NMEA-defined value. Note: this does not
                                  # apply to satellites with an unknown ID.
    uint8 SV_NUMBERING_STRICT = 0     # Strict - Satellites are not output
    uint8 SV_NUMBERING_EXTENDED = 1   # Extended - Use proprietary numbering
    
    uint8 mainTalkerId            # By default the main Talker ID (i.e. the Talker 
                                  # ID used  for all messages other than GSV) is 
                                  # determined by the  GNSS assignment of the 
                                  # receiver's channels (see CfgGNSS). 
                                  # This field enables the main Talker ID to be 
                                  # overridden
    uint8 MAIN_TALKER_ID_NOT_OVERRIDDEN = 0   # Main Talker ID is not overridden
    uint8 MAIN_TALKER_ID_GP = 1               # Set main Talker ID to 'GP'
    uint8 MAIN_TALKER_ID_GL = 2               # Set main Talker ID to 'GL'
    uint8 MAIN_TALKER_ID_GN = 3               # Set main Talker ID to 'GN'
    
    uint8 gsvTalkerId             # By default the Talker ID for GSV messages is  
                                  # GNSS specific (as defined by NMEA). This field 
                                  # enables the GSV Talker ID to be overridden.
    uint8 GSV_TALKER_ID_GNSS_SPECIFIC = 0   # Use GNSS specific Talker ID 
                                            # (as defined by NMEA)
    uint8 GSV_TALKER_ID_MAIN = 1            # Use the main Talker ID
    
    uint8 reserved              # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgNMEA7(null);
    if (msg.filter !== undefined) {
      resolved.filter = msg.filter;
    }
    else {
      resolved.filter = 0
    }

    if (msg.nmeaVersion !== undefined) {
      resolved.nmeaVersion = msg.nmeaVersion;
    }
    else {
      resolved.nmeaVersion = 0
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

    if (msg.gnssToFilter !== undefined) {
      resolved.gnssToFilter = msg.gnssToFilter;
    }
    else {
      resolved.gnssToFilter = 0
    }

    if (msg.svNumbering !== undefined) {
      resolved.svNumbering = msg.svNumbering;
    }
    else {
      resolved.svNumbering = 0
    }

    if (msg.mainTalkerId !== undefined) {
      resolved.mainTalkerId = msg.mainTalkerId;
    }
    else {
      resolved.mainTalkerId = 0
    }

    if (msg.gsvTalkerId !== undefined) {
      resolved.gsvTalkerId = msg.gsvTalkerId;
    }
    else {
      resolved.gsvTalkerId = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

// Constants for message
CfgNMEA7.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 23,
  FILTER_POS: 1,
  FILTER_MSK_POS: 2,
  FILTER_TIME: 4,
  FILTER_DATE: 8,
  FILTER_GPS_ONLY: 16,
  FILTER_TRACK: 32,
  NMEA_VERSION_2_3: 35,
  NMEA_VERSION_2_1: 33,
  NUM_SV_UNLIMITED: 0,
  FLAGS_COMPAT: 1,
  FLAGS_CONSIDER: 2,
  GNSS_TO_FILTER_GPS: 1,
  GNSS_TO_FILTER_SBAS: 2,
  GNSS_TO_FILTER_QZSS: 16,
  GNSS_TO_FILTER_GLONASS: 32,
  SV_NUMBERING_STRICT: 0,
  SV_NUMBERING_EXTENDED: 1,
  MAIN_TALKER_ID_NOT_OVERRIDDEN: 0,
  MAIN_TALKER_ID_GP: 1,
  MAIN_TALKER_ID_GL: 2,
  MAIN_TALKER_ID_GN: 3,
  GSV_TALKER_ID_GNSS_SPECIFIC: 0,
  GSV_TALKER_ID_MAIN: 1,
}

module.exports = CfgNMEA7;
