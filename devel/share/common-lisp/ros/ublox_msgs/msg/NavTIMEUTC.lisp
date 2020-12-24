; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavTIMEUTC.msg.html

(cl:defclass <NavTIMEUTC> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (tAcc
    :reader tAcc
    :initarg :tAcc
    :type cl:integer
    :initform 0)
   (nano
    :reader nano
    :initarg :nano
    :type cl:integer
    :initform 0)
   (year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0)
   (hour
    :reader hour
    :initarg :hour
    :type cl:fixnum
    :initform 0)
   (min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (sec
    :reader sec
    :initarg :sec
    :type cl:fixnum
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavTIMEUTC (<NavTIMEUTC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavTIMEUTC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavTIMEUTC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavTIMEUTC> is deprecated: use ublox_msgs-msg:NavTIMEUTC instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'tAcc-val :lambda-list '(m))
(cl:defmethod tAcc-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:tAcc-val is deprecated.  Use ublox_msgs-msg:tAcc instead.")
  (tAcc m))

(cl:ensure-generic-function 'nano-val :lambda-list '(m))
(cl:defmethod nano-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:nano-val is deprecated.  Use ublox_msgs-msg:nano instead.")
  (nano m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:year-val is deprecated.  Use ublox_msgs-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:month-val is deprecated.  Use ublox_msgs-msg:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:day-val is deprecated.  Use ublox_msgs-msg:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hour-val is deprecated.  Use ublox_msgs-msg:hour instead.")
  (hour m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:min-val is deprecated.  Use ublox_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sec-val is deprecated.  Use ublox_msgs-msg:sec instead.")
  (sec m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <NavTIMEUTC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:valid-val is deprecated.  Use ublox_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavTIMEUTC>)))
    "Constants for message type '<NavTIMEUTC>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 33)
    (:VALID_TOW . 1)
    (:VALID_WKN . 2)
    (:VALID_UTC . 4)
    (:VALID_UTC_STANDARD_MASK . 240)
    (:UTC_STANDARD_NOT_AVAILABLE . 0)
    (:UTC_STANDARD_CRL . 16)
    (:UTC_STANDARD_NIST . 32)
    (:UTC_STANDARD_USNO . 48)
    (:UTC_STANDARD_BIPM . 64)
    (:UTC_STANDARD_EL . 80)
    (:UTC_STANDARD_SU . 96)
    (:UTC_STANDARD_NTSC . 112)
    (:UTC_STANDARD_UNKNOWN . 240))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavTIMEUTC)))
    "Constants for message type 'NavTIMEUTC"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 33)
    (:VALID_TOW . 1)
    (:VALID_WKN . 2)
    (:VALID_UTC . 4)
    (:VALID_UTC_STANDARD_MASK . 240)
    (:UTC_STANDARD_NOT_AVAILABLE . 0)
    (:UTC_STANDARD_CRL . 16)
    (:UTC_STANDARD_NIST . 32)
    (:UTC_STANDARD_USNO . 48)
    (:UTC_STANDARD_BIPM . 64)
    (:UTC_STANDARD_EL . 80)
    (:UTC_STANDARD_SU . 96)
    (:UTC_STANDARD_NTSC . 112)
    (:UTC_STANDARD_UNKNOWN . 240))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavTIMEUTC>) ostream)
  "Serializes a message object of type '<NavTIMEUTC>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tAcc)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'nano)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavTIMEUTC>) istream)
  "Deserializes a message object of type '<NavTIMEUTC>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nano) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavTIMEUTC>)))
  "Returns string type for a message object of type '<NavTIMEUTC>"
  "ublox_msgs/NavTIMEUTC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavTIMEUTC)))
  "Returns string type for a message object of type 'NavTIMEUTC"
  "ublox_msgs/NavTIMEUTC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavTIMEUTC>)))
  "Returns md5sum for a message object of type '<NavTIMEUTC>"
  "bd39089655ebb13ff8d01cbe3a087db1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavTIMEUTC)))
  "Returns md5sum for a message object of type 'NavTIMEUTC"
  "bd39089655ebb13ff8d01cbe3a087db1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavTIMEUTC>)))
  "Returns full string definition for message of type '<NavTIMEUTC>"
  (cl:format cl:nil "# NAV-TIMEUTC (0x01 0x21)~%# UTC Time Solution~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 33~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%uint32 tAcc             # Time Accuracy Estimate [ns]~%int32 nano              # Fraction of second, range -1e9 .. 1e9 (UTC) [ns]~%uint16 year             # Year, range 1999..2099 (UTC) [y]~%uint8 month             # Month, range 1..12 (UTC) [month]~%uint8 day               # Day of Month, range 1..31 (UTC) [d]~%uint8 hour              # Hour of Day, range 0..23 (UTC) [h]~%uint8 min               # Minute of Hour, range 0..59 (UTC) [min]~%uint8 sec               # Seconds of Minute, range 0..60 (UTC) [s] (60 for ~%                        # leap second)~%~%uint8 valid             # Validity Flags~%uint8 VALID_TOW = 1         # Valid Time of Week~%uint8 VALID_WKN = 2         # Valid Week Number~%uint8 VALID_UTC = 4         # Valid Leap Seconds, i.e. Leap Seconds already known~%uint8 VALID_UTC_STANDARD_MASK = 240  # UTC standard Identifier Bit mask:~%uint8 UTC_STANDARD_NOT_AVAILABLE = 0    # Information not available~%uint8 UTC_STANDARD_CRL = 16             # Communications Research Labratory~%uint8 UTC_STANDARD_NIST = 32            # National Institute of Standards and ~%                                        # Technology (NIST)~%uint8 UTC_STANDARD_USNO = 48            # U.S. Naval Observatory (USNO)~%uint8 UTC_STANDARD_BIPM = 64            # International Bureau of Weights and ~%                                        # Measures (BIPM)~%uint8 UTC_STANDARD_EL = 80              # European Laboratory (tbd)~%uint8 UTC_STANDARD_SU = 96              # Former Soviet Union (SU)~%uint8 UTC_STANDARD_NTSC = 112           # National Time Service Center, China~%uint8 UTC_STANDARD_UNKNOWN = 240~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavTIMEUTC)))
  "Returns full string definition for message of type 'NavTIMEUTC"
  (cl:format cl:nil "# NAV-TIMEUTC (0x01 0x21)~%# UTC Time Solution~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 33~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%uint32 tAcc             # Time Accuracy Estimate [ns]~%int32 nano              # Fraction of second, range -1e9 .. 1e9 (UTC) [ns]~%uint16 year             # Year, range 1999..2099 (UTC) [y]~%uint8 month             # Month, range 1..12 (UTC) [month]~%uint8 day               # Day of Month, range 1..31 (UTC) [d]~%uint8 hour              # Hour of Day, range 0..23 (UTC) [h]~%uint8 min               # Minute of Hour, range 0..59 (UTC) [min]~%uint8 sec               # Seconds of Minute, range 0..60 (UTC) [s] (60 for ~%                        # leap second)~%~%uint8 valid             # Validity Flags~%uint8 VALID_TOW = 1         # Valid Time of Week~%uint8 VALID_WKN = 2         # Valid Week Number~%uint8 VALID_UTC = 4         # Valid Leap Seconds, i.e. Leap Seconds already known~%uint8 VALID_UTC_STANDARD_MASK = 240  # UTC standard Identifier Bit mask:~%uint8 UTC_STANDARD_NOT_AVAILABLE = 0    # Information not available~%uint8 UTC_STANDARD_CRL = 16             # Communications Research Labratory~%uint8 UTC_STANDARD_NIST = 32            # National Institute of Standards and ~%                                        # Technology (NIST)~%uint8 UTC_STANDARD_USNO = 48            # U.S. Naval Observatory (USNO)~%uint8 UTC_STANDARD_BIPM = 64            # International Bureau of Weights and ~%                                        # Measures (BIPM)~%uint8 UTC_STANDARD_EL = 80              # European Laboratory (tbd)~%uint8 UTC_STANDARD_SU = 96              # Former Soviet Union (SU)~%uint8 UTC_STANDARD_NTSC = 112           # National Time Service Center, China~%uint8 UTC_STANDARD_UNKNOWN = 240~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavTIMEUTC>))
  (cl:+ 0
     4
     4
     4
     2
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavTIMEUTC>))
  "Converts a ROS message object to a list"
  (cl:list 'NavTIMEUTC
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':tAcc (tAcc msg))
    (cl:cons ':nano (nano msg))
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':min (min msg))
    (cl:cons ':sec (sec msg))
    (cl:cons ':valid (valid msg))
))
