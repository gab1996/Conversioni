# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from bulletsim_msgs/InitializationRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg
import std_msgs.msg

class InitializationRequest(genpy.Message):
  _md5sum = "96cec5374164b3b3d1d7ef5d7628a7ed"
  _type = "bulletsim_msgs/InitializationRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """sensor_msgs/PointCloud2 cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the "fields" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
"""
  __slots__ = ['cloud']
  _slot_types = ['sensor_msgs/PointCloud2']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cloud

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InitializationRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cloud is None:
        self.cloud = sensor_msgs.msg.PointCloud2()
    else:
      self.cloud = sensor_msgs.msg.PointCloud2()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.cloud.header.seq, _x.cloud.header.stamp.secs, _x.cloud.header.stamp.nsecs))
      _x = self.cloud.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.cloud.height, _x.cloud.width))
      length = len(self.cloud.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.cloud.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.cloud.is_bigendian, _x.cloud.point_step, _x.cloud.row_step))
      _x = self.cloud.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.cloud.is_dense
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cloud is None:
        self.cloud = sensor_msgs.msg.PointCloud2()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cloud.header.seq, _x.cloud.header.stamp.secs, _x.cloud.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cloud.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cloud.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.cloud.height, _x.cloud.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cloud.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.cloud.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.cloud.is_bigendian, _x.cloud.point_step, _x.cloud.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.cloud.is_bigendian = bool(self.cloud.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cloud.data = str[start:end]
      start = end
      end += 1
      (self.cloud.is_dense,) = _get_struct_B().unpack(str[start:end])
      self.cloud.is_dense = bool(self.cloud.is_dense)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.cloud.header.seq, _x.cloud.header.stamp.secs, _x.cloud.header.stamp.nsecs))
      _x = self.cloud.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.cloud.height, _x.cloud.width))
      length = len(self.cloud.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.cloud.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.cloud.is_bigendian, _x.cloud.point_step, _x.cloud.row_step))
      _x = self.cloud.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.cloud.is_dense
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cloud is None:
        self.cloud = sensor_msgs.msg.PointCloud2()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cloud.header.seq, _x.cloud.header.stamp.secs, _x.cloud.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cloud.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cloud.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.cloud.height, _x.cloud.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cloud.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.cloud.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.cloud.is_bigendian, _x.cloud.point_step, _x.cloud.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.cloud.is_bigendian = bool(self.cloud.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.cloud.data = str[start:end]
      start = end
      end += 1
      (self.cloud.is_dense,) = _get_struct_B().unpack(str[start:end])
      self.cloud.is_dense = bool(self.cloud.is_dense)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_B2I = None
def _get_struct_B2I():
    global _struct_B2I
    if _struct_B2I is None:
        _struct_B2I = struct.Struct("<B2I")
    return _struct_B2I
_struct_IBI = None
def _get_struct_IBI():
    global _struct_IBI
    if _struct_IBI is None:
        _struct_IBI = struct.Struct("<IBI")
    return _struct_IBI
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from bulletsim_msgs/InitializationResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import bulletsim_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class InitializationResponse(genpy.Message):
  _md5sum = "ad576ba0aae0e7f210a9db85d4d9e15d"
  _type = "bulletsim_msgs/InitializationResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """ObjectInit objectInit

================================================================================
MSG: bulletsim_msgs/ObjectInit
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
float32 z"""
  __slots__ = ['objectInit']
  _slot_types = ['bulletsim_msgs/ObjectInit']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       objectInit

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InitializationResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.objectInit is None:
        self.objectInit = bulletsim_msgs.msg.ObjectInit()
    else:
      self.objectInit = bulletsim_msgs.msg.ObjectInit()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.objectInit.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.objectInit.rope.header.seq, _x.objectInit.rope.header.stamp.secs, _x.objectInit.rope.header.stamp.nsecs))
      _x = self.objectInit.rope.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.objectInit.rope.nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.objectInit.rope.nodes:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_f6df3I().pack(_x.objectInit.rope.radius, _x.objectInit.box.center.x, _x.objectInit.box.center.y, _x.objectInit.box.center.z, _x.objectInit.box.extents.x, _x.objectInit.box.extents.y, _x.objectInit.box.extents.z, _x.objectInit.box.angle, _x.objectInit.towel_corners.header.seq, _x.objectInit.towel_corners.header.stamp.secs, _x.objectInit.towel_corners.header.stamp.nsecs))
      _x = self.objectInit.towel_corners.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.objectInit.towel_corners.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.objectInit.towel_corners.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.objectInit is None:
        self.objectInit = bulletsim_msgs.msg.ObjectInit()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectInit.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.objectInit.type = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.objectInit.rope.header.seq, _x.objectInit.rope.header.stamp.secs, _x.objectInit.rope.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectInit.rope.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.objectInit.rope.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objectInit.rope.nodes = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.objectInit.rope.nodes.append(val1)
      _x = self
      start = end
      end += 68
      (_x.objectInit.rope.radius, _x.objectInit.box.center.x, _x.objectInit.box.center.y, _x.objectInit.box.center.z, _x.objectInit.box.extents.x, _x.objectInit.box.extents.y, _x.objectInit.box.extents.z, _x.objectInit.box.angle, _x.objectInit.towel_corners.header.seq, _x.objectInit.towel_corners.header.stamp.secs, _x.objectInit.towel_corners.header.stamp.nsecs,) = _get_struct_f6df3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectInit.towel_corners.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.objectInit.towel_corners.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objectInit.towel_corners.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.objectInit.towel_corners.polygon.points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.objectInit.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.objectInit.rope.header.seq, _x.objectInit.rope.header.stamp.secs, _x.objectInit.rope.header.stamp.nsecs))
      _x = self.objectInit.rope.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.objectInit.rope.nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.objectInit.rope.nodes:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_f6df3I().pack(_x.objectInit.rope.radius, _x.objectInit.box.center.x, _x.objectInit.box.center.y, _x.objectInit.box.center.z, _x.objectInit.box.extents.x, _x.objectInit.box.extents.y, _x.objectInit.box.extents.z, _x.objectInit.box.angle, _x.objectInit.towel_corners.header.seq, _x.objectInit.towel_corners.header.stamp.secs, _x.objectInit.towel_corners.header.stamp.nsecs))
      _x = self.objectInit.towel_corners.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.objectInit.towel_corners.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.objectInit.towel_corners.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.objectInit is None:
        self.objectInit = bulletsim_msgs.msg.ObjectInit()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectInit.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.objectInit.type = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.objectInit.rope.header.seq, _x.objectInit.rope.header.stamp.secs, _x.objectInit.rope.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectInit.rope.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.objectInit.rope.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objectInit.rope.nodes = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.objectInit.rope.nodes.append(val1)
      _x = self
      start = end
      end += 68
      (_x.objectInit.rope.radius, _x.objectInit.box.center.x, _x.objectInit.box.center.y, _x.objectInit.box.center.z, _x.objectInit.box.extents.x, _x.objectInit.box.extents.y, _x.objectInit.box.extents.z, _x.objectInit.box.angle, _x.objectInit.towel_corners.header.seq, _x.objectInit.towel_corners.header.stamp.secs, _x.objectInit.towel_corners.header.stamp.nsecs,) = _get_struct_f6df3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.objectInit.towel_corners.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.objectInit.towel_corners.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objectInit.towel_corners.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.objectInit.towel_corners.polygon.points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_f6df3I = None
def _get_struct_f6df3I():
    global _struct_f6df3I
    if _struct_f6df3I is None:
        _struct_f6df3I = struct.Struct("<f6df3I")
    return _struct_f6df3I
class Initialization(object):
  _type          = 'bulletsim_msgs/Initialization'
  _md5sum = 'ce0a7e8348fab2f5858b6d6d77cf8ff2'
  _request_class  = InitializationRequest
  _response_class = InitializationResponse
