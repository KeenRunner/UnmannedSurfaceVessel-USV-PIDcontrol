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

class RxmSFRB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chn = null;
      this.svid = null;
      this.dwrd = null;
    }
    else {
      if (initObj.hasOwnProperty('chn')) {
        this.chn = initObj.chn
      }
      else {
        this.chn = 0;
      }
      if (initObj.hasOwnProperty('svid')) {
        this.svid = initObj.svid
      }
      else {
        this.svid = 0;
      }
      if (initObj.hasOwnProperty('dwrd')) {
        this.dwrd = initObj.dwrd
      }
      else {
        this.dwrd = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxmSFRB
    // Serialize message field [chn]
    bufferOffset = _serializer.uint8(obj.chn, buffer, bufferOffset);
    // Serialize message field [svid]
    bufferOffset = _serializer.uint8(obj.svid, buffer, bufferOffset);
    // Check that the constant length array field [dwrd] has the right length
    if (obj.dwrd.length !== 10) {
      throw new Error('Unable to serialize array field dwrd - length must be 10')
    }
    // Serialize message field [dwrd]
    bufferOffset = _arraySerializer.uint32(obj.dwrd, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxmSFRB
    let len;
    let data = new RxmSFRB(null);
    // Deserialize message field [chn]
    data.chn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svid]
    data.svid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dwrd]
    data.dwrd = _arrayDeserializer.uint32(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/RxmSFRB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eec72635c768d0528138f40de7442203';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RXM-SFRB (0x02 0x11)
    # Subframe Buffer
    #
    # The content of one single subframe buffer
    # For GPS satellites, the 10 dwrd values contain the parity checked subframe 
    # data for 10 Words. Each dwrd has 24 Bits with valid data (Bits 23 to 0). The 
    # remaining 8 bits (31 to 24) have an undefined value. The direction within the 
    # Word is that the higher order bits are received from the SV first. Example: 
    # The Preamble can be found in dwrd[0], at bit position 23 down to 16. For more 
    # details on the data format please refer to the ICD-GPS-200C
    # Interface document.
    # For SBAS satellites, the 250 Bit message block can be found in dwrd[0] to 
    # dwrd[6] for the first 224 bits. The remaining 26 bits are in dwrd[7], whereas
    # Bits 25 and 24 are the last two data bits, and Bits 23 down to 0 are the
    # parity bits. For more information on SBAS data format, please refer to 
    # RTCA/DO-229C (MOPS), Appendix A.
    #
    
    uint8 CLASS_ID = 2
    uint8 MESSAGE_ID = 17
    
    uint8 chn               # Channel Number
    uint8 svid              # ID of Satellite transmitting Subframe
    uint32[10] dwrd         # Words of Data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RxmSFRB(null);
    if (msg.chn !== undefined) {
      resolved.chn = msg.chn;
    }
    else {
      resolved.chn = 0
    }

    if (msg.svid !== undefined) {
      resolved.svid = msg.svid;
    }
    else {
      resolved.svid = 0
    }

    if (msg.dwrd !== undefined) {
      resolved.dwrd = msg.dwrd;
    }
    else {
      resolved.dwrd = new Array(10).fill(0)
    }

    return resolved;
    }
};

// Constants for message
RxmSFRB.Constants = {
  CLASS_ID: 2,
  MESSAGE_ID: 17,
}

module.exports = RxmSFRB;
