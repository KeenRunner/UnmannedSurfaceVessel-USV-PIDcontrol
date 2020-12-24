; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude TimTM2.msg.html

(cl:defclass <TimTM2> (roslisp-msg-protocol:ros-message)
  ((ch
    :reader ch
    :initarg :ch
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (risingEdgeCount
    :reader risingEdgeCount
    :initarg :risingEdgeCount
    :type cl:fixnum
    :initform 0)
   (wnR
    :reader wnR
    :initarg :wnR
    :type cl:fixnum
    :initform 0)
   (wnF
    :reader wnF
    :initarg :wnF
    :type cl:fixnum
    :initform 0)
   (towMsR
    :reader towMsR
    :initarg :towMsR
    :type cl:integer
    :initform 0)
   (towSubMsR
    :reader towSubMsR
    :initarg :towSubMsR
    :type cl:integer
    :initform 0)
   (towMsF
    :reader towMsF
    :initarg :towMsF
    :type cl:integer
    :initform 0)
   (towSubMsF
    :reader towSubMsF
    :initarg :towSubMsF
    :type cl:integer
    :initform 0)
   (accEst
    :reader accEst
    :initarg :accEst
    :type cl:integer
    :initform 0))
)

(cl:defclass TimTM2 (<TimTM2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimTM2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimTM2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<TimTM2> is deprecated: use ublox_msgs-msg:TimTM2 instead.")))

(cl:ensure-generic-function 'ch-val :lambda-list '(m))
(cl:defmethod ch-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ch-val is deprecated.  Use ublox_msgs-msg:ch instead.")
  (ch m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'risingEdgeCount-val :lambda-list '(m))
(cl:defmethod risingEdgeCount-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:risingEdgeCount-val is deprecated.  Use ublox_msgs-msg:risingEdgeCount instead.")
  (risingEdgeCount m))

(cl:ensure-generic-function 'wnR-val :lambda-list '(m))
(cl:defmethod wnR-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:wnR-val is deprecated.  Use ublox_msgs-msg:wnR instead.")
  (wnR m))

(cl:ensure-generic-function 'wnF-val :lambda-list '(m))
(cl:defmethod wnF-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:wnF-val is deprecated.  Use ublox_msgs-msg:wnF instead.")
  (wnF m))

(cl:ensure-generic-function 'towMsR-val :lambda-list '(m))
(cl:defmethod towMsR-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:towMsR-val is deprecated.  Use ublox_msgs-msg:towMsR instead.")
  (towMsR m))

(cl:ensure-generic-function 'towSubMsR-val :lambda-list '(m))
(cl:defmethod towSubMsR-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:towSubMsR-val is deprecated.  Use ublox_msgs-msg:towSubMsR instead.")
  (towSubMsR m))

(cl:ensure-generic-function 'towMsF-val :lambda-list '(m))
(cl:defmethod towMsF-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:towMsF-val is deprecated.  Use ublox_msgs-msg:towMsF instead.")
  (towMsF m))

(cl:ensure-generic-function 'towSubMsF-val :lambda-list '(m))
(cl:defmethod towSubMsF-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:towSubMsF-val is deprecated.  Use ublox_msgs-msg:towSubMsF instead.")
  (towSubMsF m))

(cl:ensure-generic-function 'accEst-val :lambda-list '(m))
(cl:defmethod accEst-val ((m <TimTM2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:accEst-val is deprecated.  Use ublox_msgs-msg:accEst instead.")
  (accEst m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TimTM2>)))
    "Constants for message type '<TimTM2>"
  '((:CLASS_ID . 13)
    (:MESSAGE_ID . 3)
    (:FLAGS_MODE_RUNNING . 1)
    (:FLAGS_RUN . 2)
    (:FLAGS_NEWFALLINGEDGE . 4)
    (:FLAGS_TIMEBASE_GNSS . 8)
    (:FLAGS_TIMEBASE_UTC . 16)
    (:FLAGS_UTC_AVAIL . 32)
    (:FLAGS_TIME_VALID . 64)
    (:FLAGS_NEWRISINGEDGE . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TimTM2)))
    "Constants for message type 'TimTM2"
  '((:CLASS_ID . 13)
    (:MESSAGE_ID . 3)
    (:FLAGS_MODE_RUNNING . 1)
    (:FLAGS_RUN . 2)
    (:FLAGS_NEWFALLINGEDGE . 4)
    (:FLAGS_TIMEBASE_GNSS . 8)
    (:FLAGS_TIMEBASE_UTC . 16)
    (:FLAGS_UTC_AVAIL . 32)
    (:FLAGS_TIME_VALID . 64)
    (:FLAGS_NEWRISINGEDGE . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimTM2>) ostream)
  "Serializes a message object of type '<TimTM2>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'risingEdgeCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'risingEdgeCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wnR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wnR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wnF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wnF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towSubMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towSubMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towSubMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towSubMsR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towSubMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towSubMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towSubMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towSubMsF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accEst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accEst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accEst)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accEst)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimTM2>) istream)
  "Deserializes a message object of type '<TimTM2>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'risingEdgeCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'risingEdgeCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wnR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wnR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wnF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wnF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towSubMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towSubMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towSubMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towSubMsR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'towSubMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'towSubMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'towSubMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'towSubMsF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accEst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accEst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accEst)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accEst)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimTM2>)))
  "Returns string type for a message object of type '<TimTM2>"
  "ublox_msgs/TimTM2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimTM2)))
  "Returns string type for a message object of type 'TimTM2"
  "ublox_msgs/TimTM2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimTM2>)))
  "Returns md5sum for a message object of type '<TimTM2>"
  "aae2d427845426ce522cb55dffc19b63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimTM2)))
  "Returns md5sum for a message object of type 'TimTM2"
  "aae2d427845426ce522cb55dffc19b63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimTM2>)))
  "Returns full string definition for message of type '<TimTM2>"
  (cl:format cl:nil "# TIM-TM2 (0x0D, 0x03)~%# Time mark data ~%#~%# Description for details.~%# ~%# Supported on:~%#  - u-blox 8 / u-blox M8 with protocol version 22 (only with Timing Products)~%#~%~%uint8 CLASS_ID = 13 ~%uint8 MESSAGE_ID = 3~%~%uint8 ch                     # Channel (i.e. EXTINT) upon which the pulse was measured~%~%uint8 flags                   # Bitmask [newRisingEdge, time, utc, timeBase, , newFallingEdge, run, mode]~%uint8 FLAGS_MODE_RUNNING = 1  # single = 0, running = 1~%uint8 FLAGS_RUN = 2		# armed = 0, stopped = 1~%uint8 FLAGS_NEWFALLINGEDGE = 4 	# new falling edge detected~%uint8 FLAGS_TIMEBASE_GNSS = 8	# 0 = time base is receiver time, 1 = time base is GNSS Time (according to the configuration in CFG-TP5 for tpldx= 0)~%uint8 FLAGS_TIMEBASE_UTC = 16	# Time Base is UTC (the variant according to the configuration in CFG-NAV5~%uint8 FLAGS_UTC_AVAIL = 32	# 0 = utc not available, 1 = utc available~%uint8 FLAGS_TIME_VALID = 64	# 0 = time is not valid, 1 time is valid~%uint8 FLAGS_NEWRISINGEDGE = 128	# new rising edge detected~%~%uint16 risingEdgeCount		# rising edge count~%uint16 wnR			# week number of last rising edge~%uint16 wnF			# week number of last falling edge~%uint32 towMsR			# Tow of rising edge ~%uint32 towSubMsR		# Millisecond Fraction of Tow of rising edge in nanoseconds~%uint32 towMsF			# tow of falling edge~%uint32 towSubMsF		# millisecond fraction of tow of falling edge in nanoseconds~%uint32 accEst			# Accuracy estimate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimTM2)))
  "Returns full string definition for message of type 'TimTM2"
  (cl:format cl:nil "# TIM-TM2 (0x0D, 0x03)~%# Time mark data ~%#~%# Description for details.~%# ~%# Supported on:~%#  - u-blox 8 / u-blox M8 with protocol version 22 (only with Timing Products)~%#~%~%uint8 CLASS_ID = 13 ~%uint8 MESSAGE_ID = 3~%~%uint8 ch                     # Channel (i.e. EXTINT) upon which the pulse was measured~%~%uint8 flags                   # Bitmask [newRisingEdge, time, utc, timeBase, , newFallingEdge, run, mode]~%uint8 FLAGS_MODE_RUNNING = 1  # single = 0, running = 1~%uint8 FLAGS_RUN = 2		# armed = 0, stopped = 1~%uint8 FLAGS_NEWFALLINGEDGE = 4 	# new falling edge detected~%uint8 FLAGS_TIMEBASE_GNSS = 8	# 0 = time base is receiver time, 1 = time base is GNSS Time (according to the configuration in CFG-TP5 for tpldx= 0)~%uint8 FLAGS_TIMEBASE_UTC = 16	# Time Base is UTC (the variant according to the configuration in CFG-NAV5~%uint8 FLAGS_UTC_AVAIL = 32	# 0 = utc not available, 1 = utc available~%uint8 FLAGS_TIME_VALID = 64	# 0 = time is not valid, 1 time is valid~%uint8 FLAGS_NEWRISINGEDGE = 128	# new rising edge detected~%~%uint16 risingEdgeCount		# rising edge count~%uint16 wnR			# week number of last rising edge~%uint16 wnF			# week number of last falling edge~%uint32 towMsR			# Tow of rising edge ~%uint32 towSubMsR		# Millisecond Fraction of Tow of rising edge in nanoseconds~%uint32 towMsF			# tow of falling edge~%uint32 towSubMsF		# millisecond fraction of tow of falling edge in nanoseconds~%uint32 accEst			# Accuracy estimate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimTM2>))
  (cl:+ 0
     1
     1
     2
     2
     2
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimTM2>))
  "Converts a ROS message object to a list"
  (cl:list 'TimTM2
    (cl:cons ':ch (ch msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':risingEdgeCount (risingEdgeCount msg))
    (cl:cons ':wnR (wnR msg))
    (cl:cons ':wnF (wnF msg))
    (cl:cons ':towMsR (towMsR msg))
    (cl:cons ':towSubMsR (towSubMsR msg))
    (cl:cons ':towMsF (towMsF msg))
    (cl:cons ':towSubMsF (towSubMsF msg))
    (cl:cons ':accEst (accEst msg))
))
