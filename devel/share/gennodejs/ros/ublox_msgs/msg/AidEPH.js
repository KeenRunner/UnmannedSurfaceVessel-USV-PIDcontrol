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

class AidEPH {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.svid = null;
      this.how = null;
      this.sf1d = null;
      this.sf2d = null;
      this.sf3d = null;
    }
    else {
      if (initObj.hasOwnProperty('svid')) {
        this.svid = initObj.svid
      }
      else {
        this.svid = 0;
      }
      if (initObj.hasOwnProperty('how')) {
        this.how = initObj.how
      }
      else {
        this.how = 0;
      }
      if (initObj.hasOwnProperty('sf1d')) {
        this.sf1d = initObj.sf1d
      }
      else {
        this.sf1d = [];
      }
      if (initObj.hasOwnProperty('sf2d')) {
        this.sf2d = initObj.sf2d
      }
      else {
        this.sf2d = [];
      }
      if (initObj.hasOwnProperty('sf3d')) {
        this.sf3d = initObj.sf3d
      }
      else {
        this.sf3d = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AidEPH
    // Serialize message field [svid]
    bufferOffset = _serializer.uint32(obj.svid, buffer, bufferOffset);
    // Serialize message field [how]
    bufferOffset = _serializer.uint32(obj.how, buffer, bufferOffset);
    // Serialize message field [sf1d]
    bufferOffset = _arraySerializer.uint32(obj.sf1d, buffer, bufferOffset, null);
    // Serialize message field [sf2d]
    bufferOffset = _arraySerializer.uint32(obj.sf2d, buffer, bufferOffset, null);
    // Serialize message field [sf3d]
    bufferOffset = _arraySerializer.uint32(obj.sf3d, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AidEPH
    let len;
    let data = new AidEPH(null);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [how]
    data.how = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sf1d]
    data.sf1d = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [sf2d]
    data.sf2d = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [sf3d]
    data.sf3d = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.sf1d.length;
    length += 4 * object.sf2d.length;
    length += 4 * object.sf3d.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/AidEPH';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '796d86b27ebfe497b3a42695f2e69e13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # AID-EPH (0x0B 0x31)
    # GPS Aiding Ephemeris Input/Output Message
    #
    # All UBX-AID messages are deprecated; use UBX-MGA messages instead
    # - SF1D0 to SF3D7 is only sent if ephemeris is available for this SV. If not, the payload may
    #   be reduced to 8 Bytes, or all bytes are set to zero, indicating that this SV Number does
    #   not have valid ephemeris for the moment. This may happen even if NAV-SVINFO and
    #   RXM-SVSI are indicating ephemeris availability as the internal data may not represent the
    #   content of an original broadcast ephemeris (or only parts thereof).
    # - SF1D0 to SF3D7 contain the 24 words following the Hand-Over Word ( HOW ) from the
    #   GPS navigation message, subframes 1 to 3. The Truncated TOW Count is not valid and
    #   cannot be used. See IS-GPS-200 for a full description of the contents of the Subframes.
    # - In SF1D0 to SF3D7, the parity bits have been removed, and the 24 bits of data are
    #   located in Bits 0 to 23. Bits 24 to 31 shall be ignored.
    # - When polled, the data contained in this message does not represent the full original
    #   ephemeris broadcast. Some fields that are irrelevant to u-blox receivers may be missing.
    #   The week number in Subframe 1 has already been modified to match the Time Of
    #   Ephemeris (TOE).
    
    uint8 CLASS_ID = 11
    uint8 MESSAGE_ID = 49
    
    uint32 svid             # SV ID for which this ephemeris data is 
                            # (Valid Range: 1 .. 32).
    uint32 how              # Hand-Over Word of first Subframe. This is
                            # required if data is sent to the receiver.
                            # 0 indicates that no Ephemeris Data is following.
    
    # Start of optional block
    uint32[] sf1d          # Subframe 1 Words 3..10 (SF1D0..SF1D7)
    uint32[] sf2d          # Subframe 2 Words 3..10 (SF2D0..SF2D7)
    uint32[] sf3d          # Subframe 3 Words 3..10 (SF3D0..SF3D7)
    # End of optional block
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AidEPH(null);
    if (msg.svid !== undefined) {
      resolved.svid = msg.svid;
    }
    else {
      resolved.svid = 0
    }

    if (msg.how !== undefined) {
      resolved.how = msg.how;
    }
    else {
      resolved.how = 0
    }

    if (msg.sf1d !== undefined) {
      resolved.sf1d = msg.sf1d;
    }
    else {
      resolved.sf1d = []
    }

    if (msg.sf2d !== undefined) {
      resolved.sf2d = msg.sf2d;
    }
    else {
      resolved.sf2d = []
    }

    if (msg.sf3d !== undefined) {
      resolved.sf3d = msg.sf3d;
    }
    else {
      resolved.sf3d = []
    }

    return resolved;
    }
};

// Constants for message
AidEPH.Constants = {
  CLASS_ID: 11,
  MESSAGE_ID: 49,
}

module.exports = AidEPH;
