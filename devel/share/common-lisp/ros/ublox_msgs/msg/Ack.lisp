; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude Ack.msg.html

(cl:defclass <Ack> (roslisp-msg-protocol:ros-message)
  ((clsID
    :reader clsID
    :initarg :clsID
    :type cl:fixnum
    :initform 0)
   (msgID
    :reader msgID
    :initarg :msgID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ack (<Ack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<Ack> is deprecated: use ublox_msgs-msg:Ack instead.")))

(cl:ensure-generic-function 'clsID-val :lambda-list '(m))
(cl:defmethod clsID-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:clsID-val is deprecated.  Use ublox_msgs-msg:clsID instead.")
  (clsID m))

(cl:ensure-generic-function 'msgID-val :lambda-list '(m))
(cl:defmethod msgID-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:msgID-val is deprecated.  Use ublox_msgs-msg:msgID instead.")
  (msgID m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ack>)))
    "Constants for message type '<Ack>"
  '((:CLASS_ID . 5)
    (:NACK_MESSAGE_ID . 0)
    (:ACK_MESSAGE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ack)))
    "Constants for message type 'Ack"
  '((:CLASS_ID . 5)
    (:NACK_MESSAGE_ID . 0)
    (:ACK_MESSAGE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ack>) ostream)
  "Serializes a message object of type '<Ack>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clsID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgID)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ack>) istream)
  "Deserializes a message object of type '<Ack>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clsID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgID)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ack>)))
  "Returns string type for a message object of type '<Ack>"
  "ublox_msgs/Ack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ack)))
  "Returns string type for a message object of type 'Ack"
  "ublox_msgs/Ack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ack>)))
  "Returns md5sum for a message object of type '<Ack>"
  "fc3270816d86d7c962dbc4b52a6c5386")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ack)))
  "Returns md5sum for a message object of type 'Ack"
  "fc3270816d86d7c962dbc4b52a6c5386")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ack>)))
  "Returns full string definition for message of type '<Ack>"
  (cl:format cl:nil "# ACK (0x05)~%# Message Acknowledged / Not-Acknowledged~%#~%# Output upon processing of an input message~%#~%~%uint8 CLASS_ID = 5~%uint8 NACK_MESSAGE_ID = 0~%uint8 ACK_MESSAGE_ID = 1~%~%uint8 clsID   # Class ID of the (Not-)Acknowledged Message~%uint8 msgID   # Message ID of the (Not-)Acknowledged Message~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ack)))
  "Returns full string definition for message of type 'Ack"
  (cl:format cl:nil "# ACK (0x05)~%# Message Acknowledged / Not-Acknowledged~%#~%# Output upon processing of an input message~%#~%~%uint8 CLASS_ID = 5~%uint8 NACK_MESSAGE_ID = 0~%uint8 ACK_MESSAGE_ID = 1~%~%uint8 clsID   # Class ID of the (Not-)Acknowledged Message~%uint8 msgID   # Message ID of the (Not-)Acknowledged Message~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ack>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ack>))
  "Converts a ROS message object to a list"
  (cl:list 'Ack
    (cl:cons ':clsID (clsID msg))
    (cl:cons ':msgID (msgID msg))
))
