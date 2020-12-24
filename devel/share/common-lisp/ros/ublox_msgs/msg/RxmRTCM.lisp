; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmRTCM.msg.html

(cl:defclass <RxmRTCM> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (refStation
    :reader refStation
    :initarg :refStation
    :type cl:fixnum
    :initform 0)
   (msgType
    :reader msgType
    :initarg :msgType
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxmRTCM (<RxmRTCM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmRTCM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmRTCM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmRTCM> is deprecated: use ublox_msgs-msg:RxmRTCM instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <RxmRTCM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <RxmRTCM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RxmRTCM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'refStation-val :lambda-list '(m))
(cl:defmethod refStation-val ((m <RxmRTCM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:refStation-val is deprecated.  Use ublox_msgs-msg:refStation instead.")
  (refStation m))

(cl:ensure-generic-function 'msgType-val :lambda-list '(m))
(cl:defmethod msgType-val ((m <RxmRTCM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:msgType-val is deprecated.  Use ublox_msgs-msg:msgType instead.")
  (msgType m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmRTCM>)))
    "Constants for message type '<RxmRTCM>"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 50)
    (:FLAGS_CRC_FAILED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmRTCM)))
    "Constants for message type 'RxmRTCM"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 50)
    (:FLAGS_CRC_FAILED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmRTCM>) ostream)
  "Serializes a message object of type '<RxmRTCM>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'refStation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'refStation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgType)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmRTCM>) istream)
  "Deserializes a message object of type '<RxmRTCM>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'refStation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'refStation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgType)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmRTCM>)))
  "Returns string type for a message object of type '<RxmRTCM>"
  "ublox_msgs/RxmRTCM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmRTCM)))
  "Returns string type for a message object of type 'RxmRTCM"
  "ublox_msgs/RxmRTCM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmRTCM>)))
  "Returns md5sum for a message object of type '<RxmRTCM>"
  "86ca768ef7c0009454812a5f8c6badfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmRTCM)))
  "Returns md5sum for a message object of type 'RxmRTCM"
  "86ca768ef7c0009454812a5f8c6badfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmRTCM>)))
  "Returns full string definition for message of type '<RxmRTCM>"
  (cl:format cl:nil "# RXM-RTCM (0x02 0x32)~%# RTCM input status~%#~%# Output upon processing of an RTCM input message~%# Supported on:~%# - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01~%# ~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 50~%~%uint8 version                 # Message version (0x02 for this version)~%uint8 flags                   # RTCM input status flags~%uint8 FLAGS_CRC_FAILED = 1    # 0 when RTCM message received and passed CRC ~%                              # check, 1 when failed in which case refStation~%                              # and msgType might be corrupted and misleading~%~%uint8[2] reserved0            # Reserved~%~%uint16 refStation             # Reference station ID~%uint16 msgType                # Message type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmRTCM)))
  "Returns full string definition for message of type 'RxmRTCM"
  (cl:format cl:nil "# RXM-RTCM (0x02 0x32)~%# RTCM input status~%#~%# Output upon processing of an RTCM input message~%# Supported on:~%# - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01~%# ~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 50~%~%uint8 version                 # Message version (0x02 for this version)~%uint8 flags                   # RTCM input status flags~%uint8 FLAGS_CRC_FAILED = 1    # 0 when RTCM message received and passed CRC ~%                              # check, 1 when failed in which case refStation~%                              # and msgType might be corrupted and misleading~%~%uint8[2] reserved0            # Reserved~%~%uint16 refStation             # Reference station ID~%uint16 msgType                # Message type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmRTCM>))
  (cl:+ 0
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmRTCM>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmRTCM
    (cl:cons ':version (version msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':refStation (refStation msg))
    (cl:cons ':msgType (msgType msg))
))
