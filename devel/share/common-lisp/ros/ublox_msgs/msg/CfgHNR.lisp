; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgHNR.msg.html

(cl:defclass <CfgHNR> (roslisp-msg-protocol:ros-message)
  ((highNavRate
    :reader highNavRate
    :initarg :highNavRate
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CfgHNR (<CfgHNR>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgHNR>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgHNR)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgHNR> is deprecated: use ublox_msgs-msg:CfgHNR instead.")))

(cl:ensure-generic-function 'highNavRate-val :lambda-list '(m))
(cl:defmethod highNavRate-val ((m <CfgHNR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:highNavRate-val is deprecated.  Use ublox_msgs-msg:highNavRate instead.")
  (highNavRate m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <CfgHNR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgHNR>)))
    "Constants for message type '<CfgHNR>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 92))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgHNR)))
    "Constants for message type 'CfgHNR"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 92))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgHNR>) ostream)
  "Serializes a message object of type '<CfgHNR>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highNavRate)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgHNR>) istream)
  "Deserializes a message object of type '<CfgHNR>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'highNavRate)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgHNR>)))
  "Returns string type for a message object of type '<CfgHNR>"
  "ublox_msgs/CfgHNR")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgHNR)))
  "Returns string type for a message object of type 'CfgHNR"
  "ublox_msgs/CfgHNR")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgHNR>)))
  "Returns md5sum for a message object of type '<CfgHNR>"
  "9398ae76435d6cc9cd4bf6ee2c626072")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgHNR)))
  "Returns md5sum for a message object of type 'CfgHNR"
  "9398ae76435d6cc9cd4bf6ee2c626072")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgHNR>)))
  "Returns full string definition for message of type '<CfgHNR>"
  (cl:format cl:nil "# CFG-HNR (0x06 0x5C)~%# High Navigation Rate Settings~%#~%# The u-blox receivers support high rates of navigation update up to 30 Hz. ~%# The navigation solution output (NAV-HNR) will not be aligned to the top of a~%# second.~%# The update rate has a direct influence on the power consumption. The more~%# fixes that are required, the more CPU power and communication resources are ~%# required.~%# For most applications a 1 Hz update rate would be sufficient.~%#~%# (only with ADR or UDR products)~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 92~%~%uint8 highNavRate     # Rate of navigation solution output [Hz]~%uint8[3] reserved0    # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgHNR)))
  "Returns full string definition for message of type 'CfgHNR"
  (cl:format cl:nil "# CFG-HNR (0x06 0x5C)~%# High Navigation Rate Settings~%#~%# The u-blox receivers support high rates of navigation update up to 30 Hz. ~%# The navigation solution output (NAV-HNR) will not be aligned to the top of a~%# second.~%# The update rate has a direct influence on the power consumption. The more~%# fixes that are required, the more CPU power and communication resources are ~%# required.~%# For most applications a 1 Hz update rate would be sufficient.~%#~%# (only with ADR or UDR products)~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 92~%~%uint8 highNavRate     # Rate of navigation solution output [Hz]~%uint8[3] reserved0    # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgHNR>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgHNR>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgHNR
    (cl:cons ':highNavRate (highNavRate msg))
    (cl:cons ':reserved0 (reserved0 msg))
))
