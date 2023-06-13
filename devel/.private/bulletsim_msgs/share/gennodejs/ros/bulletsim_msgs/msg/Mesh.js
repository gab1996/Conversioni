// Auto-generated. Do not edit!

// (in-package bulletsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Face = require('./Face.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Mesh {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vertices = null;
      this.normals = null;
      this.faces = null;
    }
    else {
      if (initObj.hasOwnProperty('vertices')) {
        this.vertices = initObj.vertices
      }
      else {
        this.vertices = [];
      }
      if (initObj.hasOwnProperty('normals')) {
        this.normals = initObj.normals
      }
      else {
        this.normals = [];
      }
      if (initObj.hasOwnProperty('faces')) {
        this.faces = initObj.faces
      }
      else {
        this.faces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mesh
    // Serialize message field [vertices]
    // Serialize the length for message field [vertices]
    bufferOffset = _serializer.uint32(obj.vertices.length, buffer, bufferOffset);
    obj.vertices.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [normals]
    // Serialize the length for message field [normals]
    bufferOffset = _serializer.uint32(obj.normals.length, buffer, bufferOffset);
    obj.normals.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [faces]
    // Serialize the length for message field [faces]
    bufferOffset = _serializer.uint32(obj.faces.length, buffer, bufferOffset);
    obj.faces.forEach((val) => {
      bufferOffset = Face.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mesh
    let len;
    let data = new Mesh(null);
    // Deserialize message field [vertices]
    // Deserialize array length for message field [vertices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vertices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vertices[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [normals]
    // Deserialize array length for message field [normals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.normals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.normals[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [faces]
    // Deserialize array length for message field [faces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.faces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.faces[i] = Face.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.vertices.length;
    length += 24 * object.normals.length;
    object.faces.forEach((val) => {
      length += Face.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bulletsim_msgs/Mesh';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '830dcdd998fe31e368add143b5ab2580';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] vertices
    geometry_msgs/Point[] normals
    Face[] faces
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: bulletsim_msgs/Face
    uint32[] vertex_inds
    uint32[] normal_inds
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mesh(null);
    if (msg.vertices !== undefined) {
      resolved.vertices = new Array(msg.vertices.length);
      for (let i = 0; i < resolved.vertices.length; ++i) {
        resolved.vertices[i] = geometry_msgs.msg.Point.Resolve(msg.vertices[i]);
      }
    }
    else {
      resolved.vertices = []
    }

    if (msg.normals !== undefined) {
      resolved.normals = new Array(msg.normals.length);
      for (let i = 0; i < resolved.normals.length; ++i) {
        resolved.normals[i] = geometry_msgs.msg.Point.Resolve(msg.normals[i]);
      }
    }
    else {
      resolved.normals = []
    }

    if (msg.faces !== undefined) {
      resolved.faces = new Array(msg.faces.length);
      for (let i = 0; i < resolved.faces.length; ++i) {
        resolved.faces[i] = Face.Resolve(msg.faces[i]);
      }
    }
    else {
      resolved.faces = []
    }

    return resolved;
    }
};

module.exports = Mesh;
