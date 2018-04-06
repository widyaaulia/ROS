// Generated by gencpp from file gazebo_controller/CustomMessage.msg
// DO NOT EDIT!


#ifndef GAZEBO_CONTROLLER_MESSAGE_CUSTOMMESSAGE_H
#define GAZEBO_CONTROLLER_MESSAGE_CUSTOMMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gazebo_controller
{
template <class ContainerAllocator>
struct CustomMessage_
{
  typedef CustomMessage_<ContainerAllocator> Type;

  CustomMessage_()
    : x()
    , y()
    , theta()  {
      x.assign(0);

      y.assign(0);

      theta.assign(0);
  }
  CustomMessage_(const ContainerAllocator& _alloc)
    : x()
    , y()
    , theta()  {
  (void)_alloc;
      x.assign(0);

      y.assign(0);

      theta.assign(0);
  }



   typedef boost::array<int32_t, 4>  _x_type;
  _x_type x;

   typedef boost::array<int32_t, 4>  _y_type;
  _y_type y;

   typedef boost::array<int32_t, 4>  _theta_type;
  _theta_type theta;





  typedef boost::shared_ptr< ::gazebo_controller::CustomMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_controller::CustomMessage_<ContainerAllocator> const> ConstPtr;

}; // struct CustomMessage_

typedef ::gazebo_controller::CustomMessage_<std::allocator<void> > CustomMessage;

typedef boost::shared_ptr< ::gazebo_controller::CustomMessage > CustomMessagePtr;
typedef boost::shared_ptr< ::gazebo_controller::CustomMessage const> CustomMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_controller::CustomMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_controller::CustomMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gazebo_controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'gazebo_controller': ['/home/ngatran/Desktop/srv_ws/src/gazebo_controller/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_controller::CustomMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_controller::CustomMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_controller::CustomMessage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75c45c7398a3ed7e59626b36ece0423d";
  }

  static const char* value(const ::gazebo_controller::CustomMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75c45c7398a3ed7eULL;
  static const uint64_t static_value2 = 0x59626b36ece0423dULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_controller/CustomMessage";
  }

  static const char* value(const ::gazebo_controller::CustomMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[4] x\n\
int32[4] y\n\
int32[4] theta\n\
";
  }

  static const char* value(const ::gazebo_controller::CustomMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CustomMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_controller::CustomMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_controller::CustomMessage_<ContainerAllocator>& v)
  {
    s << indent << "x[]" << std::endl;
    for (size_t i = 0; i < v.x.size(); ++i)
    {
      s << indent << "  x[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.x[i]);
    }
    s << indent << "y[]" << std::endl;
    for (size_t i = 0; i < v.y.size(); ++i)
    {
      s << indent << "  y[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.y[i]);
    }
    s << indent << "theta[]" << std::endl;
    for (size_t i = 0; i < v.theta.size(); ++i)
    {
      s << indent << "  theta[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.theta[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_CONTROLLER_MESSAGE_CUSTOMMESSAGE_H
