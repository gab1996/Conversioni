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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ObjectInit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.rope = null;
      this.box = null;
      this.towel_corners = null;
    }
    else {
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
      if (initObj.hasOwnProperty('towel_corners')) {
        this.towel_corners = initObj.towel_corners
      }
      else {
        this.towel_corners = new geometry_msgs.msg.PolygonStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectInit
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [rope]
    bufferOffset = Rope.serialize(obj.rope, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = Box.serialize(obj.box, buffer, bufferOffset);
    // Serialize message field [towel_corners]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.towel_corners, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectInit
    let len;
    let data = new ObjectInit(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rope]
    data.rope = Rope.deserialize(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = Box.deserialize(buffer, bufferOffset);
    // Deserialize message field [towel_corners]
    data.towel_corners = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += Rope.getMessageSize(object.rope);
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.towel_corners);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bulletsim_msgs/ObjectInit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6385cb06dcc1ad81473bbced10d4b931';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type
    Rope rope
    Box box
    geometry_msgs/PolygonStamped towel_corners
    
    ================================================================================
    MSG: bulletsim_msgs/Rope
    Header header
    geometry_msgs/Point[] nodes
    float32 radius
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
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectInit(null);
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

    if (msg.towel_corners !== undefined) {
      resolved.towel_corners = geometry_msgs.msg.PolygonStamped.Resolve(msg.towel_corners)
    }
    else {
      resolved.towel_corners = new geometry_msgs.msg.PolygonStamped()
    }

    return resolved;
    }
};

module.exports = ObjectInit;
