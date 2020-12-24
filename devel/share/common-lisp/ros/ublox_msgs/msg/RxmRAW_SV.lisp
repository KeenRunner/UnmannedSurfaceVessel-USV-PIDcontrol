; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmRAW_SV.msg.html

(cl:defclass <RxmRAW_SV> (roslisp-msg-protocol:ros-message)
  ((cpMes
    :reader cpMes
    :initarg :cpMes
    :type cl:float
    :initform 0.0)
   (prMes
    :reader prMes
    :initarg :prMes
    :type cl:float
    :initform 0.0)
   (doMes
    :reader doMes
    :initarg :doMes
    :type cl:float
    :initform 0.0)
   (sv
    :reader sv
    :initarg :sv
    :type cl:fixnum
    :initform 0)
   (mesQI
    :reader mesQI
    :initarg :mesQI
    :type cl:fixnum
    :initform 0)
   (cno
    :reader cno
    :initarg :cno
    :type cl:fixnum
    :initform 0)
   (lli
    :reader lli
    :initarg :lli
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxmRAW_SV (<RxmRAW_SV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmRAW_SV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmRAW_SV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmRAW_SV> is deprecated: use ublox_msgs-msg:RxmRAW_SV instead.")))

(cl:ensure-generic-function 'cpMes-val :lambda-list '(m))
(cl:defmethod cpMes-val ((m <RxmRAW_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cpMes-val is deprecated.  Use ublox_msgs-msg:cpMes instead.")
  (cpMes m))

(cl:ensure-generic-function 'prMes-val :lambda-list '(m))
(cl:defmethod prMes-val ((m <RxmRAW_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prMes-val is deprecated.  Use ublox_msgs-msg:prMes instead.")
  (prMes m))

(cl:ensure-generic-function 'doMes-val :lambda-list '(m))
(cl:defmethod doMes-val ((m <RxmRAW_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:doMes-val is deprecated.  Use ublox_msgs-msg:doMes instead.")
  (doMes m))

(cl:ensure-generic-function 'sv-val :lambda-list '(m))
(cl:defmethod sv-val ((m <RxmRAW_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sv-val is deprecated.  Use ublox_msgs-msg:sv instead.")
  (sv m))

(cl:ensure-generic-function 'mesQI-val :lambda-list '(m))
(cl:defmethod mesQI-val ((m <RxmRAW_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:mesQI-val is deprecated.  Use ublox_msgs-msg:mesQI instead.")
  (mesQI m))

(cl:ensure-generic-function 'cno-val :lambda-list '(m))
(cl:defmethod cno-val ((m <RxmRAW_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cno-val is deprecated.  Use ublox_msgs-msg:cno instead.")
  (cno m))

(cl:ensure-generic-function 'lli-val :lambda-list '(m))
(cl:defmethod lli-val ((m <RxmRAW_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:lli-val is deprecated.  Use ublox_msgs-msg:lli instead.")
  (lli m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmRAW_SV>) ostream)
  "Serializes a message object of type '<RxmRAW_SV>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cpMes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prMes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doMes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sv)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mesQI)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lli)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmRAW_SV>) istream)
  "Deserializes a message object of type '<RxmRAW_SV>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpMes) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prMes) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doMes) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sv)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mesQI) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cno) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lli)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmRAW_SV>)))
  "Returns string type for a message object of type '<RxmRAW_SV>"
  "ublox_msgs/RxmRAW_SV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmRAW_SV)))
  "Returns string type for a message object of type 'RxmRAW_SV"
  "ublox_msgs/RxmRAW_SV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmRAW_SV>)))
  "Returns md5sum for a message object of type '<RxmRAW_SV>"
  "4b32efd29577416a2c280e629abcb69a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmRAW_SV)))
  "Returns md5sum for a message object of type 'RxmRAW_SV"
  "4b32efd29577416a2c280e629abcb69a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmRAW_SV>)))
  "Returns full string definition for message of type '<RxmRAW_SV>"
  (cl:format cl:nil "# see message RxmRAW~%#~%~%float64 cpMes             # Carrier phase measurement [L1 cycles]~%float64 prMes             # Pseudorange measurement [m]~%float32 doMes             # Doppler measurement [Hz]~%~%uint8 sv                  # Space Vehicle Number~%int8 mesQI                # Nav Measurements Quality Indicator~%                          #  >=4 : PR+DO OK~%                          #  >=5 : PR+DO+CP OK~%                          #  <6 : likely loss of carrier lock in previous ~%                          #       interval~%int8 cno                  # Signal strength C/No. [dbHz]~%uint8 lli                 # Loss of lock indicator (RINEX definition)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmRAW_SV)))
  "Returns full string definition for message of type 'RxmRAW_SV"
  (cl:format cl:nil "# see message RxmRAW~%#~%~%float64 cpMes             # Carrier phase measurement [L1 cycles]~%float64 prMes             # Pseudorange measurement [m]~%float32 doMes             # Doppler measurement [Hz]~%~%uint8 sv                  # Space Vehicle Number~%int8 mesQI                # Nav Measurements Quality Indicator~%                          #  >=4 : PR+DO OK~%                          #  >=5 : PR+DO+CP OK~%                          #  <6 : likely loss of carrier lock in previous ~%                          #       interval~%int8 cno                  # Signal strength C/No. [dbHz]~%uint8 lli                 # Loss of lock indicator (RINEX definition)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmRAW_SV>))
  (cl:+ 0
     8
     8
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmRAW_SV>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmRAW_SV
    (cl:cons ':cpMes (cpMes msg))
    (cl:cons ':prMes (prMes msg))
    (cl:cons ':doMes (doMes msg))
    (cl:cons ':sv (sv msg))
    (cl:cons ':mesQI (mesQI msg))
    (cl:cons ':cno (cno msg))
    (cl:cons ':lli (lli msg))
))
