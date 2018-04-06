// Generated by gencpp from file turtle_controll/pos_arrResponse.msg
// DO NOT EDIT!


#ifndef TURTLE_CONTROLL_MESSAGE_POS_ARRRESPONSE_H
#define TURTLE_CONTROLL_MESSAGE_POS_ARRRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtle_controll
{
template <class ContainerAllocator>
struct pos_arrResponse_
{
  typedef pos_arrResponse_<ContainerAllocator> Type;

  pos_arrResponse_()
    : res(false)  {
    }
  pos_arrResponse_(const ContainerAllocator& _alloc)
    : res(false)  {
  (void)_alloc;
    }



   typedef uint8_t _res_type;
  _res_type res;





  typedef boost::shared_ptr< ::turtle_controll::pos_arrResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtle_controll::pos_arrResponse_<ContainerAllocator> const> ConstPtr;

}; // struct pos_arrResponse_

typedef ::turtle_controll::pos_arrResponse_<std::allocator<void> > pos_arrResponse;

typedef boost::shared_ptr< ::turtle_controll::pos_arrResponse > pos_arrResponsePtr;
typedef boost::shared_ptr< ::turtle_controll::pos_arrResponse const> pos_arrResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtle_controll::pos_arrResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtle_controll

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_controll::pos_arrResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_controll::pos_arrResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_controll::pos_arrResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e27848a10f8e7e4030443887dfea101b";
  }

  static const char* value(const ::turtle_controll::pos_arrResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe27848a10f8e7e40ULL;
  static const uint64_t static_value2 = 0x30443887dfea101bULL;
};

template<class ContainerAllocator>
struct DataType< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtle_controll/pos_arrResponse";
  }

  static const char* value(const ::turtle_controll::pos_arrResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool res\n\
";
  }

  static const char* value(const ::turtle_controll::pos_arrResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.res);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pos_arrResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtle_controll::pos_arrResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtle_controll::pos_arrResponse_<ContainerAllocator>& v)
  {
    s << indent << "res: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.res);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLE_CONTROLL_MESSAGE_POS_ARRRESPONSE_H