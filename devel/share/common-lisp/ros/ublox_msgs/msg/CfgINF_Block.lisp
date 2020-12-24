; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgINF_Block.msg.html

(cl:defclass <CfgINF_Block> (roslisp-msg-protocol:ros-message)
  ((protocolID
    :reader protocolID
    :initarg :protocolID
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (infMsgMask
    :reader infMsgMask
    :initarg :infMsgMask
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CfgINF_Block (<CfgINF_Block>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgINF_Block>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgINF_Block)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgINF_Block> is deprecated: use ublox_msgs-msg:CfgINF_Block instead.")))

(cl:ensure-generic-function 'protocolID-val :lambda-list '(m))
(cl:defmethod protocolID-val ((m <CfgINF_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:protocolID-val is deprecated.  Use ublox_msgs-msg:protocolID instead.")
  (protocolID m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <CfgINF_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'infMsgMask-val :lambda-list '(m))
(cl:defmethod infMsgMask-val ((m <CfgINF_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:infMsgMask-val is deprecated.  Use ublox_msgs-msg:infMsgMask instead.")
  (infMsgMask m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgINF_Block>)))
    "Constants for message type '<CfgINF_Block>"
  '((:PROTOCOL_ID_UBX . 0)
    (:PROTOCOL_ID_NMEA . 1)
    (:INF_MSG_ERROR . 1)
    (:INF_MSG_WARNING . 2)
    (:INF_MSG_NOTICE . 4)
    (:INF_MSG_TEST . 8)
    (:INF_MSG_DEBUG . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgINF_Block)))
    "Constants for message type 'CfgINF_Block"
  '((:PROTOCOL_ID_UBX . 0)
    (:PROTOCOL_ID_NMEA . 1)
    (:INF_MSG_ERROR . 1)
    (:INF_MSG_WARNING . 2)
    (:INF_MSG_NOTICE . 4)
    (:INF_MSG_TEST . 8)
    (:INF_MSG_DEBUG . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgINF_Block>) ostream)
  "Serializes a message object of type '<CfgINF_Block>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'protocolID)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'infMsgMask))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgINF_Block>) istream)
  "Deserializes a message object of type '<CfgINF_Block>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'protocolID)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'infMsgMask) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'infMsgMask)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgINF_Block>)))
  "Returns string type for a message object of type '<CfgINF_Block>"
  "ublox_msgs/CfgINF_Block")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgINF_Block)))
  "Returns string type for a message object of type 'CfgINF_Block"
  "ublox_msgs/CfgINF_Block")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgINF_Block>)))
  "Returns md5sum for a message object of type '<CfgINF_Block>"
  "71c7fcecf939acbf06ee4e1259793fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgINF_Block)))
  "Returns md5sum for a message object of type 'CfgINF_Block"
  "71c7fcecf939acbf06ee4e1259793fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgINF_Block>)))
  "Returns full string definition for message of type '<CfgINF_Block>"
  (cl:format cl:nil "# See CfgINF message~%#~%~%uint8 protocolID          # Protocol Identifier, identifying for which~%                          # protocol the configuration is set/get. The~%                          # following are valid Protocol Identifiers:~%                          # 0: UBX Protocol~%                          # 1: NMEA Protocol~%                          # 2-255: Reserved~%uint8 PROTOCOL_ID_UBX = 0~%uint8 PROTOCOL_ID_NMEA = 1~%~%uint8[3] reserved1        # Reserved~%~%uint8[6] infMsgMask       # A bit mask, saying which information messages~%                          # are enabled on each I/O port~%uint8 INF_MSG_ERROR = 1              # enable ERROR~%uint8 INF_MSG_WARNING = 2            # enable WARNING~%uint8 INF_MSG_NOTICE = 4             # enable NOTICE~%uint8 INF_MSG_TEST = 8               # enable TEST~%uint8 INF_MSG_DEBUG = 16             # enable DEBUG~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgINF_Block)))
  "Returns full string definition for message of type 'CfgINF_Block"
  (cl:format cl:nil "# See CfgINF message~%#~%~%uint8 protocolID          # Protocol Identifier, identifying for which~%                          # protocol the configuration is set/get. The~%                          # following are valid Protocol Identifiers:~%                          # 0: UBX Protocol~%                          # 1: NMEA Protocol~%                          # 2-255: Reserved~%uint8 PROTOCOL_ID_UBX = 0~%uint8 PROTOCOL_ID_NMEA = 1~%~%uint8[3] reserved1        # Reserved~%~%uint8[6] infMsgMask       # A bit mask, saying which information messages~%                          # are enabled on each I/O port~%uint8 INF_MSG_ERROR = 1              # enable ERROR~%uint8 INF_MSG_WARNING = 2            # enable WARNING~%uint8 INF_MSG_NOTICE = 4             # enable NOTICE~%uint8 INF_MSG_TEST = 8               # enable TEST~%uint8 INF_MSG_DEBUG = 16             # enable DEBUG~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgINF_Block>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'infMsgMask) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgINF_Block>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgINF_Block
    (cl:cons ':protocolID (protocolID msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':infMsgMask (infMsgMask msg))
))
