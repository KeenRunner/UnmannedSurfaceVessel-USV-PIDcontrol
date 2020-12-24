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

class UpdSOS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
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
    // Serializes a message object of type UpdSOS
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint8(obj.cmd, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 3) {
      throw new Error('Unable to serialize array field reserved1 - length must be 3')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdSOS
    let len;
    let data = new UpdSOS(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/UpdSOS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdc2e32dbb00126a932ae76a6222eec4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # UPD-SOS (0x09 0x14)
    #
    # Firmware Supported on:
    # u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01
    #
    
    uint8 CLASS_ID = 9
    uint8 MESSAGE_ID = 20
    
    uint8 cmd                   # Command
    # The host can send this message in order to save part of the BBR memory in a 
    # file in flash file system. The feature is designed in order to emulate the 
    # presence of the backup battery even if it is not present; the host can issue 
    # the save on shutdown command before switching off the device supply. It is 
    # recommended to issue a GNSS stop command before, in order to keep the BBR 
    # memory content consistent.
    uint8 CMD_FLASH_BACKUP_CREATE = 0    # Create Backup File in Flash
    # The host can send this message in order to erase the backup file present in 
    # flash. It is recommended that the clear operation is issued after the host has 
    # received the notification that the memory has been restored after a reset. 
    # Alternatively the host can parse the startup string 'Restored data saved on 
    # shutdown' or poll the UBX-UPD-SOS message for getting the status.
    uint8 CMD_FLASH_BACKUP_CLEAR = 1     # Clear Backup File in Flash
    
    uint8[3] reserved1          # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdSOS(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
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
UpdSOS.Constants = {
  CLASS_ID: 9,
  MESSAGE_ID: 20,
  CMD_FLASH_BACKUP_CREATE: 0,
  CMD_FLASH_BACKUP_CLEAR: 1,
}

module.exports = UpdSOS;
