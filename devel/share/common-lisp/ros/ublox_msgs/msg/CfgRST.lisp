; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgRST.msg.html

(cl:defclass <CfgRST> (roslisp-msg-protocol:ros-message)
  ((navBbrMask
    :reader navBbrMask
    :initarg :navBbrMask
    :type cl:fixnum
    :initform 0)
   (resetMode
    :reader resetMode
    :initarg :resetMode
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CfgRST (<CfgRST>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgRST>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgRST)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgRST> is deprecated: use ublox_msgs-msg:CfgRST instead.")))

(cl:ensure-generic-function 'navBbrMask-val :lambda-list '(m))
(cl:defmethod navBbrMask-val ((m <CfgRST>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:navBbrMask-val is deprecated.  Use ublox_msgs-msg:navBbrMask instead.")
  (navBbrMask m))

(cl:ensure-generic-function 'resetMode-val :lambda-list '(m))
(cl:defmethod resetMode-val ((m <CfgRST>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:resetMode-val is deprecated.  Use ublox_msgs-msg:resetMode instead.")
  (resetMode m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <CfgRST>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgRST>)))
    "Constants for message type '<CfgRST>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 4)
    (:NAV_BBR_HOT_START . 0)
    (:NAV_BBR_WARM_START . 1)
    (:NAV_BBR_COLD_START . 65535)
    (:NAV_BBR_EPH . 1)
    (:NAV_BBR_ALM . 2)
    (:NAV_BBR_HEALTH . 4)
    (:NAV_BBR_KLOB . 8)
    (:NAV_BBR_POS . 16)
    (:NAV_BBR_CLKD . 32)
    (:NAV_BBR_OSC . 64)
    (:NAV_BBR_UTC . 128)
    (:NAV_BBR_RTC . 256)
    (:NAV_BBR_AOP . 32768)
    (:RESET_MODE_HW_IMMEDIATE . 0)
    (:RESET_MODE_SW . 1)
    (:RESET_MODE_GNSS . 2)
    (:RESET_MODE_HW_AFTER_SHUTDOWN . 4)
    (:RESET_MODE_GNSS_STOP . 8)
    (:RESET_MODE_GNSS_START . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgRST)))
    "Constants for message type 'CfgRST"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 4)
    (:NAV_BBR_HOT_START . 0)
    (:NAV_BBR_WARM_START . 1)
    (:NAV_BBR_COLD_START . 65535)
    (:NAV_BBR_EPH . 1)
    (:NAV_BBR_ALM . 2)
    (:NAV_BBR_HEALTH . 4)
    (:NAV_BBR_KLOB . 8)
    (:NAV_BBR_POS . 16)
    (:NAV_BBR_CLKD . 32)
    (:NAV_BBR_OSC . 64)
    (:NAV_BBR_UTC . 128)
    (:NAV_BBR_RTC . 256)
    (:NAV_BBR_AOP . 32768)
    (:RESET_MODE_HW_IMMEDIATE . 0)
    (:RESET_MODE_SW . 1)
    (:RESET_MODE_GNSS . 2)
    (:RESET_MODE_HW_AFTER_SHUTDOWN . 4)
    (:RESET_MODE_GNSS_STOP . 8)
    (:RESET_MODE_GNSS_START . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgRST>) ostream)
  "Serializes a message object of type '<CfgRST>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navBbrMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'navBbrMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resetMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgRST>) istream)
  "Deserializes a message object of type '<CfgRST>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navBbrMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'navBbrMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resetMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgRST>)))
  "Returns string type for a message object of type '<CfgRST>"
  "ublox_msgs/CfgRST")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgRST)))
  "Returns string type for a message object of type 'CfgRST"
  "ublox_msgs/CfgRST")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgRST>)))
  "Returns md5sum for a message object of type '<CfgRST>"
  "a1d02f583dd30373e526af3ea4137f5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgRST)))
  "Returns md5sum for a message object of type 'CfgRST"
  "a1d02f583dd30373e526af3ea4137f5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgRST>)))
  "Returns full string definition for message of type '<CfgRST>"
  (cl:format cl:nil "# CFG-RST (0x06 0x04)~%# Reset Receiver / Clear Backup Data Structures~%#~%# Don't expect this message to be acknowledged by the receiver.~%#  - Newer FW version won't acknowledge this message at all.~%#  - Older FW version will acknowledge this message but the acknowledge may not~%#    be sent completely before the receiver is reset.~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 4 ~%~%uint16 navBbrMask # BBR Sections to clear. ~%# The following Special Sets apply:~%uint16 NAV_BBR_HOT_START = 0       # Hot start the device~%uint16 NAV_BBR_WARM_START = 1      # Warm start the device~%uint16 NAV_BBR_COLD_START = 65535  # Cold start the device~%uint16 NAV_BBR_EPH = 1       # Ephemeris~%uint16 NAV_BBR_ALM = 2       # Almanac~%uint16 NAV_BBR_HEALTH = 4    # Health~%uint16 NAV_BBR_KLOB = 8      # Klobuchar parameters~%uint16 NAV_BBR_POS = 16      # Position~%uint16 NAV_BBR_CLKD = 32     # Clock Drift~%uint16 NAV_BBR_OSC = 64      # Oscillator Parameter~%uint16 NAV_BBR_UTC = 128     # UTC Correction + GPS Leap Seconds Parameters~%uint16 NAV_BBR_RTC = 256     # RTC~%uint16 NAV_BBR_AOP = 32768   # Autonomous Orbit Parameters~%~%uint8 resetMode              # Reset Type:~%uint8 RESET_MODE_HW_IMMEDIATE = 0       # Hardware reset (Watchdog) immediately~%uint8 RESET_MODE_SW = 1                 # Controlled Software reset~%uint8 RESET_MODE_GNSS = 2               # Controlled Software reset (GNSS only)~%uint8 RESET_MODE_HW_AFTER_SHUTDOWN = 4  # Hardware reset (Watchdog) after ~%                                        # shutdown~%uint8 RESET_MODE_GNSS_STOP = 8          # Controlled GNSS stop~%uint8 RESET_MODE_GNSS_START = 9         # Controlled GNSS start~%~%uint8 reserved1     # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgRST)))
  "Returns full string definition for message of type 'CfgRST"
  (cl:format cl:nil "# CFG-RST (0x06 0x04)~%# Reset Receiver / Clear Backup Data Structures~%#~%# Don't expect this message to be acknowledged by the receiver.~%#  - Newer FW version won't acknowledge this message at all.~%#  - Older FW version will acknowledge this message but the acknowledge may not~%#    be sent completely before the receiver is reset.~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 4 ~%~%uint16 navBbrMask # BBR Sections to clear. ~%# The following Special Sets apply:~%uint16 NAV_BBR_HOT_START = 0       # Hot start the device~%uint16 NAV_BBR_WARM_START = 1      # Warm start the device~%uint16 NAV_BBR_COLD_START = 65535  # Cold start the device~%uint16 NAV_BBR_EPH = 1       # Ephemeris~%uint16 NAV_BBR_ALM = 2       # Almanac~%uint16 NAV_BBR_HEALTH = 4    # Health~%uint16 NAV_BBR_KLOB = 8      # Klobuchar parameters~%uint16 NAV_BBR_POS = 16      # Position~%uint16 NAV_BBR_CLKD = 32     # Clock Drift~%uint16 NAV_BBR_OSC = 64      # Oscillator Parameter~%uint16 NAV_BBR_UTC = 128     # UTC Correction + GPS Leap Seconds Parameters~%uint16 NAV_BBR_RTC = 256     # RTC~%uint16 NAV_BBR_AOP = 32768   # Autonomous Orbit Parameters~%~%uint8 resetMode              # Reset Type:~%uint8 RESET_MODE_HW_IMMEDIATE = 0       # Hardware reset (Watchdog) immediately~%uint8 RESET_MODE_SW = 1                 # Controlled Software reset~%uint8 RESET_MODE_GNSS = 2               # Controlled Software reset (GNSS only)~%uint8 RESET_MODE_HW_AFTER_SHUTDOWN = 4  # Hardware reset (Watchdog) after ~%                                        # shutdown~%uint8 RESET_MODE_GNSS_STOP = 8          # Controlled GNSS stop~%uint8 RESET_MODE_GNSS_START = 9         # Controlled GNSS start~%~%uint8 reserved1     # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgRST>))
  (cl:+ 0
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgRST>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgRST
    (cl:cons ':navBbrMask (navBbrMask msg))
    (cl:cons ':resetMode (resetMode msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
