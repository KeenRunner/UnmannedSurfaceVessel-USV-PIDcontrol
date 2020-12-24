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

class CfgUSB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vendorID = null;
      this.productID = null;
      this.reserved1 = null;
      this.reserved2 = null;
      this.powerConsumption = null;
      this.flags = null;
      this.vendorString = null;
      this.productString = null;
      this.serialNumber = null;
    }
    else {
      if (initObj.hasOwnProperty('vendorID')) {
        this.vendorID = initObj.vendorID
      }
      else {
        this.vendorID = 0;
      }
      if (initObj.hasOwnProperty('productID')) {
        this.productID = initObj.productID
      }
      else {
        this.productID = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('powerConsumption')) {
        this.powerConsumption = initObj.powerConsumption
      }
      else {
        this.powerConsumption = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('vendorString')) {
        this.vendorString = initObj.vendorString
      }
      else {
        this.vendorString = new Array(32).fill(0);
      }
      if (initObj.hasOwnProperty('productString')) {
        this.productString = initObj.productString
      }
      else {
        this.productString = new Array(32).fill(0);
      }
      if (initObj.hasOwnProperty('serialNumber')) {
        this.serialNumber = initObj.serialNumber
      }
      else {
        this.serialNumber = new Array(32).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgUSB
    // Serialize message field [vendorID]
    bufferOffset = _serializer.uint16(obj.vendorID, buffer, bufferOffset);
    // Serialize message field [productID]
    bufferOffset = _serializer.uint16(obj.productID, buffer, bufferOffset);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 2) {
      throw new Error('Unable to serialize array field reserved1 - length must be 2')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint8(obj.reserved1, buffer, bufferOffset, 2);
    // Check that the constant length array field [reserved2] has the right length
    if (obj.reserved2.length !== 2) {
      throw new Error('Unable to serialize array field reserved2 - length must be 2')
    }
    // Serialize message field [reserved2]
    bufferOffset = _arraySerializer.uint8(obj.reserved2, buffer, bufferOffset, 2);
    // Serialize message field [powerConsumption]
    bufferOffset = _serializer.uint16(obj.powerConsumption, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Check that the constant length array field [vendorString] has the right length
    if (obj.vendorString.length !== 32) {
      throw new Error('Unable to serialize array field vendorString - length must be 32')
    }
    // Serialize message field [vendorString]
    bufferOffset = _arraySerializer.int8(obj.vendorString, buffer, bufferOffset, 32);
    // Check that the constant length array field [productString] has the right length
    if (obj.productString.length !== 32) {
      throw new Error('Unable to serialize array field productString - length must be 32')
    }
    // Serialize message field [productString]
    bufferOffset = _arraySerializer.int8(obj.productString, buffer, bufferOffset, 32);
    // Check that the constant length array field [serialNumber] has the right length
    if (obj.serialNumber.length !== 32) {
      throw new Error('Unable to serialize array field serialNumber - length must be 32')
    }
    // Serialize message field [serialNumber]
    bufferOffset = _arraySerializer.int8(obj.serialNumber, buffer, bufferOffset, 32);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgUSB
    let len;
    let data = new CfgUSB(null);
    // Deserialize message field [vendorID]
    data.vendorID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [productID]
    data.productID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [reserved2]
    data.reserved2 = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [powerConsumption]
    data.powerConsumption = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vendorString]
    data.vendorString = _arrayDeserializer.int8(buffer, bufferOffset, 32)
    // Deserialize message field [productString]
    data.productString = _arrayDeserializer.int8(buffer, bufferOffset, 32)
    // Deserialize message field [serialNumber]
    data.serialNumber = _arrayDeserializer.int8(buffer, bufferOffset, 32)
    return data;
  }

  static getMessageSize(object) {
    return 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgUSB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1797a4ed330d6193bc42a443c001b03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # UBX-CFG-USB (0x06 0x1B)
    # USB Configuration
    #
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 27 
    
    uint16 vendorID             # Only set to registered Vendor IDs.                     
                                # Changing this field requires special Host drivers.
    
    uint16 productID            # Product ID. Changing this field requires special  
                                # Host drivers.
    
    uint8[2] reserved1          # Reserved
    uint8[2] reserved2          # Reserved
    
    uint16 powerConsumption     # Power consumed by the device [mA]
    
    uint16 flags                # various configuration flags (see graphic below)
    uint16 FLAGS_RE_ENUM = 0       # force re-enumeration
    uint16 FLAGS_POWER_MODE = 2    # self-powered (1), bus-powered (0)
    
    int8[32] vendorString      # String containing the vendor name. 
                               # 32 ASCII bytes including 0-termination.
    int8[32] productString     # String containing the product name. 
                               # 32 ASCII bytes including 0-termination.
    int8[32] serialNumber      # String containing the serial number. 
                               # 32 ASCII bytes including 0-termination. 
                               # Changing the String fields requires special Host 
                               # drivers.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgUSB(null);
    if (msg.vendorID !== undefined) {
      resolved.vendorID = msg.vendorID;
    }
    else {
      resolved.vendorID = 0
    }

    if (msg.productID !== undefined) {
      resolved.productID = msg.productID;
    }
    else {
      resolved.productID = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(2).fill(0)
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = new Array(2).fill(0)
    }

    if (msg.powerConsumption !== undefined) {
      resolved.powerConsumption = msg.powerConsumption;
    }
    else {
      resolved.powerConsumption = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.vendorString !== undefined) {
      resolved.vendorString = msg.vendorString;
    }
    else {
      resolved.vendorString = new Array(32).fill(0)
    }

    if (msg.productString !== undefined) {
      resolved.productString = msg.productString;
    }
    else {
      resolved.productString = new Array(32).fill(0)
    }

    if (msg.serialNumber !== undefined) {
      resolved.serialNumber = msg.serialNumber;
    }
    else {
      resolved.serialNumber = new Array(32).fill(0)
    }

    return resolved;
    }
};

// Constants for message
CfgUSB.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 27,
  FLAGS_RE_ENUM: 0,
  FLAGS_POWER_MODE: 2,
}

module.exports = CfgUSB;
