// Generated by gencpp from file dobot/GetCtrl_msg.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_GETCTRL_MSG_H
#define DOBOT_MESSAGE_GETCTRL_MSG_H


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
struct GetCtrl_msg_
{
  typedef GetCtrl_msg_<ContainerAllocator> Type;

  GetCtrl_msg_()
    : cmd(0)  {
    }
  GetCtrl_msg_(const ContainerAllocator& _alloc)
    : cmd(0)  {
  (void)_alloc;
    }



   typedef int32_t _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::dobot::GetCtrl_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::GetCtrl_msg_<ContainerAllocator> const> ConstPtr;

}; // struct GetCtrl_msg_

typedef ::dobot::GetCtrl_msg_<std::allocator<void> > GetCtrl_msg;

typedef boost::shared_ptr< ::dobot::GetCtrl_msg > GetCtrl_msgPtr;
typedef boost::shared_ptr< ::dobot::GetCtrl_msg const> GetCtrl_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::GetCtrl_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::GetCtrl_msg_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dobot::GetCtrl_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::GetCtrl_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::GetCtrl_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::GetCtrl_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetCtrl_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetCtrl_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::GetCtrl_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "66990e73c7aab0c47ddcdc70f7fa5bd0";
  }

  static const char* value(const ::dobot::GetCtrl_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x66990e73c7aab0c4ULL;
  static const uint64_t static_value2 = 0x7ddcdc70f7fa5bd0ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::GetCtrl_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/GetCtrl_msg";
  }

  static const char* value(const ::dobot::GetCtrl_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::GetCtrl_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 cmd\n"
;
  }

  static const char* value(const ::dobot::GetCtrl_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::GetCtrl_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCtrl_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::GetCtrl_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::GetCtrl_msg_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_GETCTRL_MSG_H
