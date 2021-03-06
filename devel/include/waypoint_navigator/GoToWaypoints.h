// Generated by gencpp from file waypoint_navigator/GoToWaypoints.msg
// DO NOT EDIT!


#ifndef WAYPOINT_NAVIGATOR_MESSAGE_GOTOWAYPOINTS_H
#define WAYPOINT_NAVIGATOR_MESSAGE_GOTOWAYPOINTS_H

#include <ros/service_traits.h>


#include <waypoint_navigator/GoToWaypointsRequest.h>
#include <waypoint_navigator/GoToWaypointsResponse.h>


namespace waypoint_navigator
{

struct GoToWaypoints
{

typedef GoToWaypointsRequest Request;
typedef GoToWaypointsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GoToWaypoints
} // namespace waypoint_navigator


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::waypoint_navigator::GoToWaypoints > {
  static const char* value()
  {
    return "3fb3f9dacc279b964c4c8341122c34df";
  }

  static const char* value(const ::waypoint_navigator::GoToWaypoints&) { return value(); }
};

template<>
struct DataType< ::waypoint_navigator::GoToWaypoints > {
  static const char* value()
  {
    return "waypoint_navigator/GoToWaypoints";
  }

  static const char* value(const ::waypoint_navigator::GoToWaypoints&) { return value(); }
};


// service_traits::MD5Sum< ::waypoint_navigator::GoToWaypointsRequest> should match 
// service_traits::MD5Sum< ::waypoint_navigator::GoToWaypoints > 
template<>
struct MD5Sum< ::waypoint_navigator::GoToWaypointsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::waypoint_navigator::GoToWaypoints >::value();
  }
  static const char* value(const ::waypoint_navigator::GoToWaypointsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::waypoint_navigator::GoToWaypointsRequest> should match 
// service_traits::DataType< ::waypoint_navigator::GoToWaypoints > 
template<>
struct DataType< ::waypoint_navigator::GoToWaypointsRequest>
{
  static const char* value()
  {
    return DataType< ::waypoint_navigator::GoToWaypoints >::value();
  }
  static const char* value(const ::waypoint_navigator::GoToWaypointsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::waypoint_navigator::GoToWaypointsResponse> should match 
// service_traits::MD5Sum< ::waypoint_navigator::GoToWaypoints > 
template<>
struct MD5Sum< ::waypoint_navigator::GoToWaypointsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::waypoint_navigator::GoToWaypoints >::value();
  }
  static const char* value(const ::waypoint_navigator::GoToWaypointsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::waypoint_navigator::GoToWaypointsResponse> should match 
// service_traits::DataType< ::waypoint_navigator::GoToWaypoints > 
template<>
struct DataType< ::waypoint_navigator::GoToWaypointsResponse>
{
  static const char* value()
  {
    return DataType< ::waypoint_navigator::GoToWaypoints >::value();
  }
  static const char* value(const ::waypoint_navigator::GoToWaypointsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAYPOINT_NAVIGATOR_MESSAGE_GOTOWAYPOINTS_H
