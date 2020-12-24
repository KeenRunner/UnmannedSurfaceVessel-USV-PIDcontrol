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

class MonHW6 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pinSel = null;
      this.pinBank = null;
      this.pinDir = null;
      this.pinVal = null;
      this.noisePerMS = null;
      this.agcCnt = null;
      this.aStatus = null;
      this.aPower = null;
      this.flags = null;
      this.reserved0 = null;
      this.usedMask = null;
      this.VP = null;
      this.jamInd = null;
      this.reserved1 = null;
      this.pinIrq = null;
      this.pullH = null;
      this.pullL = null;
    }
    else {
      if (initObj.hasOwnProperty('pinSel')) {
        this.pinSel = initObj.pinSel
      }
      else {
        this.pinSel = 0;
      }
      if (initObj.hasOwnProperty('pinBank')) {
        this.pinBank = initObj.pinBank
      }
      else {
        this.pinBank = 0;
      }
      if (initObj.hasOwnProperty('pinDir')) {
        this.pinDir = initObj.pinDir
      }
      else {
        this.pinDir = 0;
      }
      if (initObj.hasOwnProperty('pinVal')) {
        this.pinVal = initObj.pinVal
      }
      else {
        this.pinVal = 0;
      }
      if (initObj.hasOwnProperty('noisePerMS')) {
        this.noisePerMS = initObj.noisePerMS
      }
      else {
        this.noisePerMS = 0;
      }
      if (initObj.hasOwnProperty('agcCnt')) {
        this.agcCnt = initObj.agcCnt
      }
      else {
        this.agcCnt = 0;
      }
      if (initObj.hasOwnProperty('aStatus')) {
        this.aStatus = initObj.aStatus
      }
      else {
        this.aStatus = 0;
      }
      if (initObj.hasOwnProperty('aPower')) {
        this.aPower = initObj.aPower
      }
      else {
        this.aPower = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = 0;
      }
      if (initObj.hasOwnProperty('usedMask')) {
        this.usedMask = initObj.usedMask
      }
      else {
        this.usedMask = 0;
      }
      if (initObj.hasOwnProperty('VP')) {
        this.VP = initObj.VP
      }
      else {
        this.VP = new Array(25).fill(0);
      }
      if (initObj.hasOwnProperty('jamInd')) {
        this.jamInd = initObj.jamInd
      }
      else {
        this.jamInd = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('pinIrq')) {
        this.pinIrq = initObj.pinIrq
      }
      else {
        this.pinIrq = 0;
      }
      if (initObj.hasOwnProperty('pullH')) {
        this.pullH = initObj.pullH
      }
      else {
        this.pullH = 0;
      }
      if (initObj.hasOwnProperty('pullL')) {
        this.pullL = initObj.pullL
      }
      else {
        this.pullL = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonHW6
    // Serialize message field [pinSel]
    bufferOffset = _serializer.uint32(obj.pinSel, buffer, bufferOffset);
    // Serialize message field [pinBank]
    bufferOffset = _serializer.uint32(obj.pinBank, buffer, bufferOffset);
    // Serialize message field [pinDir]
    bufferOffset = _serializer.uint32(obj.pinDir, buffer, bufferOffset);
    // Serialize message field [pinVal]
    bufferOffset = _serializer.uint32(obj.pinVal, buffer, bufferOffset);
    // Serialize message field [noisePerMS]
    bufferOffset = _serializer.uint16(obj.noisePerMS, buffer, bufferOffset);
    // Serialize message field [agcCnt]
    bufferOffset = _serializer.uint16(obj.agcCnt, buffer, bufferOffset);
    // Serialize message field [aStatus]
    bufferOffset = _serializer.uint8(obj.aStatus, buffer, bufferOffset);
    // Serialize message field [aPower]
    bufferOffset = _serializer.uint8(obj.aPower, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [usedMask]
    bufferOffset = _serializer.uint32(obj.usedMask, buffer, bufferOffset);
    // Check that the constant length array field [VP] has the right length
    if (obj.VP.length !== 25) {
      throw new Error('Unable to serialize array field VP - length must be 25')
    }
    // Serialize message field [VP]
    bufferOffset = _arraySerializer.uint8(obj.VP, buffer, bufferOffset, 25);
    // Serialize message field [jamInd]
    bufferOffset = _serializer.uint8(obj.jamInd, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 2) {
      throw new Error('Unable to serialize array field reserved1 - length must be 2')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 2);
    // Serialize message field [pinIrq]
    bufferOffset = _serializer.uint32(obj.pinIrq, buffer, bufferOffset);
    // Serialize message field [pullH]
    bufferOffset = _serializer.uint32(obj.pullH, buffer, bufferOffset);
    // Serialize message field [pullL]
    bufferOffset = _serializer.uint32(obj.pullL, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonHW6
    let len;
    let data = new MonHW6(null);
    // Deserialize message field [pinSel]
    data.pinSel = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pinBank]
    data.pinBank = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pinDir]
    data.pinDir = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pinVal]
    data.pinVal = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [noisePerMS]
    data.noisePerMS = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [agcCnt]
    data.agcCnt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [aStatus]
    data.aStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [aPower]
    data.aPower = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [usedMask]
    data.usedMask = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [VP]
    data.VP = _arrayDeserializer.uint8(buffer, bufferOffset, 25)
    // Deserialize message field [jamInd]
    data.jamInd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [pinIrq]
    data.pinIrq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pullH]
    data.pullH = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pullL]
    data.pullL = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/MonHW6';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5d1657deaf0dff627f534f669249a58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MON-HW (0x0A 0x09)
    # Hardware Status
    # Firmware 6
    #
    # Status of different aspect of the hardware, such as Antenna, PIO/Peripheral 
    # Pins, Noise Level, Automatic Gain Control (AGC)
    #
    # WARNING: this message is a different length than the MonHW message for
    # firmware version 7 & 8
    
    uint8 CLASS_ID = 10
    uint8 MESSAGE_ID = 9
    
    uint32 pinSel                 # Mask of Pins Set as Peripheral/PIO
    uint32 pinBank                # Mask of Pins Set as Bank A/B
    uint32 pinDir                 # Mask of Pins Set as Input/Output
    uint32 pinVal                 # Mask of Pins Value Low/High
    uint16 noisePerMS             # Noise Level as measured by the GPS Core
    uint16 agcCnt                 # AGC Monitor (counts SIGHI xor SIGLO, 
                                  # range 0 to 8191)
    uint8 aStatus                 # Status of the Antenna Supervisor State Machine 
    uint8 A_STATUS_INIT = 0
    uint8 A_STATUS_UNKNOWN = 1
    uint8 A_STATUS_OK = 2
    uint8 A_STATUS_SHORT = 3
    uint8 A_STATUS_OPEN = 4
    
    uint8 aPower                  # Current PowerStatus of Antenna 
    uint8 A_POWER_OFF = 0 
    uint8 A_POWER_ON = 1
    uint8 A_POWER_UNKNOWN = 2
    
    uint8 flags                   # Flags:
    uint8 FLAGS_RTC_CALIB = 1            # RTC is calibrated
    uint8 FLAGS_SAFE_BOOT =  2           # Safe boot mode (0 = inactive, 1 = active)
    uint8 FLAGS_JAMMING_STATE_MASK = 12  # output from Jamming/Interference Monitor: 
    uint8 JAMMING_STATE_UNKNOWN_OR_DISABLED = 0   # unknown or feature disabled
    uint8 JAMMING_STATE_OK = 4                    # ok - no significant jamming
    uint8 JAMMING_STATE_WARNING = 8               # interference visible but fix OK
    uint8 JAMMING_STATE_CRITICAL = 12             # interference visible and no fix
    uint8 FLAGS_XTAL_ABSENT =  16        # RTC XTAL is absent
                                         # (not supported in protocol versions < 18)
    uint8 reserved0               # Reserved
    uint32 usedMask               # Mask of Pins that are used by the Virtual Pin 
                                  # Manager
    uint8[25] VP                  # Array of Pin Mappings for each of the 25  
                                  # Physical Pins
    uint8 jamInd                  # CW Jamming indicator, scaled:
    uint8 JAM_IND_NONE = 0          # No CW Jamming
    uint8 JAM_IND_STRONG = 255      # Strong CW Jamming    
    
    uint8[2] reserved1            # Reserved
    
    uint32 pinIrq                 # Mask of Pins Value using the PIO Irq
    uint32 pullH                  # Mask of Pins Value using the PIO Pull High 
                                  # Resistor
    uint32 pullL                  # Mask of Pins Value using the PIO Pull Low 
                                  # Resistor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonHW6(null);
    if (msg.pinSel !== undefined) {
      resolved.pinSel = msg.pinSel;
    }
    else {
      resolved.pinSel = 0
    }

    if (msg.pinBank !== undefined) {
      resolved.pinBank = msg.pinBank;
    }
    else {
      resolved.pinBank = 0
    }

    if (msg.pinDir !== undefined) {
      resolved.pinDir = msg.pinDir;
    }
    else {
      resolved.pinDir = 0
    }

    if (msg.pinVal !== undefined) {
      resolved.pinVal = msg.pinVal;
    }
    else {
      resolved.pinVal = 0
    }

    if (msg.noisePerMS !== undefined) {
      resolved.noisePerMS = msg.noisePerMS;
    }
    else {
      resolved.noisePerMS = 0
    }

    if (msg.agcCnt !== undefined) {
      resolved.agcCnt = msg.agcCnt;
    }
    else {
      resolved.agcCnt = 0
    }

    if (msg.aStatus !== undefined) {
      resolved.aStatus = msg.aStatus;
    }
    else {
      resolved.aStatus = 0
    }

    if (msg.aPower !== undefined) {
      resolved.aPower = msg.aPower;
    }
    else {
      resolved.aPower = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = 0
    }

    if (msg.usedMask !== undefined) {
      resolved.usedMask = msg.usedMask;
    }
    else {
      resolved.usedMask = 0
    }

    if (msg.VP !== undefined) {
      resolved.VP = msg.VP;
    }
    else {
      resolved.VP = new Array(25).fill(0)
    }

    if (msg.jamInd !== undefined) {
      resolved.jamInd = msg.jamInd;
    }
    else {
      resolved.jamInd = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(2).fill(0)
    }

    if (msg.pinIrq !== undefined) {
      resolved.pinIrq = msg.pinIrq;
    }
    else {
      resolved.pinIrq = 0
    }

    if (msg.pullH !== undefined) {
      resolved.pullH = msg.pullH;
    }
    else {
      resolved.pullH = 0
    }

    if (msg.pullL !== undefined) {
      resolved.pullL = msg.pullL;
    }
    else {
      resolved.pullL = 0
    }

    return resolved;
    }
};

// Constants for message
MonHW6.Constants = {
  CLASS_ID: 10,
  MESSAGE_ID: 9,
  A_STATUS_INIT: 0,
  A_STATUS_UNKNOWN: 1,
  A_STATUS_OK: 2,
  A_STATUS_SHORT: 3,
  A_STATUS_OPEN: 4,
  A_POWER_OFF: 0,
  A_POWER_ON: 1,
  A_POWER_UNKNOWN: 2,
  FLAGS_RTC_CALIB: 1,
  FLAGS_SAFE_BOOT: 2,
  FLAGS_JAMMING_STATE_MASK: 12,
  JAMMING_STATE_UNKNOWN_OR_DISABLED: 0,
  JAMMING_STATE_OK: 4,
  JAMMING_STATE_WARNING: 8,
  JAMMING_STATE_CRITICAL: 12,
  FLAGS_XTAL_ABSENT: 16,
  JAM_IND_NONE: 0,
  JAM_IND_STRONG: 255,
}

module.exports = MonHW6;
