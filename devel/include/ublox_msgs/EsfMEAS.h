// Generated by gencpp from file ublox_msgs/EsfMEAS.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_ESFMEAS_H
#define UBLOX_MSGS_MESSAGE_ESFMEAS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ublox_msgs
{
template <class ContainerAllocator>
struct EsfMEAS_
{
  typedef EsfMEAS_<ContainerAllocator> Type;

  EsfMEAS_()
    : timeTag(0)
    , flags(0)
    , id(0)
    , data()
    , calibTtag()  {
    }
  EsfMEAS_(const ContainerAllocator& _alloc)
    : timeTag(0)
    , flags(0)
    , id(0)
    , data(_alloc)
    , calibTtag(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _timeTag_type;
  _timeTag_type timeTag;

   typedef uint16_t _flags_type;
  _flags_type flags;

   typedef uint16_t _id_type;
  _id_type id;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _data_type;
  _data_type data;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _calibTtag_type;
  _calibTtag_type calibTtag;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CLASS_ID)
  #undef CLASS_ID
#endif
#if defined(_WIN32) && defined(MESSAGE_ID)
  #undef MESSAGE_ID
#endif
#if defined(_WIN32) && defined(FLAGS_TIME_MARK_SENT_MASK)
  #undef FLAGS_TIME_MARK_SENT_MASK
#endif
#if defined(_WIN32) && defined(TIME_MARK_NONE)
  #undef TIME_MARK_NONE
#endif
#if defined(_WIN32) && defined(TIME_MARK_EXT0)
  #undef TIME_MARK_EXT0
#endif
#if defined(_WIN32) && defined(TIME_MARK_EXT)
  #undef TIME_MARK_EXT
#endif
#if defined(_WIN32) && defined(FLAGS_TIME_MARK_EDGE)
  #undef FLAGS_TIME_MARK_EDGE
#endif
#if defined(_WIN32) && defined(FLAGS_CALIB_T_TAG_VALID)
  #undef FLAGS_CALIB_T_TAG_VALID
#endif
#if defined(_WIN32) && defined(DATA_FIELD_MASK)
  #undef DATA_FIELD_MASK
#endif
#if defined(_WIN32) && defined(DATA_TYPE_MASK)
  #undef DATA_TYPE_MASK
#endif
#if defined(_WIN32) && defined(DATA_TYPE_SHIFT)
  #undef DATA_TYPE_SHIFT
#endif
#if defined(_WIN32) && defined(DATA_TYPE_NONE)
  #undef DATA_TYPE_NONE
#endif
#if defined(_WIN32) && defined(DATA_TYPE_Z_AXIS_GYRO)
  #undef DATA_TYPE_Z_AXIS_GYRO
#endif
#if defined(_WIN32) && defined(DATA_TYPE_WHEEL_TICKS_FRONT_LEFT)
  #undef DATA_TYPE_WHEEL_TICKS_FRONT_LEFT
#endif
#if defined(_WIN32) && defined(DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT)
  #undef DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT
#endif
#if defined(_WIN32) && defined(DATA_TYPE_WHEEL_TICKS_REAR_LEFT)
  #undef DATA_TYPE_WHEEL_TICKS_REAR_LEFT
#endif
#if defined(_WIN32) && defined(DATA_TYPE_WHEEL_TICKS_REAR_RIGHT)
  #undef DATA_TYPE_WHEEL_TICKS_REAR_RIGHT
#endif
#if defined(_WIN32) && defined(DATA_TYPE_SINGLE_TICK)
  #undef DATA_TYPE_SINGLE_TICK
#endif
#if defined(_WIN32) && defined(DATA_TYPE_SPEED)
  #undef DATA_TYPE_SPEED
#endif
#if defined(_WIN32) && defined(DATA_TYPE_GYRO_TEMPERATURE)
  #undef DATA_TYPE_GYRO_TEMPERATURE
#endif
#if defined(_WIN32) && defined(DATA_TYPE_GYRO_ANG_RATE_Y)
  #undef DATA_TYPE_GYRO_ANG_RATE_Y
#endif
#if defined(_WIN32) && defined(DATA_TYPE_GYRO_ANG_RATE_X)
  #undef DATA_TYPE_GYRO_ANG_RATE_X
#endif
#if defined(_WIN32) && defined(DATA_TYPE_ACCELEROMETER_X)
  #undef DATA_TYPE_ACCELEROMETER_X
#endif
#if defined(_WIN32) && defined(DATA_TYPE_ACCELEROMETER_Y)
  #undef DATA_TYPE_ACCELEROMETER_Y
#endif
#if defined(_WIN32) && defined(DATA_TYPE_ACCELEROMETER_Z)
  #undef DATA_TYPE_ACCELEROMETER_Z
#endif

  enum {
    CLASS_ID = 16u,
    MESSAGE_ID = 2u,
    FLAGS_TIME_MARK_SENT_MASK = 3u,
    TIME_MARK_NONE = 0u,
    TIME_MARK_EXT0 = 1u,
    TIME_MARK_EXT = 2u,
    FLAGS_TIME_MARK_EDGE = 4u,
    FLAGS_CALIB_T_TAG_VALID = 8u,
    DATA_FIELD_MASK = 16777215u,
    DATA_TYPE_MASK = 1056964608u,
    DATA_TYPE_SHIFT = 24u,
    DATA_TYPE_NONE = 0u,
    DATA_TYPE_Z_AXIS_GYRO = 5u,
    DATA_TYPE_WHEEL_TICKS_FRONT_LEFT = 6u,
    DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT = 7u,
    DATA_TYPE_WHEEL_TICKS_REAR_LEFT = 8u,
    DATA_TYPE_WHEEL_TICKS_REAR_RIGHT = 9u,
    DATA_TYPE_SINGLE_TICK = 10u,
    DATA_TYPE_SPEED = 11u,
    DATA_TYPE_GYRO_TEMPERATURE = 12u,
    DATA_TYPE_GYRO_ANG_RATE_Y = 13u,
    DATA_TYPE_GYRO_ANG_RATE_X = 14u,
    DATA_TYPE_ACCELEROMETER_X = 16u,
    DATA_TYPE_ACCELEROMETER_Y = 17u,
    DATA_TYPE_ACCELEROMETER_Z = 18u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::EsfMEAS_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::EsfMEAS_<ContainerAllocator> const> ConstPtr;

}; // struct EsfMEAS_

typedef ::ublox_msgs::EsfMEAS_<std::allocator<void> > EsfMEAS;

typedef boost::shared_ptr< ::ublox_msgs::EsfMEAS > EsfMEASPtr;
typedef boost::shared_ptr< ::ublox_msgs::EsfMEAS const> EsfMEASConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::EsfMEAS_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ublox_msgs::EsfMEAS_<ContainerAllocator1> & lhs, const ::ublox_msgs::EsfMEAS_<ContainerAllocator2> & rhs)
{
  return lhs.timeTag == rhs.timeTag &&
    lhs.flags == rhs.flags &&
    lhs.id == rhs.id &&
    lhs.data == rhs.data &&
    lhs.calibTtag == rhs.calibTtag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ublox_msgs::EsfMEAS_<ContainerAllocator1> & lhs, const ::ublox_msgs::EsfMEAS_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ublox_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::EsfMEAS_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::EsfMEAS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::EsfMEAS_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2ee2c25c5689cb0a12cc22f118ece178";
  }

  static const char* value(const ::ublox_msgs::EsfMEAS_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2ee2c25c5689cb0aULL;
  static const uint64_t static_value2 = 0x12cc22f118ece178ULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/EsfMEAS";
  }

  static const char* value(const ::ublox_msgs::EsfMEAS_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ESF-MEAS (0x10 0x02)\n"
"# External Sensor Fusion Measurements\n"
"# \n"
"# Possible data types for the data field are described in the ESF Measurement \n"
"# Data section\n"
"#\n"
"\n"
"uint8 CLASS_ID = 16\n"
"uint8 MESSAGE_ID = 2\n"
"\n"
"uint32 timeTag               # Time tag of measurement generated by external \n"
"                             # sensor\n"
"\n"
"uint16 flags                 # Flags. Set all unused bits to zero:\n"
"uint16 FLAGS_TIME_MARK_SENT_MASK = 3   # Time mark signal was supplied just \n"
"                                       # prior to sending this message: 0 =\n"
"uint16 TIME_MARK_NONE = 0\n"
"uint16 TIME_MARK_EXT0 = 1\n"
"uint16 TIME_MARK_EXT = 2\n"
"uint16 FLAGS_TIME_MARK_EDGE = 4        # Trigger on rising (0) or falling \n"
"                                       # (1) edge of time mark signal\n"
"uint16 FLAGS_CALIB_T_TAG_VALID = 8     # Calibration time tag available. \n"
"                                       # Always set to zero.\n"
"\n"
"uint16 id                              # Identification number of data provider\n"
"\n"
"# Start of repeated block (N times)\n"
"uint32[] data                # data, see mask below\n"
"uint32 DATA_FIELD_MASK = 16777215     # data\n"
"uint32 DATA_TYPE_MASK = 1056964608    # type of data (1..63)\n"
"uint32 DATA_TYPE_SHIFT = 24\n"
"uint32 DATA_TYPE_NONE = 0                     # data field contains no data\n"
"uint32 DATA_TYPE_Z_AXIS_GYRO = 5              # z-axis gyroscope angular rate \n"
"                                              # [deg/s *2^-12 signed]\n"
"uint32 DATA_TYPE_WHEEL_TICKS_FRONT_LEFT = 6   # front-left wheel ticks \n"
"                                              # Bits 0-22: unsigned tick value. \n"
"                                              # Bit 23: direction indicator \n"
"                                              # (0=forward, 1=backward)\n"
"uint32 DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT = 7  # front-right wheel ticks \n"
"                                              # Bits 0-22: unsigned tick value. \n"
"                                              # Bit 23: direction indicator \n"
"                                              # (0=forward, 1=backward)\n"
"uint32 DATA_TYPE_WHEEL_TICKS_REAR_LEFT = 8    # rear-left wheel ticks \n"
"                                              # Bits 0-22: unsigned tick value. \n"
"                                              # Bit 23: direction indicator \n"
"                                              # (0=forward, 1=backward)\n"
"uint32 DATA_TYPE_WHEEL_TICKS_REAR_RIGHT = 9   # rear-right wheel ticks \n"
"                                              # Bits 0-22: unsigned tick value. \n"
"                                              # Bit 23: direction indicator \n"
"                                              # (0=forward, 1=backward)\n"
"uint32 DATA_TYPE_SINGLE_TICK = 10             # single tick (speed tick) \n"
"                                              # Bits 0-22: unsigned tick value. \n"
"                                              # Bit 23: direction indicator \n"
"                                              # (0=forward, 1=backward)\n"
"uint32 DATA_TYPE_SPEED = 11                   # speed m/s * 1e-3 signed\n"
"uint32 DATA_TYPE_GYRO_TEMPERATURE = 12        # gyroscope temperature \n"
"                                              # [deg Celsius * 1e-2 signed]\n"
"uint32 DATA_TYPE_GYRO_ANG_RATE_Y = 13         # y-axis gyroscope angular rate \n"
"                                              # [deg/s *2^-12 signed]\n"
"uint32 DATA_TYPE_GYRO_ANG_RATE_X = 14         # x-axis gyroscope angular rate \n"
"                                              # [deg/s *2^-12 signed]\n"
"uint32 DATA_TYPE_ACCELEROMETER_X = 16         # x-axis accelerometer specific \n"
"                                              # [force m/s^2 *2^-10 signed]\n"
"uint32 DATA_TYPE_ACCELEROMETER_Y = 17         # y-axis accelerometer specific \n"
"                                              # [force m/s^2 *2^-10 signed]\n"
"uint32 DATA_TYPE_ACCELEROMETER_Z = 18         # z-axis accelerometer specific \n"
"                                              # [force m/s^2 *2^-10 signed]\n"
"\n"
"\n"
"\n"
"# End of repeated block\n"
"\n"
"# Start of optional block (size is either 0 or 1)\n"
"uint32[] calibTtag           # Receiver local time calibrated.\n"
"                             # This field must not be supplied when\n"
"                             # calibTtagValid is set to 0 [ms]\n"
"# End of optional block\n"
;
  }

  static const char* value(const ::ublox_msgs::EsfMEAS_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timeTag);
      stream.next(m.flags);
      stream.next(m.id);
      stream.next(m.data);
      stream.next(m.calibTtag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EsfMEAS_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::EsfMEAS_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::EsfMEAS_<ContainerAllocator>& v)
  {
    s << indent << "timeTag: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.timeTag);
    s << indent << "flags: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.flags);
    s << indent << "id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.id);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "calibTtag[]" << std::endl;
    for (size_t i = 0; i < v.calibTtag.size(); ++i)
    {
      s << indent << "  calibTtag[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.calibTtag[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_ESFMEAS_H
