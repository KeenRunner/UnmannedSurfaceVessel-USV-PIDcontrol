; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavDGPS_SV.msg.html

(cl:defclass <NavDGPS_SV> (roslisp-msg-protocol:ros-message)
  ((svid
    :reader svid
    :initarg :svid
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (ageC
    :reader ageC
    :initarg :ageC
    :type cl:fixnum
    :initform 0)
   (prc
    :reader prc
    :initarg :prc
    :type cl:float
    :initform 0.0)
   (prrc
    :reader prrc
    :initarg :prrc
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavDGPS_SV (<NavDGPS_SV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavDGPS_SV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavDGPS_SV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavDGPS_SV> is deprecated: use ublox_msgs-msg:NavDGPS_SV instead.")))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <NavDGPS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <NavDGPS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'ageC-val :lambda-list '(m))
(cl:defmethod ageC-val ((m <NavDGPS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ageC-val is deprecated.  Use ublox_msgs-msg:ageC instead.")
  (ageC m))

(cl:ensure-generic-function 'prc-val :lambda-list '(m))
(cl:defmethod prc-val ((m <NavDGPS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prc-val is deprecated.  Use ublox_msgs-msg:prc instead.")
  (prc m))

(cl:ensure-generic-function 'prrc-val :lambda-list '(m))
(cl:defmethod prrc-val ((m <NavDGPS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prrc-val is deprecated.  Use ublox_msgs-msg:prrc instead.")
  (prrc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavDGPS_SV>)))
    "Constants for message type '<NavDGPS_SV>"
  '((:FLAGS_CHANNEL_MASK . 15)
    (:FLAGS_DGPS . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavDGPS_SV)))
    "Constants for message type 'NavDGPS_SV"
  '((:FLAGS_CHANNEL_MASK . 15)
    (:FLAGS_DGPS . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavDGPS_SV>) ostream)
  "Serializes a message object of type '<NavDGPS_SV>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ageC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ageC)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prrc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavDGPS_SV>) istream)
  "Deserializes a message object of type '<NavDGPS_SV>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ageC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ageC)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prrc) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavDGPS_SV>)))
  "Returns string type for a message object of type '<NavDGPS_SV>"
  "ublox_msgs/NavDGPS_SV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavDGPS_SV)))
  "Returns string type for a message object of type 'NavDGPS_SV"
  "ublox_msgs/NavDGPS_SV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavDGPS_SV>)))
  "Returns md5sum for a message object of type '<NavDGPS_SV>"
  "c16a60aa23db6f4f1a80cf6720b95063")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavDGPS_SV)))
  "Returns md5sum for a message object of type 'NavDGPS_SV"
  "c16a60aa23db6f4f1a80cf6720b95063")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavDGPS_SV>)))
  "Returns full string definition for message of type '<NavDGPS_SV>"
  (cl:format cl:nil "# see message NavDGPS~%~%uint8 svid              # Satellite ID~%~%uint8 flags             # Bitmask / Channel Number and Usage:~%uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15~%                                # Channel numbers > 15 marked as 15~%uint8 FLAGS_DGPS = 16           # DGPS Used for this SV~%~%uint16 ageC             # Age of latest correction data [ms]~%float32 prc             # Pseudo Range Correction [m]~%float32 prrc            # Pseudo Range Rate Correction [m/s]~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavDGPS_SV)))
  "Returns full string definition for message of type 'NavDGPS_SV"
  (cl:format cl:nil "# see message NavDGPS~%~%uint8 svid              # Satellite ID~%~%uint8 flags             # Bitmask / Channel Number and Usage:~%uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15~%                                # Channel numbers > 15 marked as 15~%uint8 FLAGS_DGPS = 16           # DGPS Used for this SV~%~%uint16 ageC             # Age of latest correction data [ms]~%float32 prc             # Pseudo Range Correction [m]~%float32 prrc            # Pseudo Range Rate Correction [m/s]~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavDGPS_SV>))
  (cl:+ 0
     1
     1
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavDGPS_SV>))
  "Converts a ROS message object to a list"
  (cl:list 'NavDGPS_SV
    (cl:cons ':svid (svid msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':ageC (ageC msg))
    (cl:cons ':prc (prc msg))
    (cl:cons ':prrc (prrc msg))
))
