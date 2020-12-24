; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgMSG.msg.html

(cl:defclass <CfgMSG> (roslisp-msg-protocol:ros-message)
  ((msgClass
    :reader msgClass
    :initarg :msgClass
    :type cl:fixnum
    :initform 0)
   (msgID
    :reader msgID
    :initarg :msgID
    :type cl:fixnum
    :initform 0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CfgMSG (<CfgMSG>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgMSG>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgMSG)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgMSG> is deprecated: use ublox_msgs-msg:CfgMSG instead.")))

(cl:ensure-generic-function 'msgClass-val :lambda-list '(m))
(cl:defmethod msgClass-val ((m <CfgMSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:msgClass-val is deprecated.  Use ublox_msgs-msg:msgClass instead.")
  (msgClass m))

(cl:ensure-generic-function 'msgID-val :lambda-list '(m))
(cl:defmethod msgID-val ((m <CfgMSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:msgID-val is deprecated.  Use ublox_msgs-msg:msgID instead.")
  (msgID m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <CfgMSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:rate-val is deprecated.  Use ublox_msgs-msg:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgMSG>)))
    "Constants for message type '<CfgMSG>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgMSG)))
    "Constants for message type 'CfgMSG"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgMSG>) ostream)
  "Serializes a message object of type '<CfgMSG>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgClass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgMSG>) istream)
  "Deserializes a message object of type '<CfgMSG>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgClass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgMSG>)))
  "Returns string type for a message object of type '<CfgMSG>"
  "ublox_msgs/CfgMSG")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgMSG)))
  "Returns string type for a message object of type 'CfgMSG"
  "ublox_msgs/CfgMSG")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgMSG>)))
  "Returns md5sum for a message object of type '<CfgMSG>"
  "9f2fcd2333c19c76cbfdf6a57fc64a9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgMSG)))
  "Returns md5sum for a message object of type 'CfgMSG"
  "9f2fcd2333c19c76cbfdf6a57fc64a9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgMSG>)))
  "Returns full string definition for message of type '<CfgMSG>"
  (cl:format cl:nil "# CFG-MSG (0x06 0x01)~%# Message Rate(s)~%# ~%# Set message rate for the current port~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 1~%~%uint8 msgClass            # Message Class~%uint8 msgID               # Message Identifier~%uint8 rate                # Send rate on current port ~%                          # [number of navigation solutions]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgMSG)))
  "Returns full string definition for message of type 'CfgMSG"
  (cl:format cl:nil "# CFG-MSG (0x06 0x01)~%# Message Rate(s)~%# ~%# Set message rate for the current port~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 1~%~%uint8 msgClass            # Message Class~%uint8 msgID               # Message Identifier~%uint8 rate                # Send rate on current port ~%                          # [number of navigation solutions]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgMSG>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgMSG>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgMSG
    (cl:cons ':msgClass (msgClass msg))
    (cl:cons ':msgID (msgID msg))
    (cl:cons ':rate (rate msg))
))
