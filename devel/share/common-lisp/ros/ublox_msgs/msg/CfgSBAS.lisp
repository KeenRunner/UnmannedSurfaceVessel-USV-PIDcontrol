; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgSBAS.msg.html

(cl:defclass <CfgSBAS> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (usage
    :reader usage
    :initarg :usage
    :type cl:fixnum
    :initform 0)
   (maxSBAS
    :reader maxSBAS
    :initarg :maxSBAS
    :type cl:fixnum
    :initform 0)
   (scanmode2
    :reader scanmode2
    :initarg :scanmode2
    :type cl:fixnum
    :initform 0)
   (scanmode1
    :reader scanmode1
    :initarg :scanmode1
    :type cl:integer
    :initform 0))
)

(cl:defclass CfgSBAS (<CfgSBAS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgSBAS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgSBAS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgSBAS> is deprecated: use ublox_msgs-msg:CfgSBAS instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <CfgSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:mode-val is deprecated.  Use ublox_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'usage-val :lambda-list '(m))
(cl:defmethod usage-val ((m <CfgSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:usage-val is deprecated.  Use ublox_msgs-msg:usage instead.")
  (usage m))

(cl:ensure-generic-function 'maxSBAS-val :lambda-list '(m))
(cl:defmethod maxSBAS-val ((m <CfgSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:maxSBAS-val is deprecated.  Use ublox_msgs-msg:maxSBAS instead.")
  (maxSBAS m))

(cl:ensure-generic-function 'scanmode2-val :lambda-list '(m))
(cl:defmethod scanmode2-val ((m <CfgSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:scanmode2-val is deprecated.  Use ublox_msgs-msg:scanmode2 instead.")
  (scanmode2 m))

(cl:ensure-generic-function 'scanmode1-val :lambda-list '(m))
(cl:defmethod scanmode1-val ((m <CfgSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:scanmode1-val is deprecated.  Use ublox_msgs-msg:scanmode1 instead.")
  (scanmode1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgSBAS>)))
    "Constants for message type '<CfgSBAS>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 22)
    (:MODE_ENABLED . 1)
    (:MODE_TEST . 2)
    (:USAGE_RANGE . 1)
    (:USAGE_DIFF_CORR . 2)
    (:USAGE_INTEGRITY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgSBAS)))
    "Constants for message type 'CfgSBAS"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 22)
    (:MODE_ENABLED . 1)
    (:MODE_TEST . 2)
    (:USAGE_RANGE . 1)
    (:USAGE_DIFF_CORR . 2)
    (:USAGE_INTEGRITY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgSBAS>) ostream)
  "Serializes a message object of type '<CfgSBAS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'usage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxSBAS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scanmode2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scanmode1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scanmode1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'scanmode1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'scanmode1)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgSBAS>) istream)
  "Deserializes a message object of type '<CfgSBAS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'usage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxSBAS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scanmode2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scanmode1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scanmode1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'scanmode1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'scanmode1)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgSBAS>)))
  "Returns string type for a message object of type '<CfgSBAS>"
  "ublox_msgs/CfgSBAS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgSBAS)))
  "Returns string type for a message object of type 'CfgSBAS"
  "ublox_msgs/CfgSBAS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgSBAS>)))
  "Returns md5sum for a message object of type '<CfgSBAS>"
  "b03a1b853ac45d2da104aafaa036e7e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgSBAS)))
  "Returns md5sum for a message object of type 'CfgSBAS"
  "b03a1b853ac45d2da104aafaa036e7e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgSBAS>)))
  "Returns full string definition for message of type '<CfgSBAS>"
  (cl:format cl:nil "# CFG-SBAS (0x06 0x16)~%# SBAS Configuration~%#~%# This message configures the SBAS receiver subsystem (i.e. WAAS, EGNOS, MSAS).~%# See the SBAS Configuration Settings Description for a detailed description of~%# how these settings affect receiver operation~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 22~%~%uint8 mode              # SBAS Mode~%uint8 MODE_ENABLED = 1    # SBAS Enabled (1) / Disabled (0)~%                          #  This field is deprecated; use UBX-CFG-GNSS to ~%                          # enable/disable SBAS operation~%uint8 MODE_TEST = 2       # SBAS Testbed: Use data anyhow (1) / Ignore data when ~%                          # in Test Mode (SBAS Msg 0)~%~%uint8 usage             # SBAS Usage~%uint8 USAGE_RANGE = 1     # Use SBAS GEOs as a ranging source (for navigation)~%uint8 USAGE_DIFF_CORR = 2 # Use SBAS Differential Corrections~%uint8 USAGE_INTEGRITY = 4 # Use SBAS Integrity Information~%~%uint8 maxSBAS           # Maximum Number of SBAS prioritized tracking~%                        # channels (valid range: 0 - 3) to use~%                        # (obsolete and superseeded by UBX-CFG-GNSS in protocol~%                        # versions 14+).~%~%~%uint8 scanmode2         # Continuation of scanmode bitmask below~%                        # PRN 152...158~%uint32 scanmode1        # Which SBAS PRN numbers to search for (Bitmask)~%                        # If all Bits are set to zero, auto-scan (i.e. all valid~%                        # PRNs) are searched. Every bit corresponds to a PRN ~%                        # number.~%                        # PRN 120..151~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgSBAS)))
  "Returns full string definition for message of type 'CfgSBAS"
  (cl:format cl:nil "# CFG-SBAS (0x06 0x16)~%# SBAS Configuration~%#~%# This message configures the SBAS receiver subsystem (i.e. WAAS, EGNOS, MSAS).~%# See the SBAS Configuration Settings Description for a detailed description of~%# how these settings affect receiver operation~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 22~%~%uint8 mode              # SBAS Mode~%uint8 MODE_ENABLED = 1    # SBAS Enabled (1) / Disabled (0)~%                          #  This field is deprecated; use UBX-CFG-GNSS to ~%                          # enable/disable SBAS operation~%uint8 MODE_TEST = 2       # SBAS Testbed: Use data anyhow (1) / Ignore data when ~%                          # in Test Mode (SBAS Msg 0)~%~%uint8 usage             # SBAS Usage~%uint8 USAGE_RANGE = 1     # Use SBAS GEOs as a ranging source (for navigation)~%uint8 USAGE_DIFF_CORR = 2 # Use SBAS Differential Corrections~%uint8 USAGE_INTEGRITY = 4 # Use SBAS Integrity Information~%~%uint8 maxSBAS           # Maximum Number of SBAS prioritized tracking~%                        # channels (valid range: 0 - 3) to use~%                        # (obsolete and superseeded by UBX-CFG-GNSS in protocol~%                        # versions 14+).~%~%~%uint8 scanmode2         # Continuation of scanmode bitmask below~%                        # PRN 152...158~%uint32 scanmode1        # Which SBAS PRN numbers to search for (Bitmask)~%                        # If all Bits are set to zero, auto-scan (i.e. all valid~%                        # PRNs) are searched. Every bit corresponds to a PRN ~%                        # number.~%                        # PRN 120..151~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgSBAS>))
  (cl:+ 0
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgSBAS>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgSBAS
    (cl:cons ':mode (mode msg))
    (cl:cons ':usage (usage msg))
    (cl:cons ':maxSBAS (maxSBAS msg))
    (cl:cons ':scanmode2 (scanmode2 msg))
    (cl:cons ':scanmode1 (scanmode1 msg))
))
