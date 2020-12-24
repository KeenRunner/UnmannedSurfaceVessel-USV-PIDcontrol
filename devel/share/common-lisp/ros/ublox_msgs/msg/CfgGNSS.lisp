; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgGNSS.msg.html

(cl:defclass <CfgGNSS> (roslisp-msg-protocol:ros-message)
  ((msgVer
    :reader msgVer
    :initarg :msgVer
    :type cl:fixnum
    :initform 0)
   (numTrkChHw
    :reader numTrkChHw
    :initarg :numTrkChHw
    :type cl:fixnum
    :initform 0)
   (numTrkChUse
    :reader numTrkChUse
    :initarg :numTrkChUse
    :type cl:fixnum
    :initform 0)
   (numConfigBlocks
    :reader numConfigBlocks
    :initarg :numConfigBlocks
    :type cl:fixnum
    :initform 0)
   (blocks
    :reader blocks
    :initarg :blocks
    :type (cl:vector ublox_msgs-msg:CfgGNSS_Block)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:CfgGNSS_Block :initial-element (cl:make-instance 'ublox_msgs-msg:CfgGNSS_Block))))
)

(cl:defclass CfgGNSS (<CfgGNSS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgGNSS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgGNSS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgGNSS> is deprecated: use ublox_msgs-msg:CfgGNSS instead.")))

(cl:ensure-generic-function 'msgVer-val :lambda-list '(m))
(cl:defmethod msgVer-val ((m <CfgGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:msgVer-val is deprecated.  Use ublox_msgs-msg:msgVer instead.")
  (msgVer m))

(cl:ensure-generic-function 'numTrkChHw-val :lambda-list '(m))
(cl:defmethod numTrkChHw-val ((m <CfgGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numTrkChHw-val is deprecated.  Use ublox_msgs-msg:numTrkChHw instead.")
  (numTrkChHw m))

(cl:ensure-generic-function 'numTrkChUse-val :lambda-list '(m))
(cl:defmethod numTrkChUse-val ((m <CfgGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numTrkChUse-val is deprecated.  Use ublox_msgs-msg:numTrkChUse instead.")
  (numTrkChUse m))

(cl:ensure-generic-function 'numConfigBlocks-val :lambda-list '(m))
(cl:defmethod numConfigBlocks-val ((m <CfgGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numConfigBlocks-val is deprecated.  Use ublox_msgs-msg:numConfigBlocks instead.")
  (numConfigBlocks m))

(cl:ensure-generic-function 'blocks-val :lambda-list '(m))
(cl:defmethod blocks-val ((m <CfgGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:blocks-val is deprecated.  Use ublox_msgs-msg:blocks instead.")
  (blocks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgGNSS>)))
    "Constants for message type '<CfgGNSS>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 62))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgGNSS)))
    "Constants for message type 'CfgGNSS"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 62))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgGNSS>) ostream)
  "Serializes a message object of type '<CfgGNSS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgVer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTrkChHw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTrkChUse)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numConfigBlocks)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blocks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blocks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgGNSS>) istream)
  "Deserializes a message object of type '<CfgGNSS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgVer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTrkChHw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTrkChUse)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numConfigBlocks)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blocks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blocks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:CfgGNSS_Block))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgGNSS>)))
  "Returns string type for a message object of type '<CfgGNSS>"
  "ublox_msgs/CfgGNSS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgGNSS)))
  "Returns string type for a message object of type 'CfgGNSS"
  "ublox_msgs/CfgGNSS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgGNSS>)))
  "Returns md5sum for a message object of type '<CfgGNSS>"
  "c1777482e22a0ac50132c66d3284e86f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgGNSS)))
  "Returns md5sum for a message object of type 'CfgGNSS"
  "c1777482e22a0ac50132c66d3284e86f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgGNSS>)))
  "Returns full string definition for message of type '<CfgGNSS>"
  (cl:format cl:nil "# CFG-GNSS (0x06 0x3E)~%# GNSS Configuration~%#~%# Gets or sets the GNSS system channel sharing configuration.~%# If the receiver is sent a valid new configuration, it will respond with a ~%# UBX-ACK-ACK message and immediately change to the new configuration. Otherwise~%# the receiver will reject the request, by issuing a UBX-ACK-NAK and continuing ~%# operation with the previous configuration.~%# Configuration requirements:~%#  - It is necessary for at least one major GNSS to be enabled, after applying ~%#    the new configuration to the current one.~%#  - It is also required that at least 4 tracking channels are available to each ~%#    enabled major GNSS, i.e. maxTrkCh must have a minimum value of 4 for each~%#    enabled major GNSS.~%#  - The number of tracking channels in use must not exceed the number of ~%#    tracking channels available in hardware, and the sum of all reserved ~%#    tracking channels needs to be less than or equal to the number of tracking~%#    channels in use.~%# Notes:~%#  - To avoid cross-correlation issues, it is recommended that GPS and QZSS are~%#    always both enabled or both disabled.~%#  - Polling this message returns the configuration of all supported GNSS, ~%#    whether enabled or not; it may also include GNSS unsupported by the ~%#    particular product, but in such cases the enable flag will always be unset.~%#  - See section GNSS Configuration for a discussion of the use of this message ~%#    and section Satellite Numbering for a description of the GNSS IDs available~%#  - Configuration specific to the GNSS system can be done via other messages ~%#    (e.g. UBX-CFG-SBAS).~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 62~%~%uint8 msgVer            # Message version (= 0 for this version)~%uint8 numTrkChHw        # Number of tracking channels in hardware (read only)~%uint8 numTrkChUse       # (Read only in protocol versions greater than 23)~%                        # Number of tracking channels to use (<= numTrkChHw)~%                        # If 0xFF, then number of tracking channels to use will ~%                        # be set to numTrkChHw~%uint8 numConfigBlocks   # Number of configuration blocks following~%~%# Start of repeated block (numConfigBlocks times)~%CfgGNSS_Block[] blocks~%# End of repeated block~%================================================================================~%MSG: ublox_msgs/CfgGNSS_Block~%# see Cfg-GNSS message~%#~%~%uint8 gnssId            # System identifier (see Satellite Numbering)~%~%uint8 GNSS_ID_GPS = 0~%uint8 GNSS_ID_SBAS = 1~%uint8 GNSS_ID_GALILEO = 2~%uint8 GNSS_ID_BEIDOU = 3~%uint8 GNSS_ID_IMES = 4~%uint8 GNSS_ID_QZSS = 5~%uint8 GNSS_ID_GLONASS = 6~%~%uint8 resTrkCh          # (Read only in protocol versions greater than 23)~%                        # Number of reserved (minimum) tracking channels ~%                        # for this GNSS system~%uint8 RES_TRK_CH_GPS = 8~%uint8 RES_TRK_CH_QZSS = 0~%uint8 RES_TRK_CH_SBAS = 0~%uint8 RES_TRK_CH_GLONASS = 8~%uint8 maxTrkCh          # (Read only in protocol versions greater than 23)~%                        # Maximum number of tracking channels used for this ~%                        # system. Must be > 0, >= resTrkChn, <= numTrkChUse and~%                        # <= maximum number of tracking channels supported for ~%                        # this system~%uint8 MAX_TRK_CH_MAJOR_MIN = 4         # maxTrkCh must have this minimum value~%                                       # for each enabled major GNSS~%uint8 MAX_TRK_CH_GPS = 16~%uint8 MAX_TRK_CH_GLONASS = 14~%uint8 MAX_TRK_CH_QZSS = 3~%uint8 MAX_TRK_CH_SBAS = 3~%~%uint8 reserved1         # Reserved~%~%uint32 flags            # Bitfield of flags. At least one signal must be~%                        # configured in every enabled system. ~%uint32 FLAGS_ENABLE = 1                # Enable this system~%uint32 FLAGS_SIG_CFG_MASK = 16711680   # Signal configuration mask~%uint32 SIG_CFG_GPS_L1CA = 65536        # When gnssId is 0 (GPS)~%                                       # * 0x01 = GPS L1C/A~%uint32 SIG_CFG_SBAS_L1CA = 65536       # When gnssId is 1 (SBAS)~%                                       # * 0x01 = SBAS L1C/A~%uint32 SIG_CFG_GALILEO_E1OS = 65536    # When gnssId is 2 (Galileo)~%                                       # * 0x01 = Galileo E1OS (not supported in ~%                                       #   protocol versions less than 18)~%uint32 SIG_CFG_BEIDOU_B1I = 65536      # When gnssId is 3 (BeiDou)~%                                       # * 0x01 = BeiDou B1I ~%uint32 SIG_CFG_IMES_L1 = 65536         # When gnssId is 4 (IMES)~%                                       # * 0x01 = IMES L1~%uint32 SIG_CFG_QZSS_L1CA = 65536       # When gnssId is 5 (QZSS)~%                                       # * 0x01 = QZSS L1C/A~%uint32 SIG_CFG_QZSS_L1SAIF = 262144    # * 0x04 = QZSS L1SAIF~%uint32 SIG_CFG_GLONASS_L1OF = 65536    # When gnssId is 6 (GLONASS)~%                                       # * 0x01 = GLONASS L1OF~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgGNSS)))
  "Returns full string definition for message of type 'CfgGNSS"
  (cl:format cl:nil "# CFG-GNSS (0x06 0x3E)~%# GNSS Configuration~%#~%# Gets or sets the GNSS system channel sharing configuration.~%# If the receiver is sent a valid new configuration, it will respond with a ~%# UBX-ACK-ACK message and immediately change to the new configuration. Otherwise~%# the receiver will reject the request, by issuing a UBX-ACK-NAK and continuing ~%# operation with the previous configuration.~%# Configuration requirements:~%#  - It is necessary for at least one major GNSS to be enabled, after applying ~%#    the new configuration to the current one.~%#  - It is also required that at least 4 tracking channels are available to each ~%#    enabled major GNSS, i.e. maxTrkCh must have a minimum value of 4 for each~%#    enabled major GNSS.~%#  - The number of tracking channels in use must not exceed the number of ~%#    tracking channels available in hardware, and the sum of all reserved ~%#    tracking channels needs to be less than or equal to the number of tracking~%#    channels in use.~%# Notes:~%#  - To avoid cross-correlation issues, it is recommended that GPS and QZSS are~%#    always both enabled or both disabled.~%#  - Polling this message returns the configuration of all supported GNSS, ~%#    whether enabled or not; it may also include GNSS unsupported by the ~%#    particular product, but in such cases the enable flag will always be unset.~%#  - See section GNSS Configuration for a discussion of the use of this message ~%#    and section Satellite Numbering for a description of the GNSS IDs available~%#  - Configuration specific to the GNSS system can be done via other messages ~%#    (e.g. UBX-CFG-SBAS).~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 62~%~%uint8 msgVer            # Message version (= 0 for this version)~%uint8 numTrkChHw        # Number of tracking channels in hardware (read only)~%uint8 numTrkChUse       # (Read only in protocol versions greater than 23)~%                        # Number of tracking channels to use (<= numTrkChHw)~%                        # If 0xFF, then number of tracking channels to use will ~%                        # be set to numTrkChHw~%uint8 numConfigBlocks   # Number of configuration blocks following~%~%# Start of repeated block (numConfigBlocks times)~%CfgGNSS_Block[] blocks~%# End of repeated block~%================================================================================~%MSG: ublox_msgs/CfgGNSS_Block~%# see Cfg-GNSS message~%#~%~%uint8 gnssId            # System identifier (see Satellite Numbering)~%~%uint8 GNSS_ID_GPS = 0~%uint8 GNSS_ID_SBAS = 1~%uint8 GNSS_ID_GALILEO = 2~%uint8 GNSS_ID_BEIDOU = 3~%uint8 GNSS_ID_IMES = 4~%uint8 GNSS_ID_QZSS = 5~%uint8 GNSS_ID_GLONASS = 6~%~%uint8 resTrkCh          # (Read only in protocol versions greater than 23)~%                        # Number of reserved (minimum) tracking channels ~%                        # for this GNSS system~%uint8 RES_TRK_CH_GPS = 8~%uint8 RES_TRK_CH_QZSS = 0~%uint8 RES_TRK_CH_SBAS = 0~%uint8 RES_TRK_CH_GLONASS = 8~%uint8 maxTrkCh          # (Read only in protocol versions greater than 23)~%                        # Maximum number of tracking channels used for this ~%                        # system. Must be > 0, >= resTrkChn, <= numTrkChUse and~%                        # <= maximum number of tracking channels supported for ~%                        # this system~%uint8 MAX_TRK_CH_MAJOR_MIN = 4         # maxTrkCh must have this minimum value~%                                       # for each enabled major GNSS~%uint8 MAX_TRK_CH_GPS = 16~%uint8 MAX_TRK_CH_GLONASS = 14~%uint8 MAX_TRK_CH_QZSS = 3~%uint8 MAX_TRK_CH_SBAS = 3~%~%uint8 reserved1         # Reserved~%~%uint32 flags            # Bitfield of flags. At least one signal must be~%                        # configured in every enabled system. ~%uint32 FLAGS_ENABLE = 1                # Enable this system~%uint32 FLAGS_SIG_CFG_MASK = 16711680   # Signal configuration mask~%uint32 SIG_CFG_GPS_L1CA = 65536        # When gnssId is 0 (GPS)~%                                       # * 0x01 = GPS L1C/A~%uint32 SIG_CFG_SBAS_L1CA = 65536       # When gnssId is 1 (SBAS)~%                                       # * 0x01 = SBAS L1C/A~%uint32 SIG_CFG_GALILEO_E1OS = 65536    # When gnssId is 2 (Galileo)~%                                       # * 0x01 = Galileo E1OS (not supported in ~%                                       #   protocol versions less than 18)~%uint32 SIG_CFG_BEIDOU_B1I = 65536      # When gnssId is 3 (BeiDou)~%                                       # * 0x01 = BeiDou B1I ~%uint32 SIG_CFG_IMES_L1 = 65536         # When gnssId is 4 (IMES)~%                                       # * 0x01 = IMES L1~%uint32 SIG_CFG_QZSS_L1CA = 65536       # When gnssId is 5 (QZSS)~%                                       # * 0x01 = QZSS L1C/A~%uint32 SIG_CFG_QZSS_L1SAIF = 262144    # * 0x04 = QZSS L1SAIF~%uint32 SIG_CFG_GLONASS_L1OF = 65536    # When gnssId is 6 (GLONASS)~%                                       # * 0x01 = GLONASS L1OF~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgGNSS>))
  (cl:+ 0
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blocks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgGNSS>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgGNSS
    (cl:cons ':msgVer (msgVer msg))
    (cl:cons ':numTrkChHw (numTrkChHw msg))
    (cl:cons ':numTrkChUse (numTrkChUse msg))
    (cl:cons ':numConfigBlocks (numConfigBlocks msg))
    (cl:cons ':blocks (blocks msg))
))
