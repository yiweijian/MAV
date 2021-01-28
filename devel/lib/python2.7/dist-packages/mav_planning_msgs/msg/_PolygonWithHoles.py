# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mav_planning_msgs/PolygonWithHoles.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mav_planning_msgs.msg

class PolygonWithHoles(genpy.Message):
  _md5sum = "df7f266352dfcf3e4d29156dd85febf9"
  _type = "mav_planning_msgs/PolygonWithHoles"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# A message to define a 2D polygon with holes.
mav_planning_msgs/Polygon2D hull
mav_planning_msgs/Polygon2D[] holes

================================================================================
MSG: mav_planning_msgs/Polygon2D
# A specification of a 2D polygon where the first and last points are assumed to be connected.
mav_planning_msgs/Point2D[] points

================================================================================
MSG: mav_planning_msgs/Point2D
# This contains the position of a 2D point.
float64 x
float64 y
"""
  __slots__ = ['hull','holes']
  _slot_types = ['mav_planning_msgs/Polygon2D','mav_planning_msgs/Polygon2D[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       hull,holes

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PolygonWithHoles, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.hull is None:
        self.hull = mav_planning_msgs.msg.Polygon2D()
      if self.holes is None:
        self.holes = []
    else:
      self.hull = mav_planning_msgs.msg.Polygon2D()
      self.holes = []

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
      length = len(self.hull.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.hull.points:
        _x = val1
        buff.write(_struct_2d.pack(_x.x, _x.y))
      length = len(self.holes)
      buff.write(_struct_I.pack(length))
      for val1 in self.holes:
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_struct_2d.pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.hull is None:
        self.hull = mav_planning_msgs.msg.Polygon2D()
      if self.holes is None:
        self.holes = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.hull.points = []
      for i in range(0, length):
        val1 = mav_planning_msgs.msg.Point2D()
        _x = val1
        start = end
        end += 16
        (_x.x, _x.y,) = _struct_2d.unpack(str[start:end])
        self.hull.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.holes = []
      for i in range(0, length):
        val1 = mav_planning_msgs.msg.Polygon2D()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = mav_planning_msgs.msg.Point2D()
          _x = val2
          start = end
          end += 16
          (_x.x, _x.y,) = _struct_2d.unpack(str[start:end])
          val1.points.append(val2)
        self.holes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.hull.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.hull.points:
        _x = val1
        buff.write(_struct_2d.pack(_x.x, _x.y))
      length = len(self.holes)
      buff.write(_struct_I.pack(length))
      for val1 in self.holes:
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_struct_2d.pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.hull is None:
        self.hull = mav_planning_msgs.msg.Polygon2D()
      if self.holes is None:
        self.holes = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.hull.points = []
      for i in range(0, length):
        val1 = mav_planning_msgs.msg.Point2D()
        _x = val1
        start = end
        end += 16
        (_x.x, _x.y,) = _struct_2d.unpack(str[start:end])
        self.hull.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.holes = []
      for i in range(0, length):
        val1 = mav_planning_msgs.msg.Polygon2D()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = mav_planning_msgs.msg.Point2D()
          _x = val2
          start = end
          end += 16
          (_x.x, _x.y,) = _struct_2d.unpack(str[start:end])
          val1.points.append(val2)
        self.holes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2d = struct.Struct("<2d")
