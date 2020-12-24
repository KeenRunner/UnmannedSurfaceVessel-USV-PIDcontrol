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

class CfgDAT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.datumNum = null;
      this.datumName = null;
      this.majA = null;
      this.flat = null;
      this.dX = null;
      this.dY = null;
      this.dZ = null;
      this.rotX = null;
      this.rotY = null;
      this.rotZ = null;
      this.scale = null;
    }
    else {
      if (initObj.hasOwnProperty('datumNum')) {
        this.datumNum = initObj.datumNum
      }
      else {
        this.datumNum = 0;
      }
      if (initObj.hasOwnProperty('datumName')) {
        this.datumName = initObj.datumName
      }
      else {
        this.datumName = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('majA')) {
        this.majA = initObj.majA
      }
      else {
        this.majA = 0.0;
      }
      if (initObj.hasOwnProperty('flat')) {
        this.flat = initObj.flat
      }
      else {
        this.flat = 0.0;
      }
      if (initObj.hasOwnProperty('dX')) {
        this.dX = initObj.dX
      }
      else {
        this.dX = 0.0;
      }
      if (initObj.hasOwnProperty('dY')) {
        this.dY = initObj.dY
      }
      else {
        this.dY = 0.0;
      }
      if (initObj.hasOwnProperty('dZ')) {
        this.dZ = initObj.dZ
      }
      else {
        this.dZ = 0.0;
      }
      if (initObj.hasOwnProperty('rotX')) {
        this.rotX = initObj.rotX
      }
      else {
        this.rotX = 0.0;
      }
      if (initObj.hasOwnProperty('rotY')) {
        this.rotY = initObj.rotY
      }
      else {
        this.rotY = 0.0;
      }
      if (initObj.hasOwnProperty('rotZ')) {
        this.rotZ = initObj.rotZ
      }
      else {
        this.rotZ = 0.0;
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CfgDAT
    // Serialize message field [datumNum]
    bufferOffset = _serializer.uint16(obj.datumNum, buffer, bufferOffset);
    // Check that the constant length array field [datumName] has the right length
    if (obj.datumName.length !== 6) {
      throw new Error('Unable to serialize array field datumName - length must be 6')
    }
    // Serialize message field [datumName]
    bufferOffset = _arraySerializer.uint8(obj.datumName, buffer, bufferOffset, 6);
    // Serialize message field [majA]
    bufferOffset = _serializer.float64(obj.majA, buffer, bufferOffset);
    // Serialize message field [flat]
    bufferOffset = _serializer.float64(obj.flat, buffer, bufferOffset);
    // Serialize message field [dX]
    bufferOffset = _serializer.float32(obj.dX, buffer, bufferOffset);
    // Serialize message field [dY]
    bufferOffset = _serializer.float32(obj.dY, buffer, bufferOffset);
    // Serialize message field [dZ]
    bufferOffset = _serializer.float32(obj.dZ, buffer, bufferOffset);
    // Serialize message field [rotX]
    bufferOffset = _serializer.float32(obj.rotX, buffer, bufferOffset);
    // Serialize message field [rotY]
    bufferOffset = _serializer.float32(obj.rotY, buffer, bufferOffset);
    // Serialize message field [rotZ]
    bufferOffset = _serializer.float32(obj.rotZ, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float32(obj.scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CfgDAT
    let len;
    let data = new CfgDAT(null);
    // Deserialize message field [datumNum]
    data.datumNum = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [datumName]
    data.datumName = _arrayDeserializer.uint8(buffer, bufferOffset, 6)
    // Deserialize message field [majA]
    data.majA = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flat]
    data.flat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dX]
    data.dX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dY]
    data.dY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dZ]
    data.dZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotX]
    data.rotX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotY]
    data.rotY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotZ]
    data.rotZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ublox_msgs/CfgDAT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05d7a26d8a386fd3054953454a03b113';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CFG-DAT (0x06 0x06)
    # Set User-defined Datum
    # 
    # For more information see the description of Geodetic Systems and Frames.
    # 
    
    uint8 CLASS_ID = 6
    uint8 MESSAGE_ID = 6
    
    # Only for GET, these values are not used for write
    uint16 datumNum       # Datum Number: 0 = WGS84, 0xFFFF = user-defined
    uint16 DATUM_NUM_WGS84 = 0
    uint16 DATUM_NUM_USER = 65535
    
    uint8[6] datumName    # ASCII String: WGS84 or USER
    
    float64 majA          # Semi-major Axis [m]
                          # accepted range = 6,300,000.0 to 6,500,000.0 meters 
    float64 flat          # 1.0 / Flattening 
                          # accepted range is 0.0 to 500.0
    
    float32 dX            # X Axis shift at the origin [m]
                          # accepted range is +/- 5000.0 meters 
    float32 dY            # Y Axis shift at the origin [m]
                          # accepted range is +/- 5000.0 meters 
    float32 dZ            # Z Axis shift at the origin [m]
                          # accepted range is +/- 5000.0 meters 
    
    float32 rotX          # Rotation about the X Axis [s]
                          # accepted range is +/- 20.0 milli-arc seconds 
    float32 rotY          # Rotation about the Y Axis [s]
                          # accepted range is +/- 20.0 milli-arc seconds 
    float32 rotZ          # Rotation about the Z Axis [s]
                          # accepted range is +/- 20.0 milli-arc seconds
    
    float32 scale         # Scale change [ppm]
                          # accepted range is 0.0 to 50.0 parts per million
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CfgDAT(null);
    if (msg.datumNum !== undefined) {
      resolved.datumNum = msg.datumNum;
    }
    else {
      resolved.datumNum = 0
    }

    if (msg.datumName !== undefined) {
      resolved.datumName = msg.datumName;
    }
    else {
      resolved.datumName = new Array(6).fill(0)
    }

    if (msg.majA !== undefined) {
      resolved.majA = msg.majA;
    }
    else {
      resolved.majA = 0.0
    }

    if (msg.flat !== undefined) {
      resolved.flat = msg.flat;
    }
    else {
      resolved.flat = 0.0
    }

    if (msg.dX !== undefined) {
      resolved.dX = msg.dX;
    }
    else {
      resolved.dX = 0.0
    }

    if (msg.dY !== undefined) {
      resolved.dY = msg.dY;
    }
    else {
      resolved.dY = 0.0
    }

    if (msg.dZ !== undefined) {
      resolved.dZ = msg.dZ;
    }
    else {
      resolved.dZ = 0.0
    }

    if (msg.rotX !== undefined) {
      resolved.rotX = msg.rotX;
    }
    else {
      resolved.rotX = 0.0
    }

    if (msg.rotY !== undefined) {
      resolved.rotY = msg.rotY;
    }
    else {
      resolved.rotY = 0.0
    }

    if (msg.rotZ !== undefined) {
      resolved.rotZ = msg.rotZ;
    }
    else {
      resolved.rotZ = 0.0
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

    return resolved;
    }
};

// Constants for message
CfgDAT.Constants = {
  CLASS_ID: 6,
  MESSAGE_ID: 6,
  DATUM_NUM_WGS84: 0,
  DATUM_NUM_USER: 65535,
}

module.exports = CfgDAT;
