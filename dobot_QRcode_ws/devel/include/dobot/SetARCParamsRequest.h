// Generated by gencpp from file dobot/SetARCParamsRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_SETARCPARAMSREQUEST_H
#define DOBOT_MESSAGE_SETARCPARAMSREQUEST_H


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
struct SetARCParamsRequest_
{
  typedef SetARCParamsRequest_<ContainerAllocator> Type;

  SetARCParamsRequest_()
    : xyzVelocity(0.0)
    , rVelocity(0.0)
    , xyzAcceleration(0.0)
    , rAcceleration(0.0)
    , isQueued(false)  {
    }
  SetARCParamsRequest_(const ContainerAllocator& _alloc)
    : xyzVelocity(0.0)
    , rVelocity(0.0)
    , xyzAcceleration(0.0)
    , rAcceleration(0.0)
    , isQueued(false)  {
  (void)_alloc;
    }



   typedef float _xyzVelocity_type;
  _xyzVelocity_type xyzVelocity;

   typedef float _rVelocity_type;
  _rVelocity_type rVelocity;

   typedef float _xyzAcceleration_type;
  _xyzAcceleration_type xyzAcceleration;

   typedef float _rAcceleration_type;
  _rAcceleration_type rAcceleration;

   typedef uint8_t _isQueued_type;
  _isQueued_type isQueued;





  typedef boost::shared_ptr< ::dobot::SetARCParamsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::SetARCParamsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetARCParamsRequest_

typedef ::dobot::SetARCParamsRequest_<std::allocator<void> > SetARCParamsRequest;

typedef boost::shared_ptr< ::dobot::SetARCParamsRequest > SetARCParamsRequestPtr;
typedef boost::shared_ptr< ::dobot::SetARCParamsRequest const> SetARCParamsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::SetARCParamsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::SetARCParamsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dobot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'dobot': ['/home/kermit/dobot_QRcode_ws/src/dobot/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::SetARCParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetARCParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetARCParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "76117133666c08ba06a7aa5aebab19f5";
  }

  static const char* value(const ::dobot::SetARCParamsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x76117133666c08baULL;
  static const uint64_t static_value2 = 0x06a7aa5aebab19f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/SetARCParamsRequest";
  }

  static const char* value(const ::dobot::SetARCParamsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 xyzVelocity\n"
"float32 rVelocity\n"
"float32 xyzAcceleration\n"
"float32 rAcceleration\n"
"bool isQueued\n"
;
  }

  static const char* value(const ::dobot::SetARCParamsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xyzVelocity);
      stream.next(m.rVelocity);
      stream.next(m.xyzAcceleration);
      stream.next(m.rAcceleration);
      stream.next(m.isQueued);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetARCParamsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::SetARCParamsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::SetARCParamsRequest_<ContainerAllocator>& v)
  {
    s << indent << "xyzVelocity: ";
    Printer<float>::stream(s, indent + "  ", v.xyzVelocity);
    s << indent << "rVelocity: ";
    Printer<float>::stream(s, indent + "  ", v.rVelocity);
    s << indent << "xyzAcceleration: ";
    Printer<float>::stream(s, indent + "  ", v.xyzAcceleration);
    s << indent << "rAcceleration: ";
    Printer<float>::stream(s, indent + "  ", v.rAcceleration);
    s << indent << "isQueued: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isQueued);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_SETARCPARAMSREQUEST_H
