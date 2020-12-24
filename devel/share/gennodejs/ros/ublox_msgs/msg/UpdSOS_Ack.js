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

class UpdSOS_Ack {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.reserved0 = null;
      this.response = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = 0;
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
    // Serializes a message object of type UpdSOS_Ack
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint8(obj.cmd, buffer, bufferOffset);
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 3) {
      throw new Error('Unable to serialize array field reserved0 - length must be 3')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint8(obj.reserved0, buffer, bufferOffset, 3);
    // Serialize message field [response]
    bufferOffset = _serializer.uint8(obj.response, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 3) {
      throw new Error('Unable to serialize array field reserved1 - length must be 3')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdSOS_Ack
    let len;
    let data = new UpdSOS_Ack(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [response]
    data.response = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/UpdSOS_Ack';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '028d9bc0701daf71dcd1ad8cef68594c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # UPD-SOS (0x09 0x14)
    #
    # Backup File Creation Acknowledge / System Restored from Backup
    # 
    # Firmware Supported on:
    # u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01
    #
    
    uint8 CLASS_ID = 9
    uint8 MESSAGE_ID = 20
    
    uint8 cmd                   # Command
    uint8 CMD_BACKUP_CREATE_ACK = 2   # Backup File Creation Acknowledge
                                      # The message is sent from the device as 
                                      # confirmation of creation of a backup file 
                                      # in flash. The host can safely shut down the 
                                      # device after received this message.
    uint8 CMD_SYSTEM_RESTORED = 3     # System Restored from Backup
                                      # The message is sent from the device to 
                                      # notify the host the BBR has been restored 
                                      # from a backup file in flash. The host 
                                      # should clear the backup file after 
                                      # receiving this message. If the UBX-UPD-SOS 
                                      # message is polled, this message will be 
                                      # present.
    
    uint8[3] reserved0          # Reserved
    
    uint8 response                                  # Response:
    uint8 BACKUP_CREATE_NACK = 0                      # Not acknowledged
    uint8 BACKUP_CREATE_ACK = 1                       # Acknowledged
    uint8 SYSTEM_RESTORED_RESPONSE_UNKNOWN = 0        # Unknown
    uint8 SYSTEM_RESTORED_RESPONSE_FAILED = 1         # Failed restoring from backup 
                                                      # file
    uint8 SYSTEM_RESTORED_RESPONSE_RESTORED = 2       # Restored from backup file
    uint8 SYSTEM_RESTORED_RESPONSE_NOT_RESTORED = 3   # Not restored (no backup)
    
    uint8[3] reserved1          # Reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdSOS_Ack(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(3).fill(0)
    }

    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = 0
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
UpdSOS_Ack.Constants = {
  CLASS_ID: 9,
  MESSAGE_ID: 20,
  CMD_BACKUP_CREATE_ACK: 2,
  CMD_SYSTEM_RESTORED: 3,
  BACKUP_CREATE_NACK: 0,
  BACKUP_CREATE_ACK: 1,
  SYSTEM_RESTORED_RESPONSE_UNKNOWN: 0,
  SYSTEM_RESTORED_RESPONSE_FAILED: 1,
  SYSTEM_RESTORED_RESPONSE_RESTORED: 2,
  SYSTEM_RESTORED_RESPONSE_NOT_RESTORED: 3,
}

module.exports = UpdSOS_Ack;
