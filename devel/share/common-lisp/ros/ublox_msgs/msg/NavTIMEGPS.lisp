; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavTIMEGPS.msg.html

(cl:defclass <NavTIMEGPS> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (fTOW
    :reader fTOW
    :initarg :fTOW
    :type cl:integer
    :initform 0)
   (week
    :reader week
    :initarg :week
    :type cl:fixnum
    :initform 0)
   (leapS
    :reader leapS
    :initarg :leapS
    :type cl:fixnum
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:fixnum
    :initform 0)
   (tAcc
    :reader tAcc
    :initarg :tAcc
    :type cl:integer
    :initform 0))
)

(cl:defclass NavTIMEGPS (<NavTIMEGPS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavTIMEGPS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavTIMEGPS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavTIMEGPS> is deprecated: use ublox_msgs-msg:NavTIMEGPS instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavTIMEGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'fTOW-val :lambda-list '(m))
(cl:defmethod fTOW-val ((m <NavTIMEGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:fTOW-val is deprecated.  Use ublox_msgs-msg:fTOW instead.")
  (fTOW m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <NavTIMEGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:week-val is deprecated.  Use ublox_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'leapS-val :lambda-list '(m))
(cl:defmethod leapS-val ((m <NavTIMEGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:leapS-val is deprecated.  Use ublox_msgs-msg:leapS instead.")
  (leapS m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <NavTIMEGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:valid-val is deprecated.  Use ublox_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'tAcc-val :lambda-list '(m))
(cl:defmethod tAcc-val ((m <NavTIMEGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:tAcc-val is deprecated.  Use ublox_msgs-msg:tAcc instead.")
  (tAcc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavTIMEGPS>)))
    "Constants for message type '<NavTIMEGPS>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 32)
    (:VALID_TOW . 1)
    (:VALID_WEEK . 2)
    (:VALID_LEAP_S . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavTIMEGPS)))
    "Constants for message type 'NavTIMEGPS"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 32)
    (:VALID_TOW . 1)
    (:VALID_WEEK . 2)
    (:VALID_LEAP_S . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavTIMEGPS>) ostream)
  "Serializes a message object of type '<NavTIMEGPS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'fTOW)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'leapS)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tAcc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavTIMEGPS>) istream)
  "Deserializes a message object of type '<NavTIMEGPS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fTOW) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'week) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leapS) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavTIMEGPS>)))
  "Returns string type for a message object of type '<NavTIMEGPS>"
  "ublox_msgs/NavTIMEGPS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavTIMEGPS)))
  "Returns string type for a message object of type 'NavTIMEGPS"
  "ublox_msgs/NavTIMEGPS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavTIMEGPS>)))
  "Returns md5sum for a message object of type '<NavTIMEGPS>"
  "94098180ac3e5e36144a6337c1462f46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavTIMEGPS)))
  "Returns md5sum for a message object of type 'NavTIMEGPS"
  "94098180ac3e5e36144a6337c1462f46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavTIMEGPS>)))
  "Returns full string definition for message of type '<NavTIMEGPS>"
  (cl:format cl:nil "# NAV-TIMEGPS (0x01 0x20)~%# GPS Time Solution~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 32~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%int32 fTOW              # Fractional Nanoseconds remainder of rounded~%                        # ms above, range -500000 .. 500000 [ns]~%int16 week              # GPS week (GPS time)~%~%int8 leapS              # Leap Seconds (GPS-UTC) [s]~%~%uint8 valid             # Validity Flags~%uint8 VALID_TOW = 1        # Valid Time of Week~%uint8 VALID_WEEK = 2       # Valid Week Number~%uint8 VALID_LEAP_S = 4     # Valid Leap Seconds~%~%uint32 tAcc             # Time Accuracy Estimate [ns]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavTIMEGPS)))
  "Returns full string definition for message of type 'NavTIMEGPS"
  (cl:format cl:nil "# NAV-TIMEGPS (0x01 0x20)~%# GPS Time Solution~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 32~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%int32 fTOW              # Fractional Nanoseconds remainder of rounded~%                        # ms above, range -500000 .. 500000 [ns]~%int16 week              # GPS week (GPS time)~%~%int8 leapS              # Leap Seconds (GPS-UTC) [s]~%~%uint8 valid             # Validity Flags~%uint8 VALID_TOW = 1        # Valid Time of Week~%uint8 VALID_WEEK = 2       # Valid Week Number~%uint8 VALID_LEAP_S = 4     # Valid Leap Seconds~%~%uint32 tAcc             # Time Accuracy Estimate [ns]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavTIMEGPS>))
  (cl:+ 0
     4
     4
     2
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavTIMEGPS>))
  "Converts a ROS message object to a list"
  (cl:list 'NavTIMEGPS
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':fTOW (fTOW msg))
    (cl:cons ':week (week msg))
    (cl:cons ':leapS (leapS msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':tAcc (tAcc msg))
))
