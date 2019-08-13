// Generated by gencpp from file dobot/SetIODORequest.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_SETIODOREQUEST_H
#define DOBOT_MESSAGE_SETIODOREQUEST_H


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
struct SetIODORequest_
{
  typedef SetIODORequest_<ContainerAllocator> Type;

  SetIODORequest_()
    : address(0)
    , level(0)
    , isQueued(false)  {
    }
  SetIODORequest_(const ContainerAllocator& _alloc)
    : address(0)
    , level(0)
    , isQueued(false)  {
  (void)_alloc;
    }



   typedef uint8_t _address_type;
  _address_type address;

   typedef uint8_t _level_type;
  _level_type level;

   typedef uint8_t _isQueued_type;
  _isQueued_type isQueued;





  typedef boost::shared_ptr< ::dobot::SetIODORequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::SetIODORequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetIODORequest_

typedef ::dobot::SetIODORequest_<std::allocator<void> > SetIODORequest;

typedef boost::shared_ptr< ::dobot::SetIODORequest > SetIODORequestPtr;
typedef boost::shared_ptr< ::dobot::SetIODORequest const> SetIODORequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::SetIODORequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::SetIODORequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dobot::SetIODORequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::SetIODORequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetIODORequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::SetIODORequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetIODORequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::SetIODORequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::SetIODORequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c157ceb94ff4488daee759ac464a6c3e";
  }

  static const char* value(const ::dobot::SetIODORequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc157ceb94ff4488dULL;
  static const uint64_t static_value2 = 0xaee759ac464a6c3eULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::SetIODORequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/SetIODORequest";
  }

  static const char* value(const ::dobot::SetIODORequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::SetIODORequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 address\n"
"uint8 level\n"
"bool isQueued\n"
;
  }

  static const char* value(const ::dobot::SetIODORequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::SetIODORequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.address);
      stream.next(m.level);
      stream.next(m.isQueued);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetIODORequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::SetIODORequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::SetIODORequest_<ContainerAllocator>& v)
  {
    s << indent << "address: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.address);
    s << indent << "level: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.level);
    s << indent << "isQueued: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isQueued);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_SETIODOREQUEST_H
