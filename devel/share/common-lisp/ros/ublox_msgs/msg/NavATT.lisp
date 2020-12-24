; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavATT.msg.html

(cl:defclass <NavATT> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (roll
    :reader roll
    :initarg :roll
    :type cl:integer
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:integer
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:integer
    :initform 0)
   (accRoll
    :reader accRoll
    :initarg :accRoll
    :type cl:integer
    :initform 0)
   (accPitch
    :reader accPitch
    :initarg :accPitch
    :type cl:integer
    :initform 0)
   (accHeading
    :reader accHeading
    :initarg :accHeading
    :type cl:integer
    :initform 0))
)

(cl:defclass NavATT (<NavATT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavATT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavATT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavATT> is deprecated: use ublox_msgs-msg:NavATT instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:roll-val is deprecated.  Use ublox_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pitch-val is deprecated.  Use ublox_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:heading-val is deprecated.  Use ublox_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'accRoll-val :lambda-list '(m))
(cl:defmethod accRoll-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:accRoll-val is deprecated.  Use ublox_msgs-msg:accRoll instead.")
  (accRoll m))

(cl:ensure-generic-function 'accPitch-val :lambda-list '(m))
(cl:defmethod accPitch-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:accPitch-val is deprecated.  Use ublox_msgs-msg:accPitch instead.")
  (accPitch m))

(cl:ensure-generic-function 'accHeading-val :lambda-list '(m))
(cl:defmethod accHeading-val ((m <NavATT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:accHeading-val is deprecated.  Use ublox_msgs-msg:accHeading instead.")
  (accHeading m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavATT>)))
    "Constants for message type '<NavATT>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavATT)))
    "Constants for message type 'NavATT"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavATT>) ostream)
  "Serializes a message object of type '<NavATT>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:let* ((signed (cl:slot-value msg 'roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'heading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accRoll)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accRoll)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accRoll)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accRoll)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accPitch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accPitch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accPitch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accPitch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accHeading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accHeading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accHeading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accHeading)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavATT>) istream)
  "Deserializes a message object of type '<NavATT>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'heading) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accRoll)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accRoll)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accRoll)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accRoll)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accPitch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accPitch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accPitch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accPitch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accHeading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accHeading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accHeading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accHeading)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavATT>)))
  "Returns string type for a message object of type '<NavATT>"
  "ublox_msgs/NavATT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavATT)))
  "Returns string type for a message object of type 'NavATT"
  "ublox_msgs/NavATT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavATT>)))
  "Returns md5sum for a message object of type '<NavATT>"
  "5d7fd152cc974cdd6905d89f564451b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavATT)))
  "Returns md5sum for a message object of type 'NavATT"
  "5d7fd152cc974cdd6905d89f564451b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavATT>)))
  "Returns full string definition for message of type '<NavATT>"
  (cl:format cl:nil "# NAV-ATT (0x01 0x05)~%# Attitude Solution~%#~%# This message outputs the attitude solution as roll, pitch and heading angles.~%# Supported on ADR and UDR products.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 5~%~%uint32 iTOW               # GPS time of week of the navigation epoch [ms]~%uint8 version             # Message version (0 for this version)~%~%uint8[3] reserved0        # Reserved~%~%int32 roll                # Vehicle roll. [deg / 1e-5]~%int32 pitch               # Vehicle pitch. [deg / 1e-5]~%int32 heading             # Vehicle heading. [deg / 1e-5]~%uint32 accRoll            # Vehicle roll accuracy (if null, roll angle is not ~%                          # available). [deg / 1e-5]~%uint32 accPitch           # Vehicle pitch accuracy (if null, pitch angle is not ~%                          # available). [deg / 1e-5]~%uint32 accHeading         # Vehicle heading accuracy [deg / 1e-5]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavATT)))
  "Returns full string definition for message of type 'NavATT"
  (cl:format cl:nil "# NAV-ATT (0x01 0x05)~%# Attitude Solution~%#~%# This message outputs the attitude solution as roll, pitch and heading angles.~%# Supported on ADR and UDR products.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 5~%~%uint32 iTOW               # GPS time of week of the navigation epoch [ms]~%uint8 version             # Message version (0 for this version)~%~%uint8[3] reserved0        # Reserved~%~%int32 roll                # Vehicle roll. [deg / 1e-5]~%int32 pitch               # Vehicle pitch. [deg / 1e-5]~%int32 heading             # Vehicle heading. [deg / 1e-5]~%uint32 accRoll            # Vehicle roll accuracy (if null, roll angle is not ~%                          # available). [deg / 1e-5]~%uint32 accPitch           # Vehicle pitch accuracy (if null, pitch angle is not ~%                          # available). [deg / 1e-5]~%uint32 accHeading         # Vehicle heading accuracy [deg / 1e-5]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavATT>))
  (cl:+ 0
     4
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavATT>))
  "Converts a ROS message object to a list"
  (cl:list 'NavATT
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':version (version msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':accRoll (accRoll msg))
    (cl:cons ':accPitch (accPitch msg))
    (cl:cons ':accHeading (accHeading msg))
))
