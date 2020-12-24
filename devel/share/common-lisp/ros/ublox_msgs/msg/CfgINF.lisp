; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgINF.msg.html

(cl:defclass <CfgINF> (roslisp-msg-protocol:ros-message)
  ((blocks
    :reader blocks
    :initarg :blocks
    :type (cl:vector ublox_msgs-msg:CfgINF_Block)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:CfgINF_Block :initial-element (cl:make-instance 'ublox_msgs-msg:CfgINF_Block))))
)

(cl:defclass CfgINF (<CfgINF>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgINF>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgINF)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgINF> is deprecated: use ublox_msgs-msg:CfgINF instead.")))

(cl:ensure-generic-function 'blocks-val :lambda-list '(m))
(cl:defmethod blocks-val ((m <CfgINF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:blocks-val is deprecated.  Use ublox_msgs-msg:blocks instead.")
  (blocks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgINF>)))
    "Constants for message type '<CfgINF>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgINF)))
    "Constants for message type 'CfgINF"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgINF>) ostream)
  "Serializes a message object of type '<CfgINF>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blocks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blocks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgINF>) istream)
  "Deserializes a message object of type '<CfgINF>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blocks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blocks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:CfgINF_Block))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgINF>)))
  "Returns string type for a message object of type '<CfgINF>"
  "ublox_msgs/CfgINF")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgINF)))
  "Returns string type for a message object of type 'CfgINF"
  "ublox_msgs/CfgINF")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgINF>)))
  "Returns md5sum for a message object of type '<CfgINF>"
  "42fb321cf0c63684f2f7086e850ed61e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgINF)))
  "Returns md5sum for a message object of type 'CfgINF"
  "42fb321cf0c63684f2f7086e850ed61e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgINF>)))
  "Returns full string definition for message of type '<CfgINF>"
  (cl:format cl:nil "# CFG-INF  (0x06 0x02)~%# Information message configuration~%#~%# The value of infMsgMask[x] below are that each bit represents one of the INF ~%# class messages (Bit 0 for ERROR, Bit 1 for WARNING and so on.). For a complete ~%# list, see the Message Class INF. Several configurations can be concatenated to ~%# one input message.~%# In this case the payload length can be a multiple of the normal length. Output ~%# messages from the module contain only one configuration unit. Note that I/O ~%# Ports 1 and 2 correspond to serial ports 1 and 2. I/O port 0 is DDC. I/O port ~%# 3 is USB. I/O port 4 is SPI. I/O port 5 is reserved for future use~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 2~%~%# start of repeated block~%CfgINF_Block[] blocks~%# end of repeated block~%~%================================================================================~%MSG: ublox_msgs/CfgINF_Block~%# See CfgINF message~%#~%~%uint8 protocolID          # Protocol Identifier, identifying for which~%                          # protocol the configuration is set/get. The~%                          # following are valid Protocol Identifiers:~%                          # 0: UBX Protocol~%                          # 1: NMEA Protocol~%                          # 2-255: Reserved~%uint8 PROTOCOL_ID_UBX = 0~%uint8 PROTOCOL_ID_NMEA = 1~%~%uint8[3] reserved1        # Reserved~%~%uint8[6] infMsgMask       # A bit mask, saying which information messages~%                          # are enabled on each I/O port~%uint8 INF_MSG_ERROR = 1              # enable ERROR~%uint8 INF_MSG_WARNING = 2            # enable WARNING~%uint8 INF_MSG_NOTICE = 4             # enable NOTICE~%uint8 INF_MSG_TEST = 8               # enable TEST~%uint8 INF_MSG_DEBUG = 16             # enable DEBUG~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgINF)))
  "Returns full string definition for message of type 'CfgINF"
  (cl:format cl:nil "# CFG-INF  (0x06 0x02)~%# Information message configuration~%#~%# The value of infMsgMask[x] below are that each bit represents one of the INF ~%# class messages (Bit 0 for ERROR, Bit 1 for WARNING and so on.). For a complete ~%# list, see the Message Class INF. Several configurations can be concatenated to ~%# one input message.~%# In this case the payload length can be a multiple of the normal length. Output ~%# messages from the module contain only one configuration unit. Note that I/O ~%# Ports 1 and 2 correspond to serial ports 1 and 2. I/O port 0 is DDC. I/O port ~%# 3 is USB. I/O port 4 is SPI. I/O port 5 is reserved for future use~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 2~%~%# start of repeated block~%CfgINF_Block[] blocks~%# end of repeated block~%~%================================================================================~%MSG: ublox_msgs/CfgINF_Block~%# See CfgINF message~%#~%~%uint8 protocolID          # Protocol Identifier, identifying for which~%                          # protocol the configuration is set/get. The~%                          # following are valid Protocol Identifiers:~%                          # 0: UBX Protocol~%                          # 1: NMEA Protocol~%                          # 2-255: Reserved~%uint8 PROTOCOL_ID_UBX = 0~%uint8 PROTOCOL_ID_NMEA = 1~%~%uint8[3] reserved1        # Reserved~%~%uint8[6] infMsgMask       # A bit mask, saying which information messages~%                          # are enabled on each I/O port~%uint8 INF_MSG_ERROR = 1              # enable ERROR~%uint8 INF_MSG_WARNING = 2            # enable WARNING~%uint8 INF_MSG_NOTICE = 4             # enable NOTICE~%uint8 INF_MSG_TEST = 8               # enable TEST~%uint8 INF_MSG_DEBUG = 16             # enable DEBUG~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgINF>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blocks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgINF>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgINF
    (cl:cons ':blocks (blocks msg))
))
