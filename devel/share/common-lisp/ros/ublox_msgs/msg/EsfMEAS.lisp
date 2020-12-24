; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude EsfMEAS.msg.html

(cl:defclass <EsfMEAS> (roslisp-msg-protocol:ros-message)
  ((timeTag
    :reader timeTag
    :initarg :timeTag
    :type cl:integer
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (calibTtag
    :reader calibTtag
    :initarg :calibTtag
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass EsfMEAS (<EsfMEAS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EsfMEAS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EsfMEAS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<EsfMEAS> is deprecated: use ublox_msgs-msg:EsfMEAS instead.")))

(cl:ensure-generic-function 'timeTag-val :lambda-list '(m))
(cl:defmethod timeTag-val ((m <EsfMEAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:timeTag-val is deprecated.  Use ublox_msgs-msg:timeTag instead.")
  (timeTag m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <EsfMEAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <EsfMEAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:id-val is deprecated.  Use ublox_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EsfMEAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:data-val is deprecated.  Use ublox_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'calibTtag-val :lambda-list '(m))
(cl:defmethod calibTtag-val ((m <EsfMEAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:calibTtag-val is deprecated.  Use ublox_msgs-msg:calibTtag instead.")
  (calibTtag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EsfMEAS>)))
    "Constants for message type '<EsfMEAS>"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 2)
    (:FLAGS_TIME_MARK_SENT_MASK . 3)
    (:TIME_MARK_NONE . 0)
    (:TIME_MARK_EXT0 . 1)
    (:TIME_MARK_EXT . 2)
    (:FLAGS_TIME_MARK_EDGE . 4)
    (:FLAGS_CALIB_T_TAG_VALID . 8)
    (:DATA_FIELD_MASK . 16777215)
    (:DATA_TYPE_MASK . 1056964608)
    (:DATA_TYPE_SHIFT . 24)
    (:DATA_TYPE_NONE . 0)
    (:DATA_TYPE_Z_AXIS_GYRO . 5)
    (:DATA_TYPE_WHEEL_TICKS_FRONT_LEFT . 6)
    (:DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT . 7)
    (:DATA_TYPE_WHEEL_TICKS_REAR_LEFT . 8)
    (:DATA_TYPE_WHEEL_TICKS_REAR_RIGHT . 9)
    (:DATA_TYPE_SINGLE_TICK . 10)
    (:DATA_TYPE_SPEED . 11)
    (:DATA_TYPE_GYRO_TEMPERATURE . 12)
    (:DATA_TYPE_GYRO_ANG_RATE_Y . 13)
    (:DATA_TYPE_GYRO_ANG_RATE_X . 14)
    (:DATA_TYPE_ACCELEROMETER_X . 16)
    (:DATA_TYPE_ACCELEROMETER_Y . 17)
    (:DATA_TYPE_ACCELEROMETER_Z . 18))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EsfMEAS)))
    "Constants for message type 'EsfMEAS"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 2)
    (:FLAGS_TIME_MARK_SENT_MASK . 3)
    (:TIME_MARK_NONE . 0)
    (:TIME_MARK_EXT0 . 1)
    (:TIME_MARK_EXT . 2)
    (:FLAGS_TIME_MARK_EDGE . 4)
    (:FLAGS_CALIB_T_TAG_VALID . 8)
    (:DATA_FIELD_MASK . 16777215)
    (:DATA_TYPE_MASK . 1056964608)
    (:DATA_TYPE_SHIFT . 24)
    (:DATA_TYPE_NONE . 0)
    (:DATA_TYPE_Z_AXIS_GYRO . 5)
    (:DATA_TYPE_WHEEL_TICKS_FRONT_LEFT . 6)
    (:DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT . 7)
    (:DATA_TYPE_WHEEL_TICKS_REAR_LEFT . 8)
    (:DATA_TYPE_WHEEL_TICKS_REAR_RIGHT . 9)
    (:DATA_TYPE_SINGLE_TICK . 10)
    (:DATA_TYPE_SPEED . 11)
    (:DATA_TYPE_GYRO_TEMPERATURE . 12)
    (:DATA_TYPE_GYRO_ANG_RATE_Y . 13)
    (:DATA_TYPE_GYRO_ANG_RATE_X . 14)
    (:DATA_TYPE_ACCELEROMETER_X . 16)
    (:DATA_TYPE_ACCELEROMETER_Y . 17)
    (:DATA_TYPE_ACCELEROMETER_Z . 18))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EsfMEAS>) ostream)
  "Serializes a message object of type '<EsfMEAS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeTag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeTag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeTag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeTag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'calibTtag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'calibTtag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EsfMEAS>) istream)
  "Deserializes a message object of type '<EsfMEAS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeTag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeTag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeTag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeTag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'calibTtag) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'calibTtag)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EsfMEAS>)))
  "Returns string type for a message object of type '<EsfMEAS>"
  "ublox_msgs/EsfMEAS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EsfMEAS)))
  "Returns string type for a message object of type 'EsfMEAS"
  "ublox_msgs/EsfMEAS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EsfMEAS>)))
  "Returns md5sum for a message object of type '<EsfMEAS>"
  "2ee2c25c5689cb0a12cc22f118ece178")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EsfMEAS)))
  "Returns md5sum for a message object of type 'EsfMEAS"
  "2ee2c25c5689cb0a12cc22f118ece178")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EsfMEAS>)))
  "Returns full string definition for message of type '<EsfMEAS>"
  (cl:format cl:nil "# ESF-MEAS (0x10 0x02)~%# External Sensor Fusion Measurements~%# ~%# Possible data types for the data field are described in the ESF Measurement ~%# Data section~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 2~%~%uint32 timeTag               # Time tag of measurement generated by external ~%                             # sensor~%~%uint16 flags                 # Flags. Set all unused bits to zero:~%uint16 FLAGS_TIME_MARK_SENT_MASK = 3   # Time mark signal was supplied just ~%                                       # prior to sending this message: 0 =~%uint16 TIME_MARK_NONE = 0~%uint16 TIME_MARK_EXT0 = 1~%uint16 TIME_MARK_EXT = 2~%uint16 FLAGS_TIME_MARK_EDGE = 4        # Trigger on rising (0) or falling ~%                                       # (1) edge of time mark signal~%uint16 FLAGS_CALIB_T_TAG_VALID = 8     # Calibration time tag available. ~%                                       # Always set to zero.~%~%uint16 id                              # Identification number of data provider~%~%# Start of repeated block (N times)~%uint32[] data                # data, see mask below~%uint32 DATA_FIELD_MASK = 16777215     # data~%uint32 DATA_TYPE_MASK = 1056964608    # type of data (1..63)~%uint32 DATA_TYPE_SHIFT = 24~%uint32 DATA_TYPE_NONE = 0                     # data field contains no data~%uint32 DATA_TYPE_Z_AXIS_GYRO = 5              # z-axis gyroscope angular rate ~%                                              # [deg/s *2^-12 signed]~%uint32 DATA_TYPE_WHEEL_TICKS_FRONT_LEFT = 6   # front-left wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT = 7  # front-right wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_WHEEL_TICKS_REAR_LEFT = 8    # rear-left wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_WHEEL_TICKS_REAR_RIGHT = 9   # rear-right wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_SINGLE_TICK = 10             # single tick (speed tick) ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_SPEED = 11                   # speed m/s * 1e-3 signed~%uint32 DATA_TYPE_GYRO_TEMPERATURE = 12        # gyroscope temperature ~%                                              # [deg Celsius * 1e-2 signed]~%uint32 DATA_TYPE_GYRO_ANG_RATE_Y = 13         # y-axis gyroscope angular rate ~%                                              # [deg/s *2^-12 signed]~%uint32 DATA_TYPE_GYRO_ANG_RATE_X = 14         # x-axis gyroscope angular rate ~%                                              # [deg/s *2^-12 signed]~%uint32 DATA_TYPE_ACCELEROMETER_X = 16         # x-axis accelerometer specific ~%                                              # [force m/s^2 *2^-10 signed]~%uint32 DATA_TYPE_ACCELEROMETER_Y = 17         # y-axis accelerometer specific ~%                                              # [force m/s^2 *2^-10 signed]~%uint32 DATA_TYPE_ACCELEROMETER_Z = 18         # z-axis accelerometer specific ~%                                              # [force m/s^2 *2^-10 signed]~%~%~%~%# End of repeated block~%~%# Start of optional block (size is either 0 or 1)~%uint32[] calibTtag           # Receiver local time calibrated.~%                             # This field must not be supplied when~%                             # calibTtagValid is set to 0 [ms]~%# End of optional block~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EsfMEAS)))
  "Returns full string definition for message of type 'EsfMEAS"
  (cl:format cl:nil "# ESF-MEAS (0x10 0x02)~%# External Sensor Fusion Measurements~%# ~%# Possible data types for the data field are described in the ESF Measurement ~%# Data section~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 2~%~%uint32 timeTag               # Time tag of measurement generated by external ~%                             # sensor~%~%uint16 flags                 # Flags. Set all unused bits to zero:~%uint16 FLAGS_TIME_MARK_SENT_MASK = 3   # Time mark signal was supplied just ~%                                       # prior to sending this message: 0 =~%uint16 TIME_MARK_NONE = 0~%uint16 TIME_MARK_EXT0 = 1~%uint16 TIME_MARK_EXT = 2~%uint16 FLAGS_TIME_MARK_EDGE = 4        # Trigger on rising (0) or falling ~%                                       # (1) edge of time mark signal~%uint16 FLAGS_CALIB_T_TAG_VALID = 8     # Calibration time tag available. ~%                                       # Always set to zero.~%~%uint16 id                              # Identification number of data provider~%~%# Start of repeated block (N times)~%uint32[] data                # data, see mask below~%uint32 DATA_FIELD_MASK = 16777215     # data~%uint32 DATA_TYPE_MASK = 1056964608    # type of data (1..63)~%uint32 DATA_TYPE_SHIFT = 24~%uint32 DATA_TYPE_NONE = 0                     # data field contains no data~%uint32 DATA_TYPE_Z_AXIS_GYRO = 5              # z-axis gyroscope angular rate ~%                                              # [deg/s *2^-12 signed]~%uint32 DATA_TYPE_WHEEL_TICKS_FRONT_LEFT = 6   # front-left wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT = 7  # front-right wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_WHEEL_TICKS_REAR_LEFT = 8    # rear-left wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_WHEEL_TICKS_REAR_RIGHT = 9   # rear-right wheel ticks ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_SINGLE_TICK = 10             # single tick (speed tick) ~%                                              # Bits 0-22: unsigned tick value. ~%                                              # Bit 23: direction indicator ~%                                              # (0=forward, 1=backward)~%uint32 DATA_TYPE_SPEED = 11                   # speed m/s * 1e-3 signed~%uint32 DATA_TYPE_GYRO_TEMPERATURE = 12        # gyroscope temperature ~%                                              # [deg Celsius * 1e-2 signed]~%uint32 DATA_TYPE_GYRO_ANG_RATE_Y = 13         # y-axis gyroscope angular rate ~%                                              # [deg/s *2^-12 signed]~%uint32 DATA_TYPE_GYRO_ANG_RATE_X = 14         # x-axis gyroscope angular rate ~%                                              # [deg/s *2^-12 signed]~%uint32 DATA_TYPE_ACCELEROMETER_X = 16         # x-axis accelerometer specific ~%                                              # [force m/s^2 *2^-10 signed]~%uint32 DATA_TYPE_ACCELEROMETER_Y = 17         # y-axis accelerometer specific ~%                                              # [force m/s^2 *2^-10 signed]~%uint32 DATA_TYPE_ACCELEROMETER_Z = 18         # z-axis accelerometer specific ~%                                              # [force m/s^2 *2^-10 signed]~%~%~%~%# End of repeated block~%~%# Start of optional block (size is either 0 or 1)~%uint32[] calibTtag           # Receiver local time calibrated.~%                             # This field must not be supplied when~%                             # calibTtagValid is set to 0 [ms]~%# End of optional block~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EsfMEAS>))
  (cl:+ 0
     4
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'calibTtag) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EsfMEAS>))
  "Converts a ROS message object to a list"
  (cl:list 'EsfMEAS
    (cl:cons ':timeTag (timeTag msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':id (id msg))
    (cl:cons ':data (data msg))
    (cl:cons ':calibTtag (calibTtag msg))
))
