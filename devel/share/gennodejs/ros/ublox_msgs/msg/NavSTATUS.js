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

class NavSTATUS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iTOW = null;
      this.gpsFix = null;
      this.flags = null;
      this.fixStat = null;
      this.flags2 = null;
      this.ttff = null;
      this.msss = null;
    }
    else {
      if (initObj.hasOwnProperty('iTOW')) {
        this.iTOW = initObj.iTOW
      }
      else {
        this.iTOW = 0;
      }
      if (initObj.hasOwnProperty('gpsFix')) {
        this.gpsFix = initObj.gpsFix
      }
      else {
        this.gpsFix = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('fixStat')) {
        this.fixStat = initObj.fixStat
      }
      else {
        this.fixStat = 0;
      }
      if (initObj.hasOwnProperty('flags2')) {
        this.flags2 = initObj.flags2
      }
      else {
        this.flags2 = 0;
      }
      if (initObj.hasOwnProperty('ttff')) {
        this.ttff = initObj.ttff
      }
      else {
        this.ttff = 0;
      }
      if (initObj.hasOwnProperty('msss')) {
        this.msss = initObj.msss
      }
      else {
        this.msss = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavSTATUS
    // Serialize message field [iTOW]
    bufferOffset = _serializer.uint32(obj.iTOW, buffer, bufferOffset);
    // Serialize message field [gpsFix]
    bufferOffset = _serializer.uint8(obj.gpsFix, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [fixStat]
    bufferOffset = _serializer.uint8(obj.fixStat, buffer, bufferOffset);
    // Serialize message field [flags2]
    bufferOffset = _serializer.uint8(obj.flags2, buffer, bufferOffset);
    // Serialize message field [ttff]
    bufferOffset = _serializer.uint32(obj.ttff, buffer, bufferOffset);
    // Serialize message field [msss]
    bufferOffset = _serializer.uint32(obj.msss, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavSTATUS
    let len;
    let data = new NavSTATUS(null);
    // Deserialize message field [iTOW]
    data.iTOW = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gpsFix]
    data.gpsFix = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fixStat]
    data.fixStat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags2]
    data.flags2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ttff]
    data.ttff = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [msss]
    data.msss = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/NavSTATUS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68047fb8ca04a038a6b031cd1a908762';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # NAV-STATUS (0x01 0x03)
    # Receiver Navigation Status
    #
    # See important comments concerning validity of position and velocity given in
    # section Navigation Output Filters.
    #
    
    uint8 CLASS_ID = 1
    uint8 MESSAGE_ID = 3
    
    uint32 iTOW             # GPS Millisecond time of week [ms]
    
    uint8 gpsFix            # GPSfix Type, this value does not qualify a fix as
                            # valid and within the limits. See note on flag gpsFixOk
                            # below
    uint8 GPS_NO_FIX = 0
    uint8 GPS_DEAD_RECKONING_ONLY = 1
    uint8 GPS_2D_FIX = 2
    uint8 GPS_3D_FIX = 3
    uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4
    uint8 GPS_TIME_ONLY_FIX = 5
    
    uint8 flags             # Navigation Status Flags
    uint8 FLAGS_GPS_FIX_OK = 1      # position & velocity valid & within DOP & ACC 
                                    # Masks
    uint8 FLAGS_DIFF_SOLN = 2       # Differential corrections were applied
    uint8 FLAGS_WKNSET = 4          # Week Number valid
    uint8 FLAGS_TOWSET = 8          # Time of Week valid
    
    uint8 fixStat           # Fix Status Information
    uint8 FIX_STAT_DIFF_CORR_MASK = 1       # 1 = differential corrections available
    # map matching status:
    uint8 FIX_STAT_MAP_MATCHING_MASK = 192
    uint8 MAP_MATCHING_NONE = 0      # none
    uint8 MAP_MATCHING_VALID = 64    # valid but not used, i.e. map matching data 
                                     # was received, but was too old
    uint8 MAP_MATCHING_USED = 128    # valid and used, map matching data was applied
    uint8 MAP_MATCHING_DR = 192      # valid and used, map matching data was 
                                     # applied. In case of sensor unavailability map
                                     # matching data enables dead reckoning. 
                                     # This requires map matched latitude/longitude 
                                     # or heading data.
    
    uint8 flags2            # further information about navigation output
    # power safe mode state (Only for FW version >= 7.01; undefined otherwise)
    uint8 FLAGS2_PSM_STATE_MASK = 3
    uint8 PSM_STATE_ACQUISITION = 0                # ACQUISITION 
                                                   # [or when psm disabled]
    uint8 PSM_STATE_TRACKING = 1                   # TRACKING
    uint8 PSM_STATE_POWER_OPTIMIZED_TRACKING = 2   # POWER OPTIMIZED TRACKING
    uint8 PSM_STATE_INACTIVE = 3                   # INACTIVE
    # Note that the spoofing state value only reflects the detector state for the 
    # current navigation epoch. As spoofing can be detected most easily at the 
    # transition from real signal to spoofing signal, this is also where the 
    # detector is triggered the most. I.e. a value of 1 - No spoofing indicated does
    # not mean that the receiver is not spoofed, it #simply states that the detector
    # was not triggered in this epoch.
    uint8 FLAGS2_SPOOF_DET_STATE_MASK = 24 
    uint8 SPOOF_DET_STATE_UNKNOWN = 0    # Unknown or deactivated
    uint8 SPOOF_DET_STATE_NONE = 8       # No spoofing indicated
    uint8 SPOOF_DET_STATE_SPOOFING = 16  # Spoofing indicated
    uint8 SPOOF_DET_STATE_MULTIPLE = 24  # Multiple spoofing indication
    
    uint32 ttff             # Time to first fix (millisecond time tag) [ms]
    uint32 msss             # Milliseconds since Startup / Reset [ms]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavSTATUS(null);
    if (msg.iTOW !== undefined) {
      resolved.iTOW = msg.iTOW;
    }
    else {
      resolved.iTOW = 0
    }

    if (msg.gpsFix !== undefined) {
      resolved.gpsFix = msg.gpsFix;
    }
    else {
      resolved.gpsFix = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.fixStat !== undefined) {
      resolved.fixStat = msg.fixStat;
    }
    else {
      resolved.fixStat = 0
    }

    if (msg.flags2 !== undefined) {
      resolved.flags2 = msg.flags2;
    }
    else {
      resolved.flags2 = 0
    }

    if (msg.ttff !== undefined) {
      resolved.ttff = msg.ttff;
    }
    else {
      resolved.ttff = 0
    }

    if (msg.msss !== undefined) {
      resolved.msss = msg.msss;
    }
    else {
      resolved.msss = 0
    }

    return resolved;
    }
};

// Constants for message
NavSTATUS.Constants = {
  CLASS_ID: 1,
  MESSAGE_ID: 3,
  GPS_NO_FIX: 0,
  GPS_DEAD_RECKONING_ONLY: 1,
  GPS_2D_FIX: 2,
  GPS_3D_FIX: 3,
  GPS_GPS_DEAD_RECKONING_COMBINED: 4,
  GPS_TIME_ONLY_FIX: 5,
  FLAGS_GPS_FIX_OK: 1,
  FLAGS_DIFF_SOLN: 2,
  FLAGS_WKNSET: 4,
  FLAGS_TOWSET: 8,
  FIX_STAT_DIFF_CORR_MASK: 1,
  FIX_STAT_MAP_MATCHING_MASK: 192,
  MAP_MATCHING_NONE: 0,
  MAP_MATCHING_VALID: 64,
  MAP_MATCHING_USED: 128,
  MAP_MATCHING_DR: 192,
  FLAGS2_PSM_STATE_MASK: 3,
  PSM_STATE_ACQUISITION: 0,
  PSM_STATE_TRACKING: 1,
  PSM_STATE_POWER_OPTIMIZED_TRACKING: 2,
  PSM_STATE_INACTIVE: 3,
  FLAGS2_SPOOF_DET_STATE_MASK: 24,
  SPOOF_DET_STATE_UNKNOWN: 0,
  SPOOF_DET_STATE_NONE: 8,
  SPOOF_DET_STATE_SPOOFING: 16,
  SPOOF_DET_STATE_MULTIPLE: 24,
}

module.exports = NavSTATUS;
