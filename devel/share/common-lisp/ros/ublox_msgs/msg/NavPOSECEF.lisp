; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavPOSECEF.msg.html

(cl:defclass <NavPOSECEF> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (ecefX
    :reader ecefX
    :initarg :ecefX
    :type cl:integer
    :initform 0)
   (ecefY
    :reader ecefY
    :initarg :ecefY
    :type cl:integer
    :initform 0)
   (ecefZ
    :reader ecefZ
    :initarg :ecefZ
    :type cl:integer
    :initform 0)
   (pAcc
    :reader pAcc
    :initarg :pAcc
    :type cl:integer
    :initform 0))
)

(cl:defclass NavPOSECEF (<NavPOSECEF>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPOSECEF>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPOSECEF)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavPOSECEF> is deprecated: use ublox_msgs-msg:NavPOSECEF instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavPOSECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'ecefX-val :lambda-list '(m))
(cl:defmethod ecefX-val ((m <NavPOSECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefX-val is deprecated.  Use ublox_msgs-msg:ecefX instead.")
  (ecefX m))

(cl:ensure-generic-function 'ecefY-val :lambda-list '(m))
(cl:defmethod ecefY-val ((m <NavPOSECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefY-val is deprecated.  Use ublox_msgs-msg:ecefY instead.")
  (ecefY m))

(cl:ensure-generic-function 'ecefZ-val :lambda-list '(m))
(cl:defmethod ecefZ-val ((m <NavPOSECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefZ-val is deprecated.  Use ublox_msgs-msg:ecefZ instead.")
  (ecefZ m))

(cl:ensure-generic-function 'pAcc-val :lambda-list '(m))
(cl:defmethod pAcc-val ((m <NavPOSECEF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pAcc-val is deprecated.  Use ublox_msgs-msg:pAcc instead.")
  (pAcc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavPOSECEF>)))
    "Constants for message type '<NavPOSECEF>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavPOSECEF)))
    "Constants for message type 'NavPOSECEF"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPOSECEF>) ostream)
  "Serializes a message object of type '<NavPOSECEF>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ecefX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pAcc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPOSECEF>) istream)
  "Deserializes a message object of type '<NavPOSECEF>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefZ) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPOSECEF>)))
  "Returns string type for a message object of type '<NavPOSECEF>"
  "ublox_msgs/NavPOSECEF")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPOSECEF)))
  "Returns string type for a message object of type 'NavPOSECEF"
  "ublox_msgs/NavPOSECEF")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPOSECEF>)))
  "Returns md5sum for a message object of type '<NavPOSECEF>"
  "6f1f4f9473d5586f7fa1427a3c53cee9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPOSECEF)))
  "Returns md5sum for a message object of type 'NavPOSECEF"
  "6f1f4f9473d5586f7fa1427a3c53cee9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPOSECEF>)))
  "Returns full string definition for message of type '<NavPOSECEF>"
  (cl:format cl:nil "# NAV-POSECEF (0x01 0x01)~%# Position Solution in ECEF~%#~%# See important comments concerning validity of position given in section~%# Navigation Output Filters.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 1~%~%uint32 iTOW             # GPS Millisecond Time of Week [ms]~%~%int32 ecefX             # ECEF X coordinate [cm]~%int32 ecefY             # ECEF Y coordinate [cm]~%int32 ecefZ             # ECEF Z coordinate [cm]~%uint32 pAcc             # Position Accuracy Estimate [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPOSECEF)))
  "Returns full string definition for message of type 'NavPOSECEF"
  (cl:format cl:nil "# NAV-POSECEF (0x01 0x01)~%# Position Solution in ECEF~%#~%# See important comments concerning validity of position given in section~%# Navigation Output Filters.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 1~%~%uint32 iTOW             # GPS Millisecond Time of Week [ms]~%~%int32 ecefX             # ECEF X coordinate [cm]~%int32 ecefY             # ECEF Y coordinate [cm]~%int32 ecefZ             # ECEF Z coordinate [cm]~%uint32 pAcc             # Position Accuracy Estimate [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPOSECEF>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPOSECEF>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPOSECEF
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':ecefX (ecefX msg))
    (cl:cons ':ecefY (ecefY msg))
    (cl:cons ':ecefZ (ecefZ msg))
    (cl:cons ':pAcc (pAcc msg))
))
