// Generated by gencpp from file dobot/GetIOMultiplexing.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_GETIOMULTIPLEXING_H
#define DOBOT_MESSAGE_GETIOMULTIPLEXING_H

#include <ros/service_traits.h>


#include <dobot/GetIOMultiplexingRequest.h>
#include <dobot/GetIOMultiplexingResponse.h>


namespace dobot
{

struct GetIOMultiplexing
{

typedef GetIOMultiplexingRequest Request;
typedef GetIOMultiplexingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetIOMultiplexing
} // namespace dobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dobot::GetIOMultiplexing > {
  static const char* value()
  {
    return "30a9ee7733d17c6beafe8b39fe97a95c";
  }

  static const char* value(const ::dobot::GetIOMultiplexing&) { return value(); }
};

template<>
struct DataType< ::dobot::GetIOMultiplexing > {
  static const char* value()
  {
    return "dobot/GetIOMultiplexing";
  }

  static const char* value(const ::dobot::GetIOMultiplexing&) { return value(); }
};


// service_traits::MD5Sum< ::dobot::GetIOMultiplexingRequest> should match 
// service_traits::MD5Sum< ::dobot::GetIOMultiplexing > 
template<>
struct MD5Sum< ::dobot::GetIOMultiplexingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::GetIOMultiplexing >::value();
  }
  static const char* value(const ::dobot::GetIOMultiplexingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::GetIOMultiplexingRequest> should match 
// service_traits::DataType< ::dobot::GetIOMultiplexing > 
template<>
struct DataType< ::dobot::GetIOMultiplexingRequest>
{
  static const char* value()
  {
    return DataType< ::dobot::GetIOMultiplexing >::value();
  }
  static const char* value(const ::dobot::GetIOMultiplexingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dobot::GetIOMultiplexingResponse> should match 
// service_traits::MD5Sum< ::dobot::GetIOMultiplexing > 
template<>
struct MD5Sum< ::dobot::GetIOMultiplexingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dobot::GetIOMultiplexing >::value();
  }
  static const char* value(const ::dobot::GetIOMultiplexingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dobot::GetIOMultiplexingResponse> should match 
// service_traits::DataType< ::dobot::GetIOMultiplexing > 
template<>
struct DataType< ::dobot::GetIOMultiplexingResponse>
{
  static const char* value()
  {
    return DataType< ::dobot::GetIOMultiplexing >::value();
  }
  static const char* value(const ::dobot::GetIOMultiplexingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DOBOT_MESSAGE_GETIOMULTIPLEXING_H
