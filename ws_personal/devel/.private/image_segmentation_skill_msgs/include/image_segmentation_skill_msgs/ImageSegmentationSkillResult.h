// Generated by gencpp from file image_segmentation_skill_msgs/ImageSegmentationSkillResult.msg
// DO NOT EDIT!


#ifndef IMAGE_SEGMENTATION_SKILL_MSGS_MESSAGE_IMAGESEGMENTATIONSKILLRESULT_H
#define IMAGE_SEGMENTATION_SKILL_MSGS_MESSAGE_IMAGESEGMENTATIONSKILLRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <image_segmentation_skill_msgs/MaskDefinition.h>

namespace image_segmentation_skill_msgs
{
template <class ContainerAllocator>
struct ImageSegmentationSkillResult_
{
  typedef ImageSegmentationSkillResult_<ContainerAllocator> Type;

  ImageSegmentationSkillResult_()
    : percentage(0)
    , skillStatus()
    , outcome()
    , mask_pub()  {
    }
  ImageSegmentationSkillResult_(const ContainerAllocator& _alloc)
    : percentage(0)
    , skillStatus(_alloc)
    , outcome(_alloc)
    , mask_pub(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _percentage_type;
  _percentage_type percentage;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _skillStatus_type;
  _skillStatus_type skillStatus;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _outcome_type;
  _outcome_type outcome;

   typedef  ::image_segmentation_skill_msgs::MaskDefinition_<ContainerAllocator>  _mask_pub_type;
  _mask_pub_type mask_pub;





  typedef boost::shared_ptr< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> const> ConstPtr;

}; // struct ImageSegmentationSkillResult_

typedef ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<std::allocator<void> > ImageSegmentationSkillResult;

typedef boost::shared_ptr< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult > ImageSegmentationSkillResultPtr;
typedef boost::shared_ptr< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult const> ImageSegmentationSkillResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator1> & lhs, const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator2> & rhs)
{
  return lhs.percentage == rhs.percentage &&
    lhs.skillStatus == rhs.skillStatus &&
    lhs.outcome == rhs.outcome &&
    lhs.mask_pub == rhs.mask_pub;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator1> & lhs, const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace image_segmentation_skill_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aaab811457c594f5592825b0e0a9f167";
  }

  static const char* value(const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaaab811457c594f5ULL;
  static const uint64_t static_value2 = 0x592825b0e0a9f167ULL;
};

template<class ContainerAllocator>
struct DataType< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "image_segmentation_skill_msgs/ImageSegmentationSkillResult";
  }

  static const char* value(const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"###################\n"
"# Result definition\n"
"\n"
"#sensor_msgs/PointCloud2 cloud\n"
"int32 percentage\n"
"string skillStatus\n"
"string outcome\n"
"image_segmentation_skill_msgs/MaskDefinition mask_pub\n"
"\n"
"================================================================================\n"
"MSG: image_segmentation_skill_msgs/MaskDefinition\n"
"int32 instance_nr\n"
"std_msgs/Float32MultiArray scores\n"
"sensor_msgs/Image mask_image\n"
"================================================================================\n"
"MSG: std_msgs/Float32MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float32[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percentage);
      stream.next(m.skillStatus);
      stream.next(m.outcome);
      stream.next(m.mask_pub);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImageSegmentationSkillResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::image_segmentation_skill_msgs::ImageSegmentationSkillResult_<ContainerAllocator>& v)
  {
    s << indent << "percentage: ";
    Printer<int32_t>::stream(s, indent + "  ", v.percentage);
    s << indent << "skillStatus: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.skillStatus);
    s << indent << "outcome: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.outcome);
    s << indent << "mask_pub: ";
    s << std::endl;
    Printer< ::image_segmentation_skill_msgs::MaskDefinition_<ContainerAllocator> >::stream(s, indent + "  ", v.mask_pub);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMAGE_SEGMENTATION_SKILL_MSGS_MESSAGE_IMAGESEGMENTATIONSKILLRESULT_H
