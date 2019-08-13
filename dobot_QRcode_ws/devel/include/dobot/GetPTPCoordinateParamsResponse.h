// Generated by gencpp from file dobot/GetPTPCoordinateParamsResponse.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_GETPTPCOORDINATEPARAMSRESPONSE_H
#define DOBOT_MESSAGE_GETPTPCOORDINATEPARAMSRESPONSE_H


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
struct GetPTPCoordinateParamsResponse_
{
  typedef GetPTPCoordinateParamsResponse_<ContainerAllocator> Type;

  GetPTPCoordinateParamsResponse_()
    : result(0)
    , xyzVelocity(0.0)
    , rVelocity(0.0)
    , xyzAcceleration(0.0)
    , rAcceleration(0.0)  {
    }
  GetPTPCoordinateParamsResponse_(const ContainerAllocator& _alloc)
    : result(0)
    , xyzVelocity(0.0)
    , rVelocity(0.0)
    , xyzAcceleration(0.0)
    , rAcceleration(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;

   typedef float _xyzVelocity_type;
  _xyzVelocity_type xyzVelocity;

   typedef float _rVelocity_type;
  _rVelocity_type rVelocity;

   typedef float _xyzAcceleration_type;
  _xyzAcceleration_type xyzAcceleration;

   typedef float _rAcceleration_type;
  _rAcceleration_type rAcceleration;





  typedef boost::shared_ptr< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPTPCoordinateParamsResponse_

typedef ::dobot::GetPTPCoordinateParamsResponse_<std::allocator<void> > GetPTPCoordinateParamsResponse;

typedef boost::shared_ptr< ::dobot::GetPTPCoordinateParamsResponse > GetPTPCoordinateParamsResponsePtr;
typedef boost::shared_ptr< ::dobot::GetPTPCoordinateParamsResponse const> GetPTPCoordinateParamsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "886db9a7d126004f299ba6b6878cb966";
  }

  static const char* value(const ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x886db9a7d126004fULL;
  static const uint64_t static_value2 = 0x299ba6b6878cb966ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/GetPTPCoordinateParamsResponse";
  }

  static const char* value(const ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result\n"
"float32 xyzVelocity\n"
"float32 rVelocity\n"
"float32 xyzAcceleration\n"
"float32 rAcceleration\n"
"\n"
;
  }

  static const char* value(const ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.xyzVelocity);
      stream.next(m.rVelocity);
      stream.next(m.xyzAcceleration);
      stream.next(m.rAcceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPTPCoordinateParamsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::GetPTPCoordinateParamsResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
    s << indent << "xyzVelocity: ";
    Printer<float>::stream(s, indent + "  ", v.xyzVelocity);
    s << indent << "rVelocity: ";
    Printer<float>::stream(s, indent + "  ", v.rVelocity);
    s << indent << "xyzAcceleration: ";
    Printer<float>::stream(s, indent + "  ", v.xyzAcceleration);
    s << indent << "rAcceleration: ";
    Printer<float>::stream(s, indent + "  ", v.rAcceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_GETPTPCOORDINATEPARAMSRESPONSE_H
