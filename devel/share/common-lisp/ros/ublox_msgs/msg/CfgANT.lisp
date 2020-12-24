; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgANT.msg.html

(cl:defclass <CfgANT> (roslisp-msg-protocol:ros-message)
  ((flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (pins
    :reader pins
    :initarg :pins
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CfgANT (<CfgANT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgANT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgANT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgANT> is deprecated: use ublox_msgs-msg:CfgANT instead.")))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <CfgANT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'pins-val :lambda-list '(m))
(cl:defmethod pins-val ((m <CfgANT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pins-val is deprecated.  Use ublox_msgs-msg:pins instead.")
  (pins m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgANT>)))
    "Constants for message type '<CfgANT>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 19)
    (:FLAGS_SVCS . 1)
    (:FLAGS_SCD . 2)
    (:FLAGS_OCD . 4)
    (:FLAGS_PDWN_ON_SCD . 8)
    (:FLAGS_RECOVERY . 16)
    (:PIN_SWITCH_MASK . 31)
    (:PIN_SCD_MASK . 992)
    (:PIN_OCD_MASK . 31744)
    (:PIN_RECONFIG . 32678))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgANT)))
    "Constants for message type 'CfgANT"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 19)
    (:FLAGS_SVCS . 1)
    (:FLAGS_SCD . 2)
    (:FLAGS_OCD . 4)
    (:FLAGS_PDWN_ON_SCD . 8)
    (:FLAGS_RECOVERY . 16)
    (:PIN_SWITCH_MASK . 31)
    (:PIN_SCD_MASK . 992)
    (:PIN_OCD_MASK . 31744)
    (:PIN_RECONFIG . 32678))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgANT>) ostream)
  "Serializes a message object of type '<CfgANT>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pins)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgANT>) istream)
  "Deserializes a message object of type '<CfgANT>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pins)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgANT>)))
  "Returns string type for a message object of type '<CfgANT>"
  "ublox_msgs/CfgANT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgANT)))
  "Returns string type for a message object of type 'CfgANT"
  "ublox_msgs/CfgANT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgANT>)))
  "Returns md5sum for a message object of type '<CfgANT>"
  "6c437e89b3ea397651d3a01434d681c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgANT)))
  "Returns md5sum for a message object of type 'CfgANT"
  "6c437e89b3ea397651d3a01434d681c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgANT>)))
  "Returns full string definition for message of type '<CfgANT>"
  (cl:format cl:nil "# CFG-ANT (0x06 0x13)~%# Antenna Control Settings~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 19~%~%uint16 flags            # Antenna Flag Mask~%uint16 FLAGS_SVCS = 1         # Enable Antenna Supply Voltage Control Signal~%uint16 FLAGS_SCD = 2          # Enable Short Circuit Detection~%uint16 FLAGS_OCD = 4          # Enable Open Circuit Detection~%uint16 FLAGS_PDWN_ON_SCD = 8  # Power Down Antenna supply if Short Circuit is ~%                              # detected. (only in combination with Bit 1)~%uint16 FLAGS_RECOVERY = 16    # Enable automatic recovery from short state~%~%uint16 pins             # Antenna Pin Configuration~%uint16 PIN_SWITCH_MASK = 31    # PIO-Pin used for switching antenna supply ~%                               # (internal to TIM-LP/TIM-LF)~%uint16 PIN_SCD_MASK = 992      # PIO-Pin used for detecting a short in the ~%                               # antenna supply~%uint16 PIN_OCD_MASK = 31744    # PIO-Pin used for detecting open/not connected ~%                               # antenna~%uint16 PIN_RECONFIG = 32678    # if set to one, and this command is sent to the ~%                               # receiver, the receiver will reconfigure the ~%                               # pins as specified.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgANT)))
  "Returns full string definition for message of type 'CfgANT"
  (cl:format cl:nil "# CFG-ANT (0x06 0x13)~%# Antenna Control Settings~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 19~%~%uint16 flags            # Antenna Flag Mask~%uint16 FLAGS_SVCS = 1         # Enable Antenna Supply Voltage Control Signal~%uint16 FLAGS_SCD = 2          # Enable Short Circuit Detection~%uint16 FLAGS_OCD = 4          # Enable Open Circuit Detection~%uint16 FLAGS_PDWN_ON_SCD = 8  # Power Down Antenna supply if Short Circuit is ~%                              # detected. (only in combination with Bit 1)~%uint16 FLAGS_RECOVERY = 16    # Enable automatic recovery from short state~%~%uint16 pins             # Antenna Pin Configuration~%uint16 PIN_SWITCH_MASK = 31    # PIO-Pin used for switching antenna supply ~%                               # (internal to TIM-LP/TIM-LF)~%uint16 PIN_SCD_MASK = 992      # PIO-Pin used for detecting a short in the ~%                               # antenna supply~%uint16 PIN_OCD_MASK = 31744    # PIO-Pin used for detecting open/not connected ~%                               # antenna~%uint16 PIN_RECONFIG = 32678    # if set to one, and this command is sent to the ~%                               # receiver, the receiver will reconfigure the ~%                               # pins as specified.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgANT>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgANT>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgANT
    (cl:cons ':flags (flags msg))
    (cl:cons ':pins (pins msg))
))
