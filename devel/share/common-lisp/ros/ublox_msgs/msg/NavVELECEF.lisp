; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavVELECEF.msg.html

(cl:defclass <NavVELECEF> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (ecefVX
    :reader ecefVX
    :initarg :ecefVX
    :type cl:integer
    :initform 0)
   (ecefVY
    :reader ecefVY
    :initarg :ecefVY
    :type cl:integer
    :initform 0)
   (ecefVZ
    :reader ecefVZ
    :initarg :ecefVZ
    :type cl:integer
    :initform 0)
   (sAcc
    :reader sAcc
    :initarg :sAcc
    :type cl:integer
    :initform 0))
)

(cl:defclass NavVELECEF (<NavVELECEF>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavVELECEF>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavVELECEF)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavVELECEF> is deprecated: use ublox_msgs-msg:NavVELECEF instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavVELECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'ecefVX-val :lambda-list '(m))
(cl:defmethod ecefVX-val ((m <NavVELECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefVX-val is deprecated.  Use ublox_msgs-msg:ecefVX instead.")
  (ecefVX m))

(cl:ensure-generic-function 'ecefVY-val :lambda-list '(m))
(cl:defmethod ecefVY-val ((m <NavVELECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefVY-val is deprecated.  Use ublox_msgs-msg:ecefVY instead.")
  (ecefVY m))

(cl:ensure-generic-function 'ecefVZ-val :lambda-list '(m))
(cl:defmethod ecefVZ-val ((m <NavVELECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefVZ-val is deprecated.  Use ublox_msgs-msg:ecefVZ instead.")
  (ecefVZ m))

(cl:ensure-generic-function 'sAcc-val :lambda-list '(m))
(cl:defmethod sAcc-val ((m <NavVELECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sAcc-val is deprecated.  Use ublox_msgs-msg:sAcc instead.")
  (sAcc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavVELECEF>)))
    "Constants for message type '<NavVELECEF>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 17))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavVELECEF)))
    "Constants for message type 'NavVELECEF"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 17))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavVELECEF>) ostream)
  "Serializes a message object of type '<NavVELECEF>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ecefVX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefVY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefVZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavVELECEF>) istream)
  "Deserializes a message object of type '<NavVELECEF>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefVX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefVY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefVZ) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavVELECEF>)))
  "Returns string type for a message object of type '<NavVELECEF>"
  "ublox_msgs/NavVELECEF")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavVELECEF)))
  "Returns string type for a message object of type 'NavVELECEF"
  "ublox_msgs/NavVELECEF")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavVELECEF>)))
  "Returns md5sum for a message object of type '<NavVELECEF>"
  "97299f597364a39a6c0e96ed2ee4e702")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavVELECEF)))
  "Returns md5sum for a message object of type 'NavVELECEF"
  "97299f597364a39a6c0e96ed2ee4e702")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavVELECEF>)))
  "Returns full string definition for message of type '<NavVELECEF>"
  (cl:format cl:nil "# NAV-VELECEF (0x01 0x11)~%# Velocity Solution in ECEF~%#~%# See important comments concerning validity of velocity given in section~%# Navigation Output Filters.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 17~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%int32 ecefVX            # ECEF X velocity [cm/s]~%int32 ecefVY            # ECEF Y velocity [cm/s]~%int32 ecefVZ            # ECEF Z velocity [cm/s]~%uint32 sAcc             # Speed Accuracy Estimate [cm/s]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavVELECEF)))
  "Returns full string definition for message of type 'NavVELECEF"
  (cl:format cl:nil "# NAV-VELECEF (0x01 0x11)~%# Velocity Solution in ECEF~%#~%# See important comments concerning validity of velocity given in section~%# Navigation Output Filters.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 17~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%int32 ecefVX            # ECEF X velocity [cm/s]~%int32 ecefVY            # ECEF Y velocity [cm/s]~%int32 ecefVZ            # ECEF Z velocity [cm/s]~%uint32 sAcc             # Speed Accuracy Estimate [cm/s]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavVELECEF>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavVELECEF>))
  "Converts a ROS message object to a list"
  (cl:list 'NavVELECEF
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':ecefVX (ecefVX msg))
    (cl:cons ':ecefVY (ecefVY msg))
    (cl:cons ':ecefVZ (ecefVZ msg))
    (cl:cons ':sAcc (sAcc msg))
))
