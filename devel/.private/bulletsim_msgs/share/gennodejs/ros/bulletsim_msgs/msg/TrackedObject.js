// Auto-generated. Do not edit!

// (in-package bulletsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rope = require('./Rope.js');
let Box = require('./Box.js');
let Mesh = require('./Mesh.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.rope = null;
      this.box = null;
      this.mesh = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('rope')) {
        this.rope = initObj.rope
      }
      else {
        this.rope = new Rope();
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = new Box();
      }
      if (initObj.hasOwnProperty('mesh')) {
        this.mesh = initObj.mesh
      }
      else {
        this.mesh = new Mesh();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [rope]
    bufferOffset = Rope.serialize(obj.rope, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = Box.serialize(obj.box, buffer, bufferOffset);
    // Serialize message field [mesh]
    bufferOffset = Mesh.serialize(obj.mesh, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObject
    let len;
    let data = new TrackedObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rope]
    data.rope = Rope.deserialize(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = Box.deserialize(buffer, bufferOffset);
    // Deserialize message field [mesh]
    data.mesh = Mesh.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.type);
    length += Rope.getMessageSize(object.rope);
    length += Mesh.getMessageSize(object.mesh);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bulletsim_msgs/TrackedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd87acde2b5badaac900f58278c67de6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string type
    Rope rope
    Box box
    Mesh mesh
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: bulletsim_msgs/Rope
    Header header
    geometry_msgs/Point[] nodes
    float32 radius
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: bulletsim_msgs/Box
    geometry_msgs/Point center
    geometry_msgs/Point extents
    float32 angle
    
    ================================================================================
    MSG: bulletsim_msgs/Mesh
    geometry_msgs/Point[] vertices
    geometry_msgs/Point[] normals
    Face[] faces
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
    const resolved = new TrackedObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.rope !== undefined) {
      resolved.rope = Rope.Resolve(msg.rope)
    }
    else {
      resolved.rope = new Rope()
    }

    if (msg.box !== undefined) {
      resolved.box = Box.Resolve(msg.box)
    }
    else {
      resolved.box = new Box()
    }

    if (msg.mesh !== undefined) {
      resolved.mesh = Mesh.Resolve(msg.mesh)
    }
    else {
      resolved.mesh = new Mesh()
    }

    return resolved;
    }
};

module.exports = TrackedObject;
