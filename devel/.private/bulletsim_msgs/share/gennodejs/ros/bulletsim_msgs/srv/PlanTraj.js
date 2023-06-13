// Auto-generated. Do not edit!

// (in-package bulletsim_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlanTrajRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.side = null;
      this.start_joints = null;
      this.end_joints = null;
      this.joint_states = null;
    }
    else {
      if (initObj.hasOwnProperty('side')) {
        this.side = initObj.side
      }
      else {
        this.side = '';
      }
      if (initObj.hasOwnProperty('start_joints')) {
        this.start_joints = initObj.start_joints
      }
      else {
        this.start_joints = [];
      }
      if (initObj.hasOwnProperty('end_joints')) {
        this.end_joints = initObj.end_joints
      }
      else {
        this.end_joints = [];
      }
      if (initObj.hasOwnProperty('joint_states')) {
        this.joint_states = initObj.joint_states
      }
      else {
        this.joint_states = new sensor_msgs.msg.JointState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanTrajRequest
    // Serialize message field [side]
    bufferOffset = _serializer.string(obj.side, buffer, bufferOffset);
    // Serialize message field [start_joints]
    bufferOffset = _arraySerializer.float64(obj.start_joints, buffer, bufferOffset, null);
    // Serialize message field [end_joints]
    bufferOffset = _arraySerializer.float64(obj.end_joints, buffer, bufferOffset, null);
    // Serialize message field [joint_states]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.joint_states, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanTrajRequest
    let len;
    let data = new PlanTrajRequest(null);
    // Deserialize message field [side]
    data.side = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_joints]
    data.start_joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [end_joints]
    data.end_joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_states]
    data.joint_states = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.side);
    length += 8 * object.start_joints.length;
    length += 8 * object.end_joints.length;
    length += sensor_msgs.msg.JointState.getMessageSize(object.joint_states);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bulletsim_msgs/PlanTrajRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b2b64c83dc990158ae6e041531366b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string side
    float64[] start_joints
    float64[] end_joints
    sensor_msgs/JointState joint_states
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanTrajRequest(null);
    if (msg.side !== undefined) {
      resolved.side = msg.side;
    }
    else {
      resolved.side = ''
    }

    if (msg.start_joints !== undefined) {
      resolved.start_joints = msg.start_joints;
    }
    else {
      resolved.start_joints = []
    }

    if (msg.end_joints !== undefined) {
      resolved.end_joints = msg.end_joints;
    }
    else {
      resolved.end_joints = []
    }

    if (msg.joint_states !== undefined) {
      resolved.joint_states = sensor_msgs.msg.JointState.Resolve(msg.joint_states)
    }
    else {
      resolved.joint_states = new sensor_msgs.msg.JointState()
    }

    return resolved;
    }
};

class PlanTrajResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanTrajResponse
    // Serialize message field [trajectory]
    bufferOffset = _arraySerializer.float64(obj.trajectory, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanTrajResponse
    let len;
    let data = new PlanTrajResponse(null);
    // Deserialize message field [trajectory]
    data.trajectory = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.trajectory.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bulletsim_msgs/PlanTrajResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50478ba000e46f50bcf36395a2af115e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] trajectory
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanTrajResponse(null);
    if (msg.trajectory !== undefined) {
      resolved.trajectory = msg.trajectory;
    }
    else {
      resolved.trajectory = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PlanTrajRequest,
  Response: PlanTrajResponse,
  md5sum() { return '99d192cef3d7416d1c568b72205fe94b'; },
  datatype() { return 'bulletsim_msgs/PlanTraj'; }
};
