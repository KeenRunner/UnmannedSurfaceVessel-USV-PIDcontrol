; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmRAW.msg.html

(cl:defclass <RxmRAW> (roslisp-msg-protocol:ros-message)
  ((rcvTOW
    :reader rcvTOW
    :initarg :rcvTOW
    :type cl:integer
    :initform 0)
   (week
    :reader week
    :initarg :week
    :type cl:fixnum
    :initform 0)
   (numSV
    :reader numSV
    :initarg :numSV
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (sv
    :reader sv
    :initarg :sv
    :type (cl:vector ublox_msgs-msg:RxmRAW_SV)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:RxmRAW_SV :initial-element (cl:make-instance 'ublox_msgs-msg:RxmRAW_SV))))
)

(cl:defclass RxmRAW (<RxmRAW>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmRAW>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmRAW)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmRAW> is deprecated: use ublox_msgs-msg:RxmRAW instead.")))

(cl:ensure-generic-function 'rcvTOW-val :lambda-list '(m))
(cl:defmethod rcvTOW-val ((m <RxmRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:rcvTOW-val is deprecated.  Use ublox_msgs-msg:rcvTOW instead.")
  (rcvTOW m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <RxmRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:week-val is deprecated.  Use ublox_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'numSV-val :lambda-list '(m))
(cl:defmethod numSV-val ((m <RxmRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numSV-val is deprecated.  Use ublox_msgs-msg:numSV instead.")
  (numSV m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RxmRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'sv-val :lambda-list '(m))
(cl:defmethod sv-val ((m <RxmRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sv-val is deprecated.  Use ublox_msgs-msg:sv instead.")
  (sv m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmRAW>)))
    "Constants for message type '<RxmRAW>"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmRAW)))
    "Constants for message type 'RxmRAW"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmRAW>) ostream)
  "Serializes a message object of type '<RxmRAW>"
  (cl:let* ((signed (cl:slot-value msg 'rcvTOW)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmRAW>) istream)
  "Deserializes a message object of type '<RxmRAW>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcvTOW) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'week) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:RxmRAW_SV))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmRAW>)))
  "Returns string type for a message object of type '<RxmRAW>"
  "ublox_msgs/RxmRAW")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmRAW)))
  "Returns string type for a message object of type 'RxmRAW"
  "ublox_msgs/RxmRAW")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmRAW>)))
  "Returns md5sum for a message object of type '<RxmRAW>"
  "d30ff396119937adec288ba58915e228")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmRAW)))
  "Returns md5sum for a message object of type 'RxmRAW"
  "d30ff396119937adec288ba58915e228")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmRAW>)))
  "Returns full string definition for message of type '<RxmRAW>"
  (cl:format cl:nil "# RXM-RAW (0x02 0x10)~%# Raw Measurement Data~%#~%# Supported up to ublox 7 firmware. See RxmRAWX for ublox 8~%# This message contains all information needed to be able to generate a RINEX ~%# observation file.~%# This message outputs pseudorange, doppler and carrier phase measurements for ~%# GPS satellites once signals have been synchronised. No other GNSS types are ~%# currently supported.~%# ~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 16~%~%int32 rcvTOW            # Measurement time of week in receiver local time [s]~%int16 week              # Measurement week number in receiver local time [weeks]~%~%uint8 numSV             # # of satellites following~%uint8 reserved1         # Reserved~%~%RxmRAW_SV[] sv          # numSV times~%~%================================================================================~%MSG: ublox_msgs/RxmRAW_SV~%# see message RxmRAW~%#~%~%float64 cpMes             # Carrier phase measurement [L1 cycles]~%float64 prMes             # Pseudorange measurement [m]~%float32 doMes             # Doppler measurement [Hz]~%~%uint8 sv                  # Space Vehicle Number~%int8 mesQI                # Nav Measurements Quality Indicator~%                          #  >=4 : PR+DO OK~%                          #  >=5 : PR+DO+CP OK~%                          #  <6 : likely loss of carrier lock in previous ~%                          #       interval~%int8 cno                  # Signal strength C/No. [dbHz]~%uint8 lli                 # Loss of lock indicator (RINEX definition)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmRAW)))
  "Returns full string definition for message of type 'RxmRAW"
  (cl:format cl:nil "# RXM-RAW (0x02 0x10)~%# Raw Measurement Data~%#~%# Supported up to ublox 7 firmware. See RxmRAWX for ublox 8~%# This message contains all information needed to be able to generate a RINEX ~%# observation file.~%# This message outputs pseudorange, doppler and carrier phase measurements for ~%# GPS satellites once signals have been synchronised. No other GNSS types are ~%# currently supported.~%# ~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 16~%~%int32 rcvTOW            # Measurement time of week in receiver local time [s]~%int16 week              # Measurement week number in receiver local time [weeks]~%~%uint8 numSV             # # of satellites following~%uint8 reserved1         # Reserved~%~%RxmRAW_SV[] sv          # numSV times~%~%================================================================================~%MSG: ublox_msgs/RxmRAW_SV~%# see message RxmRAW~%#~%~%float64 cpMes             # Carrier phase measurement [L1 cycles]~%float64 prMes             # Pseudorange measurement [m]~%float32 doMes             # Doppler measurement [Hz]~%~%uint8 sv                  # Space Vehicle Number~%int8 mesQI                # Nav Measurements Quality Indicator~%                          #  >=4 : PR+DO OK~%                          #  >=5 : PR+DO+CP OK~%                          #  <6 : likely loss of carrier lock in previous ~%                          #       interval~%int8 cno                  # Signal strength C/No. [dbHz]~%uint8 lli                 # Loss of lock indicator (RINEX definition)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmRAW>))
  (cl:+ 0
     4
     2
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmRAW>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmRAW
    (cl:cons ':rcvTOW (rcvTOW msg))
    (cl:cons ':week (week msg))
    (cl:cons ':numSV (numSV msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':sv (sv msg))
))
