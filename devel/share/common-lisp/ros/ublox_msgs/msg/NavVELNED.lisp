; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavVELNED.msg.html

(cl:defclass <NavVELNED> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (velN
    :reader velN
    :initarg :velN
    :type cl:integer
    :initform 0)
   (velE
    :reader velE
    :initarg :velE
    :type cl:integer
    :initform 0)
   (velD
    :reader velD
    :initarg :velD
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (gSpeed
    :reader gSpeed
    :initarg :gSpeed
    :type cl:integer
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:integer
    :initform 0)
   (sAcc
    :reader sAcc
    :initarg :sAcc
    :type cl:integer
    :initform 0)
   (cAcc
    :reader cAcc
    :initarg :cAcc
    :type cl:integer
    :initform 0))
)

(cl:defclass NavVELNED (<NavVELNED>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavVELNED>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavVELNED)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavVELNED> is deprecated: use ublox_msgs-msg:NavVELNED instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'velN-val :lambda-list '(m))
(cl:defmethod velN-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:velN-val is deprecated.  Use ublox_msgs-msg:velN instead.")
  (velN m))

(cl:ensure-generic-function 'velE-val :lambda-list '(m))
(cl:defmethod velE-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:velE-val is deprecated.  Use ublox_msgs-msg:velE instead.")
  (velE m))

(cl:ensure-generic-function 'velD-val :lambda-list '(m))
(cl:defmethod velD-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:velD-val is deprecated.  Use ublox_msgs-msg:velD instead.")
  (velD m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:speed-val is deprecated.  Use ublox_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'gSpeed-val :lambda-list '(m))
(cl:defmethod gSpeed-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gSpeed-val is deprecated.  Use ublox_msgs-msg:gSpeed instead.")
  (gSpeed m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:heading-val is deprecated.  Use ublox_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'sAcc-val :lambda-list '(m))
(cl:defmethod sAcc-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sAcc-val is deprecated.  Use ublox_msgs-msg:sAcc instead.")
  (sAcc m))

(cl:ensure-generic-function 'cAcc-val :lambda-list '(m))
(cl:defmethod cAcc-val ((m <NavVELNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cAcc-val is deprecated.  Use ublox_msgs-msg:cAcc instead.")
  (cAcc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavVELNED>)))
    "Constants for message type '<NavVELNED>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 18))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavVELNED)))
    "Constants for message type 'NavVELNED"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 18))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavVELNED>) ostream)
  "Serializes a message object of type '<NavVELNED>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'velN)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'velE)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'velD)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gSpeed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gSpeed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gSpeed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gSpeed)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'heading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cAcc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavVELNED>) istream)
  "Deserializes a message object of type '<NavVELNED>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velN) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velE) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velD) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gSpeed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gSpeed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gSpeed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gSpeed)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'heading) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cAcc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavVELNED>)))
  "Returns string type for a message object of type '<NavVELNED>"
  "ublox_msgs/NavVELNED")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavVELNED)))
  "Returns string type for a message object of type 'NavVELNED"
  "ublox_msgs/NavVELNED")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavVELNED>)))
  "Returns md5sum for a message object of type '<NavVELNED>"
  "b03402bb86164e74f01e04bff1850150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavVELNED)))
  "Returns md5sum for a message object of type 'NavVELNED"
  "b03402bb86164e74f01e04bff1850150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavVELNED>)))
  "Returns full string definition for message of type '<NavVELNED>"
  (cl:format cl:nil "# NAV-VELNED (0x01 0x12)~%# Velocity Solution in NED~%#~%# See important comments concerning validity of velocity given in section~%# Navigation Output Filters.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 18~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%int32 velN              # NED north velocity [cm/s]~%int32 velE              # NED east velocity [cm/s]~%int32 velD              # NED down velocity [cm/s]~%uint32 speed            # Speed (3-D) [cm/s]~%uint32 gSpeed           # Ground Speed (2-D) [cm/s]~%int32 heading           # Heading of motion 2-D [deg / 1e-5]~%uint32 sAcc             # Speed Accuracy Estimate [cm/s]~%uint32 cAcc             # Course / Heading Accuracy Estimate [deg / 1e-5]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavVELNED)))
  "Returns full string definition for message of type 'NavVELNED"
  (cl:format cl:nil "# NAV-VELNED (0x01 0x12)~%# Velocity Solution in NED~%#~%# See important comments concerning validity of velocity given in section~%# Navigation Output Filters.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 18~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%int32 velN              # NED north velocity [cm/s]~%int32 velE              # NED east velocity [cm/s]~%int32 velD              # NED down velocity [cm/s]~%uint32 speed            # Speed (3-D) [cm/s]~%uint32 gSpeed           # Ground Speed (2-D) [cm/s]~%int32 heading           # Heading of motion 2-D [deg / 1e-5]~%uint32 sAcc             # Speed Accuracy Estimate [cm/s]~%uint32 cAcc             # Course / Heading Accuracy Estimate [deg / 1e-5]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavVELNED>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavVELNED>))
  "Converts a ROS message object to a list"
  (cl:list 'NavVELNED
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':velN (velN msg))
    (cl:cons ':velE (velE msg))
    (cl:cons ':velD (velD msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':gSpeed (gSpeed msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':sAcc (sAcc msg))
    (cl:cons ':cAcc (cAcc msg))
))
