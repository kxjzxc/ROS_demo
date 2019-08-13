// Generated by gencpp from file dobot/GetJOGCoordinateParamsRequest.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_GETJOGCOORDINATEPARAMSREQUEST_H
#define DOBOT_MESSAGE_GETJOGCOORDINATEPARAMSREQUEST_H


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
struct GetJOGCoordinateParamsRequest_
{
  typedef GetJOGCoordinateParamsRequest_<ContainerAllocator> Type;

  GetJOGCoordinateParamsRequest_()
    {
    }
  GetJOGCoordinateParamsRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetJOGCoordinateParamsRequest_

typedef ::dobot::GetJOGCoordinateParamsRequest_<std::allocator<void> > GetJOGCoordinateParamsRequest;

typedef boost::shared_ptr< ::dobot::GetJOGCoordinateParamsRequest > GetJOGCoordinateParamsRequestPtr;
typedef boost::shared_ptr< ::dobot::GetJOGCoordinateParamsRequest const> GetJOGCoordinateParamsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/GetJOGCoordinateParamsRequest";
  }

  static const char* value(const ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetJOGCoordinateParamsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::dobot::GetJOGCoordinateParamsRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_GETJOGCOORDINATEPARAMSREQUEST_H
