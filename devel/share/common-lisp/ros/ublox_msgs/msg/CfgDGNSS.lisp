; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgDGNSS.msg.html

(cl:defclass <CfgDGNSS> (roslisp-msg-protocol:ros-message)
  ((dgnssMode
    :reader dgnssMode
    :initarg :dgnssMode
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CfgDGNSS (<CfgDGNSS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgDGNSS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgDGNSS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgDGNSS> is deprecated: use ublox_msgs-msg:CfgDGNSS instead.")))

(cl:ensure-generic-function 'dgnssMode-val :lambda-list '(m))
(cl:defmethod dgnssMode-val ((m <CfgDGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dgnssMode-val is deprecated.  Use ublox_msgs-msg:dgnssMode instead.")
  (dgnssMode m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <CfgDGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgDGNSS>)))
    "Constants for message type '<CfgDGNSS>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 112)
    (:DGNSS_MODE_RTK_FLOAT . 2)
    (:DGNSS_MODE_RTK_FIXED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgDGNSS)))
    "Constants for message type 'CfgDGNSS"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 112)
    (:DGNSS_MODE_RTK_FLOAT . 2)
    (:DGNSS_MODE_RTK_FIXED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgDGNSS>) ostream)
  "Serializes a message object of type '<CfgDGNSS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dgnssMode)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgDGNSS>) istream)
  "Deserializes a message object of type '<CfgDGNSS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dgnssMode)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgDGNSS>)))
  "Returns string type for a message object of type '<CfgDGNSS>"
  "ublox_msgs/CfgDGNSS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgDGNSS)))
  "Returns string type for a message object of type 'CfgDGNSS"
  "ublox_msgs/CfgDGNSS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgDGNSS>)))
  "Returns md5sum for a message object of type '<CfgDGNSS>"
  "2ec4391f93581f9db720bbc0af2b613e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgDGNSS)))
  "Returns md5sum for a message object of type 'CfgDGNSS"
  "2ec4391f93581f9db720bbc0af2b613e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgDGNSS>)))
  "Returns full string definition for message of type '<CfgDGNSS>"
  (cl:format cl:nil "# CFG-DGNSS (0x06 0x70)~%# DGNSS configuration~%#~%# This message allows the user to configure the DGNSS configuration of the ~%# receiver.~%# Supported on:~%#  - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01 (only~%#    with High Precision GNSS products)~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 112~%~%uint8 dgnssMode                 # Specifies differential mode:~%uint8 DGNSS_MODE_RTK_FLOAT = 2    # RTK float: No attempts are made to fix~%                                  # ambiguities.~%uint8 DGNSS_MODE_RTK_FIXED = 3    # RTK fixed: Ambiguities are fixed whenever~%                                  # possible.~%uint8[3] reserved0              # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgDGNSS)))
  "Returns full string definition for message of type 'CfgDGNSS"
  (cl:format cl:nil "# CFG-DGNSS (0x06 0x70)~%# DGNSS configuration~%#~%# This message allows the user to configure the DGNSS configuration of the ~%# receiver.~%# Supported on:~%#  - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01 (only~%#    with High Precision GNSS products)~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 112~%~%uint8 dgnssMode                 # Specifies differential mode:~%uint8 DGNSS_MODE_RTK_FLOAT = 2    # RTK float: No attempts are made to fix~%                                  # ambiguities.~%uint8 DGNSS_MODE_RTK_FIXED = 3    # RTK fixed: Ambiguities are fixed whenever~%                                  # possible.~%uint8[3] reserved0              # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgDGNSS>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgDGNSS>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgDGNSS
    (cl:cons ':dgnssMode (dgnssMode msg))
    (cl:cons ':reserved0 (reserved0 msg))
))
