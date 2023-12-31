// Generated by gencpp from file bulletsim_msgs/PlanTrajResponse.msg
// DO NOT EDIT!


#ifndef BULLETSIM_MSGS_MESSAGE_PLANTRAJRESPONSE_H
#define BULLETSIM_MSGS_MESSAGE_PLANTRAJRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bulletsim_msgs
{
template <class ContainerAllocator>
struct PlanTrajResponse_
{
  typedef PlanTrajResponse_<ContainerAllocator> Type;

  PlanTrajResponse_()
    : trajectory()  {
    }
  PlanTrajResponse_(const ContainerAllocator& _alloc)
    : trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _trajectory_type;
  _trajectory_type trajectory;





  typedef boost::shared_ptr< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PlanTrajResponse_

typedef ::bulletsim_msgs::PlanTrajResponse_<std::allocator<void> > PlanTrajResponse;

typedef boost::shared_ptr< ::bulletsim_msgs::PlanTrajResponse > PlanTrajResponsePtr;
typedef boost::shared_ptr< ::bulletsim_msgs::PlanTrajResponse const> PlanTrajResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator1> & lhs, const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator2> & rhs)
{
  return lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator1> & lhs, const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bulletsim_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "50478ba000e46f50bcf36395a2af115e";
  }

  static const char* value(const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x50478ba000e46f50ULL;
  static const uint64_t static_value2 = 0xbcf36395a2af115eULL;
};

template<class ContainerAllocator>
struct DataType< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bulletsim_msgs/PlanTrajResponse";
  }

  static const char* value(const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] trajectory\n"
;
  }

  static const char* value(const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanTrajResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bulletsim_msgs::PlanTrajResponse_<ContainerAllocator>& v)
  {
    s << indent << "trajectory[]" << std::endl;
    for (size_t i = 0; i < v.trajectory.size(); ++i)
    {
      s << indent << "  trajectory[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.trajectory[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BULLETSIM_MSGS_MESSAGE_PLANTRAJRESPONSE_H
