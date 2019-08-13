// Generated by gencpp from file dobot/SetHHTTrigModeRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_SETHHTTRIGMODEREQUEST_H
#define DOBOT_MESSAGE_SETHHTTRIGMODEREQUEST_H


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
struct SetHHTTrigModeRequest_
{
  typedef SetHHTTrigModeRequest_<ContainerAllocator> Type;

  SetHHTTrigModeRequest_()
    : tagHHTTrigMode(0)  {
    }
  SetHHTTrigModeRequest_(const ContainerAllocator& _alloc)
    : tagHHTTrigMode(0)  {
  (void)_alloc;
    }



   typedef uint8_t _tagHHTTrigMode_type;
  _tagHHTTrigMode_type tagHHTTrigMode;





  typedef boost::shared_ptr< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetHHTTrigModeRequest_

typedef ::dobot::SetHHTTrigModeRequest_<std::allocator<void> > SetHHTTrigModeRequest;

typedef boost::shared_ptr< ::dobot::SetHHTTrigModeRequest > SetHHTTrigModeRequestPtr;
typedef boost::shared_ptr< ::dobot::SetHHTTrigModeRequest const> SetHHTTrigModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d2f1182a7dd0bbc63006dc8fe55f3e4d";
  }

  static const char* value(const ::dobot::SetHHTTrigModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd2f1182a7dd0bbc6ULL;
  static const uint64_t static_value2 = 0x3006dc8fe55f3e4dULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/SetHHTTrigModeRequest";
  }

  static const char* value(const ::dobot::SetHHTTrigModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 tagHHTTrigMode\n"
;
  }

  static const char* value(const ::dobot::SetHHTTrigModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tagHHTTrigMode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetHHTTrigModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::SetHHTTrigModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::SetHHTTrigModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "tagHHTTrigMode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.tagHHTTrigMode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_SETHHTTRIGMODEREQUEST_H