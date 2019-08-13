// Generated by gencpp from file dobot/SetEndEffectorParamsRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_SETENDEFFECTORPARAMSREQUEST_H
#define DOBOT_MESSAGE_SETENDEFFECTORPARAMSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dobot
{
template <class ContainerAllocator>
struct SetEndEffectorParamsRequest_
{
  typedef SetEndEffectorParamsRequest_<ContainerAllocator> Type;

  SetEndEffectorParamsRequest_()
    : xBias(0.0)
    , yBias(0.0)
    , zBias(0.0)
    , isQueued(false)  {
    }
  SetEndEffectorParamsRequest_(const ContainerAllocator& _alloc)
    : xBias(0.0)
    , yBias(0.0)
    , zBias(0.0)
    , isQueued(false)  {
  (void)_alloc;
    }



   typedef float _xBias_type;
  _xBias_type xBias;

   typedef float _yBias_type;
  _yBias_type yBias;

   typedef float _zBias_type;
  _zBias_type zBias;

   typedef uint8_t _isQueued_type;
  _isQueued_type isQueued;





  typedef boost::shared_ptr< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetEndEffectorParamsRequest_

typedef ::dobot::SetEndEffectorParamsRequest_<std::allocator<void> > SetEndEffectorParamsRequest;

typedef boost::shared_ptr< ::dobot::SetEndEffectorParamsRequest > SetEndEffectorParamsRequestPtr;
typedef boost::shared_ptr< ::dobot::SetEndEffectorParamsRequest const> SetEndEffectorParamsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dobot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'dobot': ['/home/kermit/dobot_ws/src/dobot/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "98648dd79874dd018bae73e190074b95";
  }

  static const char* value(const ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x98648dd79874dd01ULL;
  static const uint64_t static_value2 = 0x8bae73e190074b95ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/SetEndEffectorParamsRequest";
  }

  static const char* value(const ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 xBias\n"
"float32 yBias\n"
"float32 zBias\n"
"bool isQueued\n"
;
  }

  static const char* value(const ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xBias);
      stream.next(m.yBias);
      stream.next(m.zBias);
      stream.next(m.isQueued);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetEndEffectorParamsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::SetEndEffectorParamsRequest_<ContainerAllocator>& v)
  {
    s << indent << "xBias: ";
    Printer<float>::stream(s, indent + "  ", v.xBias);
    s << indent << "yBias: ";
    Printer<float>::stream(s, indent + "  ", v.yBias);
    s << indent << "zBias: ";
    Printer<float>::stream(s, indent + "  ", v.zBias);
    s << indent << "isQueued: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isQueued);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_SETENDEFFECTORPARAMSREQUEST_H
