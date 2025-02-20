// Generated by gencpp from file dope_skill_msgs/DopeSkillGoal.msg
// DO NOT EDIT!


#ifndef DOPE_SKILL_MSGS_MESSAGE_DOPESKILLGOAL_H
#define DOPE_SKILL_MSGS_MESSAGE_DOPESKILLGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dope_skill_msgs
{
template <class ContainerAllocator>
struct DopeSkillGoal_
{
  typedef DopeSkillGoal_<ContainerAllocator> Type;

  DopeSkillGoal_()
    : operation_mode(0)
    , model_name()
    , object_name()  {
    }
  DopeSkillGoal_(const ContainerAllocator& _alloc)
    : operation_mode(0)
    , model_name(_alloc)
    , object_name(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _operation_mode_type;
  _operation_mode_type operation_mode;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _model_name_type;
  _model_name_type model_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _object_name_type;
  _object_name_type object_name;





  typedef boost::shared_ptr< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> const> ConstPtr;

}; // struct DopeSkillGoal_

typedef ::dope_skill_msgs::DopeSkillGoal_<std::allocator<void> > DopeSkillGoal;

typedef boost::shared_ptr< ::dope_skill_msgs::DopeSkillGoal > DopeSkillGoalPtr;
typedef boost::shared_ptr< ::dope_skill_msgs::DopeSkillGoal const> DopeSkillGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator1> & lhs, const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator2> & rhs)
{
  return lhs.operation_mode == rhs.operation_mode &&
    lhs.model_name == rhs.model_name &&
    lhs.object_name == rhs.object_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator1> & lhs, const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dope_skill_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2397551434b69a269cde975c677c8bb4";
  }

  static const char* value(const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2397551434b69a26ULL;
  static const uint64_t static_value2 = 0x9cde975c677c8bb4ULL;
};

template<class ContainerAllocator>
struct DataType< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dope_skill_msgs/DopeSkillGoal";
  }

  static const char* value(const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"int32 operation_mode\n"
"string model_name\n"
"string object_name\n"
;
  }

  static const char* value(const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.operation_mode);
      stream.next(m.model_name);
      stream.next(m.object_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DopeSkillGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dope_skill_msgs::DopeSkillGoal_<ContainerAllocator>& v)
  {
    s << indent << "operation_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.operation_mode);
    s << indent << "model_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.model_name);
    s << indent << "object_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.object_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOPE_SKILL_MSGS_MESSAGE_DOPESKILLGOAL_H
