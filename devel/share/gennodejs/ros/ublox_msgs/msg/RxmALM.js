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

class RxmALM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.svid = null;
      this.week = null;
      this.dwrd = null;
    }
    else {
      if (initObj.hasOwnProperty('svid')) {
        this.svid = initObj.svid
      }
      else {
        this.svid = 0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
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
    // Serializes a message object of type RxmALM
    // Serialize message field [svid]
    bufferOffset = _serializer.uint32(obj.svid, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint32(obj.week, buffer, bufferOffset);
    // Serialize message field [dwrd]
    bufferOffset = _arraySerializer.uint32(obj.dwrd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmALM
    let len;
    let data = new RxmALM(null);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint32(buffer, bufferOffset);
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
    return 'ublox_msgs/RxmALM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97a9e7864105ab31fc93f2e4bef9de26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RXM-ALM (0x02 0x30)
    # GPS Aiding Almanach Input/Output Message
    #
    # This message is provided considered obsolete, please use AID-ALM instead!
    # - If the WEEK Value is 0, DWRD0 to DWRD7 are not sent as the almanach is not 
    #   available for the given SV.
    # - DWORD0 to DWORD7 contain the 8 words following the Hand-Over Word ( HOW )
    #   from the GPS navigation message, either pages 1 to 24 of sub-frame 5 or 
    #   pages 2 to 10 of subframe 4. See IS-GPS-200 for a full description of the 
    #   contents of the Almanac pages.
    # - In DWORD0 to DWORD7, the parity bits have been removed, and the 24 bits of 
    #   data are located in Bits 0 to 23. Bits 24 to 31 shall be ignored.
    # - Example: Parameter e (Eccentricity) from Almanach Subframe 4/5, Word 3, 
    #   Bits 69-84 within the subframe can be found in DWRD0, Bits 15-0 whereas 
    #   Bit 0 is the LSB.
    #
    
    uint8 CLASS_ID = 2
    uint8 MESSAGE_ID = 48
    
    uint32 svid             # SV ID for which this Almanach Data is 
                            # (Valid Range: 1 .. 32 or 51, 56, 63).
    uint32 week             # Issue Date of Almanach (GPS week number)
    
    # Start of optional block
    uint32[] dwrd           # Almanach Words
    # End of optional block
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmALM(null);
    if (msg.svid !== undefined) {
      resolved.svid = msg.svid;
    }
    else {
      resolved.svid = 0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
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
RxmALM.Constants = {
  CLASS_ID: 2,
  MESSAGE_ID: 48,
}

module.exports = RxmALM;
