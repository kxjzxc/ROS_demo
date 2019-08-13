// Generated by gencpp from file dobot/GetHHTTrigOutput.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_GETHHTTRIGOUTPUT_H
#define DOBOT_MESSAGE_GETHHTTRIGOUTPUT_H

#include <ros/service_traits.h>


#include <dobot/GetHHTTrigOutputRequest.h>
#include <dobot/GetHHTTrigOutputResponse.h>


namespace dobot
{

struct GetHHTTrigOutput
{

typedef GetHHTTrigOutputRequest Request;
typedef GetHHTTrigOutputResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetHHTTrigOutput
} // namespace dobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dobot::GetHHTTrigOutput > {
  static const char* value()
  {
    return "1946bbc3a20603520250b54a04604eab";
  }

  static const char* value(const ::dobot::GetHHTTrigOutput&) { return value(); }
};

template<>
struct DataType< ::dobot::GetHHTTrigOutput > {
  static const char* value()
  {
    return "dobot/GetHHTTrigOutput";
  }

  static const char* value(const ::dobot::GetHHTTrigOutput&) { return value(); }
};


// service_traits::MD5Sum< ::dobot::GetHHTTrigOutputRequest> should match 
// service_traits::MD5Sum< ::dobot::GetHHTTrigOutput > 
template<>
struct MD5Sum< ::dobot::GetHHTTrigOutputRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::GetHHTTrigOutput >::value();
  }
  static const char* value(const ::dobot::GetHHTTrigOutputRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::GetHHTTrigOutputRequest> should match 
// service_traits::DataType< ::dobot::GetHHTTrigOutput > 
template<>
struct DataType< ::dobot::GetHHTTrigOutputRequest>
{
  static const char* value()
  {
    return DataType< ::dobot::GetHHTTrigOutput >::value();
  }
  static const char* value(const ::dobot::GetHHTTrigOutputRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dobot::GetHHTTrigOutputResponse> should match 
// service_traits::MD5Sum< ::dobot::GetHHTTrigOutput > 
template<>
struct MD5Sum< ::dobot::GetHHTTrigOutputResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::GetHHTTrigOutput >::value();
  }
  static const char* value(const ::dobot::GetHHTTrigOutputResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::GetHHTTrigOutputResponse> should match 
// service_traits::DataType< ::dobot::GetHHTTrigOutput > 
template<>
struct DataType< ::dobot::GetHHTTrigOutputResponse>
{
  static const char* value()
  {
    return DataType< ::dobot::GetHHTTrigOutput >::value();
  }
  static const char* value(const ::dobot::GetHHTTrigOutputResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DOBOT_MESSAGE_GETHHTTRIGOUTPUT_H
