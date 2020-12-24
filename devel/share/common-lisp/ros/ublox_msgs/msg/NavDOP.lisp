; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavDOP.msg.html

(cl:defclass <NavDOP> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (gDOP
    :reader gDOP
    :initarg :gDOP
    :type cl:fixnum
    :initform 0)
   (pDOP
    :reader pDOP
    :initarg :pDOP
    :type cl:fixnum
    :initform 0)
   (tDOP
    :reader tDOP
    :initarg :tDOP
    :type cl:fixnum
    :initform 0)
   (vDOP
    :reader vDOP
    :initarg :vDOP
    :type cl:fixnum
    :initform 0)
   (hDOP
    :reader hDOP
    :initarg :hDOP
    :type cl:fixnum
    :initform 0)
   (nDOP
    :reader nDOP
    :initarg :nDOP
    :type cl:fixnum
    :initform 0)
   (eDOP
    :reader eDOP
    :initarg :eDOP
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavDOP (<NavDOP>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavDOP>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavDOP)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavDOP> is deprecated: use ublox_msgs-msg:NavDOP instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'gDOP-val :lambda-list '(m))
(cl:defmethod gDOP-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gDOP-val is deprecated.  Use ublox_msgs-msg:gDOP instead.")
  (gDOP m))

(cl:ensure-generic-function 'pDOP-val :lambda-list '(m))
(cl:defmethod pDOP-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pDOP-val is deprecated.  Use ublox_msgs-msg:pDOP instead.")
  (pDOP m))

(cl:ensure-generic-function 'tDOP-val :lambda-list '(m))
(cl:defmethod tDOP-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:tDOP-val is deprecated.  Use ublox_msgs-msg:tDOP instead.")
  (tDOP m))

(cl:ensure-generic-function 'vDOP-val :lambda-list '(m))
(cl:defmethod vDOP-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:vDOP-val is deprecated.  Use ublox_msgs-msg:vDOP instead.")
  (vDOP m))

(cl:ensure-generic-function 'hDOP-val :lambda-list '(m))
(cl:defmethod hDOP-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hDOP-val is deprecated.  Use ublox_msgs-msg:hDOP instead.")
  (hDOP m))

(cl:ensure-generic-function 'nDOP-val :lambda-list '(m))
(cl:defmethod nDOP-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:nDOP-val is deprecated.  Use ublox_msgs-msg:nDOP instead.")
  (nDOP m))

(cl:ensure-generic-function 'eDOP-val :lambda-list '(m))
(cl:defmethod eDOP-val ((m <NavDOP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:eDOP-val is deprecated.  Use ublox_msgs-msg:eDOP instead.")
  (eDOP m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavDOP>)))
    "Constants for message type '<NavDOP>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavDOP)))
    "Constants for message type 'NavDOP"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavDOP>) ostream)
  "Serializes a message object of type '<NavDOP>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eDOP)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavDOP>) istream)
  "Deserializes a message object of type '<NavDOP>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eDOP)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavDOP>)))
  "Returns string type for a message object of type '<NavDOP>"
  "ublox_msgs/NavDOP")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavDOP)))
  "Returns string type for a message object of type 'NavDOP"
  "ublox_msgs/NavDOP")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavDOP>)))
  "Returns md5sum for a message object of type '<NavDOP>"
  "19fe2210fc48e52c1c14b7d2c567407f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavDOP)))
  "Returns md5sum for a message object of type 'NavDOP"
  "19fe2210fc48e52c1c14b7d2c567407f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavDOP>)))
  "Returns full string definition for message of type '<NavDOP>"
  (cl:format cl:nil "# NAV-DOP (0x01 0x04)~%# Dilution of precision~%#~%# - DOP values are dimensionless.~%# - All DOP values are scaled by a factor of 100. If the unit transmits a value ~%#   of e.g. 156, the DOP value is 1.56.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 4~%~%uint32 iTOW             # GPS Millisecond Time of Week [ms]~%~%uint16 gDOP             # Geometric DOP [1 / 0.01]~%uint16 pDOP             # Position DOP  [1 / 0.01]~%uint16 tDOP             # Time DOP [1 / 0.01]~%uint16 vDOP             # Vertical DOP [1 / 0.01]~%uint16 hDOP             # Horizontal DOP [1 / 0.01]~%uint16 nDOP             # Northing DOP [1 / 0.01]~%uint16 eDOP             # Easting DOP [1 / 0.01]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavDOP)))
  "Returns full string definition for message of type 'NavDOP"
  (cl:format cl:nil "# NAV-DOP (0x01 0x04)~%# Dilution of precision~%#~%# - DOP values are dimensionless.~%# - All DOP values are scaled by a factor of 100. If the unit transmits a value ~%#   of e.g. 156, the DOP value is 1.56.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 4~%~%uint32 iTOW             # GPS Millisecond Time of Week [ms]~%~%uint16 gDOP             # Geometric DOP [1 / 0.01]~%uint16 pDOP             # Position DOP  [1 / 0.01]~%uint16 tDOP             # Time DOP [1 / 0.01]~%uint16 vDOP             # Vertical DOP [1 / 0.01]~%uint16 hDOP             # Horizontal DOP [1 / 0.01]~%uint16 nDOP             # Northing DOP [1 / 0.01]~%uint16 eDOP             # Easting DOP [1 / 0.01]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavDOP>))
  (cl:+ 0
     4
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavDOP>))
  "Converts a ROS message object to a list"
  (cl:list 'NavDOP
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':gDOP (gDOP msg))
    (cl:cons ':pDOP (pDOP msg))
    (cl:cons ':tDOP (tDOP msg))
    (cl:cons ':vDOP (vDOP msg))
    (cl:cons ':hDOP (hDOP msg))
    (cl:cons ':nDOP (nDOP msg))
    (cl:cons ':eDOP (eDOP msg))
))
