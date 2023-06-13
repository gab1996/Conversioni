// Auto-generated. Do not edit!

// (in-package bulletsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Face {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vertex_inds = null;
      this.normal_inds = null;
    }
    else {
      if (initObj.hasOwnProperty('vertex_inds')) {
        this.vertex_inds = initObj.vertex_inds
      }
      else {
        this.vertex_inds = [];
      }
      if (initObj.hasOwnProperty('normal_inds')) {
        this.normal_inds = initObj.normal_inds
      }
      else {
        this.normal_inds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Face
    // Serialize message field [vertex_inds]
    bufferOffset = _arraySerializer.uint32(obj.vertex_inds, buffer, bufferOffset, null);
    // Serialize message field [normal_inds]
    bufferOffset = _arraySerializer.uint32(obj.normal_inds, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Face
    let len;
    let data = new Face(null);
    // Deserialize message field [vertex_inds]
    data.vertex_inds = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [normal_inds]
    data.normal_inds = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.vertex_inds.length;
    length += 4 * object.normal_inds.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bulletsim_msgs/Face';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5aceb6eb38fe514b1014b9171710143e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] vertex_inds
    uint32[] normal_inds
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Face(null);
    if (msg.vertex_inds !== undefined) {
      resolved.vertex_inds = msg.vertex_inds;
    }
    else {
      resolved.vertex_inds = []
    }

    if (msg.normal_inds !== undefined) {
      resolved.normal_inds = msg.normal_inds;
    }
    else {
      resolved.normal_inds = []
    }

    return resolved;
    }
};

module.exports = Face;
