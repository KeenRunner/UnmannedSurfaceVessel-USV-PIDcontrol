; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgGNSS_Block.msg.html

(cl:defclass <CfgGNSS_Block> (roslisp-msg-protocol:ros-message)
  ((gnssId
    :reader gnssId
    :initarg :gnssId
    :type cl:fixnum
    :initform 0)
   (resTrkCh
    :reader resTrkCh
    :initarg :resTrkCh
    :type cl:fixnum
    :initform 0)
   (maxTrkCh
    :reader maxTrkCh
    :initarg :maxTrkCh
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:integer
    :initform 0))
)

(cl:defclass CfgGNSS_Block (<CfgGNSS_Block>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgGNSS_Block>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgGNSS_Block)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgGNSS_Block> is deprecated: use ublox_msgs-msg:CfgGNSS_Block instead.")))

(cl:ensure-generic-function 'gnssId-val :lambda-list '(m))
(cl:defmethod gnssId-val ((m <CfgGNSS_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gnssId-val is deprecated.  Use ublox_msgs-msg:gnssId instead.")
  (gnssId m))

(cl:ensure-generic-function 'resTrkCh-val :lambda-list '(m))
(cl:defmethod resTrkCh-val ((m <CfgGNSS_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:resTrkCh-val is deprecated.  Use ublox_msgs-msg:resTrkCh instead.")
  (resTrkCh m))

(cl:ensure-generic-function 'maxTrkCh-val :lambda-list '(m))
(cl:defmethod maxTrkCh-val ((m <CfgGNSS_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:maxTrkCh-val is deprecated.  Use ublox_msgs-msg:maxTrkCh instead.")
  (maxTrkCh m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <CfgGNSS_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <CfgGNSS_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgGNSS_Block>)))
    "Constants for message type '<CfgGNSS_Block>"
  '((:GNSS_ID_GPS . 0)
    (:GNSS_ID_SBAS . 1)
    (:GNSS_ID_GALILEO . 2)
    (:GNSS_ID_BEIDOU . 3)
    (:GNSS_ID_IMES . 4)
    (:GNSS_ID_QZSS . 5)
    (:GNSS_ID_GLONASS . 6)
    (:RES_TRK_CH_GPS . 8)
    (:RES_TRK_CH_QZSS . 0)
    (:RES_TRK_CH_SBAS . 0)
    (:RES_TRK_CH_GLONASS . 8)
    (:MAX_TRK_CH_MAJOR_MIN . 4)
    (:MAX_TRK_CH_GPS . 16)
    (:MAX_TRK_CH_GLONASS . 14)
    (:MAX_TRK_CH_QZSS . 3)
    (:MAX_TRK_CH_SBAS . 3)
    (:FLAGS_ENABLE . 1)
    (:FLAGS_SIG_CFG_MASK . 16711680)
    (:SIG_CFG_GPS_L1CA . 65536)
    (:SIG_CFG_SBAS_L1CA . 65536)
    (:SIG_CFG_GALILEO_E1OS . 65536)
    (:SIG_CFG_BEIDOU_B1I . 65536)
    (:SIG_CFG_IMES_L1 . 65536)
    (:SIG_CFG_QZSS_L1CA . 65536)
    (:SIG_CFG_QZSS_L1SAIF . 262144)
    (:SIG_CFG_GLONASS_L1OF . 65536))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgGNSS_Block)))
    "Constants for message type 'CfgGNSS_Block"
  '((:GNSS_ID_GPS . 0)
    (:GNSS_ID_SBAS . 1)
    (:GNSS_ID_GALILEO . 2)
    (:GNSS_ID_BEIDOU . 3)
    (:GNSS_ID_IMES . 4)
    (:GNSS_ID_QZSS . 5)
    (:GNSS_ID_GLONASS . 6)
    (:RES_TRK_CH_GPS . 8)
    (:RES_TRK_CH_QZSS . 0)
    (:RES_TRK_CH_SBAS . 0)
    (:RES_TRK_CH_GLONASS . 8)
    (:MAX_TRK_CH_MAJOR_MIN . 4)
    (:MAX_TRK_CH_GPS . 16)
    (:MAX_TRK_CH_GLONASS . 14)
    (:MAX_TRK_CH_QZSS . 3)
    (:MAX_TRK_CH_SBAS . 3)
    (:FLAGS_ENABLE . 1)
    (:FLAGS_SIG_CFG_MASK . 16711680)
    (:SIG_CFG_GPS_L1CA . 65536)
    (:SIG_CFG_SBAS_L1CA . 65536)
    (:SIG_CFG_GALILEO_E1OS . 65536)
    (:SIG_CFG_BEIDOU_B1I . 65536)
    (:SIG_CFG_IMES_L1 . 65536)
    (:SIG_CFG_QZSS_L1CA . 65536)
    (:SIG_CFG_QZSS_L1SAIF . 262144)
    (:SIG_CFG_GLONASS_L1OF . 65536))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgGNSS_Block>) ostream)
  "Serializes a message object of type '<CfgGNSS_Block>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resTrkCh)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxTrkCh)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgGNSS_Block>) istream)
  "Deserializes a message object of type '<CfgGNSS_Block>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resTrkCh)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxTrkCh)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgGNSS_Block>)))
  "Returns string type for a message object of type '<CfgGNSS_Block>"
  "ublox_msgs/CfgGNSS_Block")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgGNSS_Block)))
  "Returns string type for a message object of type 'CfgGNSS_Block"
  "ublox_msgs/CfgGNSS_Block")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgGNSS_Block>)))
  "Returns md5sum for a message object of type '<CfgGNSS_Block>"
  "f786023414ba20add907814936842e32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgGNSS_Block)))
  "Returns md5sum for a message object of type 'CfgGNSS_Block"
  "f786023414ba20add907814936842e32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgGNSS_Block>)))
  "Returns full string definition for message of type '<CfgGNSS_Block>"
  (cl:format cl:nil "# see Cfg-GNSS message~%#~%~%uint8 gnssId            # System identifier (see Satellite Numbering)~%~%uint8 GNSS_ID_GPS = 0~%uint8 GNSS_ID_SBAS = 1~%uint8 GNSS_ID_GALILEO = 2~%uint8 GNSS_ID_BEIDOU = 3~%uint8 GNSS_ID_IMES = 4~%uint8 GNSS_ID_QZSS = 5~%uint8 GNSS_ID_GLONASS = 6~%~%uint8 resTrkCh          # (Read only in protocol versions greater than 23)~%                        # Number of reserved (minimum) tracking channels ~%                        # for this GNSS system~%uint8 RES_TRK_CH_GPS = 8~%uint8 RES_TRK_CH_QZSS = 0~%uint8 RES_TRK_CH_SBAS = 0~%uint8 RES_TRK_CH_GLONASS = 8~%uint8 maxTrkCh          # (Read only in protocol versions greater than 23)~%                        # Maximum number of tracking channels used for this ~%                        # system. Must be > 0, >= resTrkChn, <= numTrkChUse and~%                        # <= maximum number of tracking channels supported for ~%                        # this system~%uint8 MAX_TRK_CH_MAJOR_MIN = 4         # maxTrkCh must have this minimum value~%                                       # for each enabled major GNSS~%uint8 MAX_TRK_CH_GPS = 16~%uint8 MAX_TRK_CH_GLONASS = 14~%uint8 MAX_TRK_CH_QZSS = 3~%uint8 MAX_TRK_CH_SBAS = 3~%~%uint8 reserved1         # Reserved~%~%uint32 flags            # Bitfield of flags. At least one signal must be~%                        # configured in every enabled system. ~%uint32 FLAGS_ENABLE = 1                # Enable this system~%uint32 FLAGS_SIG_CFG_MASK = 16711680   # Signal configuration mask~%uint32 SIG_CFG_GPS_L1CA = 65536        # When gnssId is 0 (GPS)~%                                       # * 0x01 = GPS L1C/A~%uint32 SIG_CFG_SBAS_L1CA = 65536       # When gnssId is 1 (SBAS)~%                                       # * 0x01 = SBAS L1C/A~%uint32 SIG_CFG_GALILEO_E1OS = 65536    # When gnssId is 2 (Galileo)~%                                       # * 0x01 = Galileo E1OS (not supported in ~%                                       #   protocol versions less than 18)~%uint32 SIG_CFG_BEIDOU_B1I = 65536      # When gnssId is 3 (BeiDou)~%                                       # * 0x01 = BeiDou B1I ~%uint32 SIG_CFG_IMES_L1 = 65536         # When gnssId is 4 (IMES)~%                                       # * 0x01 = IMES L1~%uint32 SIG_CFG_QZSS_L1CA = 65536       # When gnssId is 5 (QZSS)~%                                       # * 0x01 = QZSS L1C/A~%uint32 SIG_CFG_QZSS_L1SAIF = 262144    # * 0x04 = QZSS L1SAIF~%uint32 SIG_CFG_GLONASS_L1OF = 65536    # When gnssId is 6 (GLONASS)~%                                       # * 0x01 = GLONASS L1OF~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgGNSS_Block)))
  "Returns full string definition for message of type 'CfgGNSS_Block"
  (cl:format cl:nil "# see Cfg-GNSS message~%#~%~%uint8 gnssId            # System identifier (see Satellite Numbering)~%~%uint8 GNSS_ID_GPS = 0~%uint8 GNSS_ID_SBAS = 1~%uint8 GNSS_ID_GALILEO = 2~%uint8 GNSS_ID_BEIDOU = 3~%uint8 GNSS_ID_IMES = 4~%uint8 GNSS_ID_QZSS = 5~%uint8 GNSS_ID_GLONASS = 6~%~%uint8 resTrkCh          # (Read only in protocol versions greater than 23)~%                        # Number of reserved (minimum) tracking channels ~%                        # for this GNSS system~%uint8 RES_TRK_CH_GPS = 8~%uint8 RES_TRK_CH_QZSS = 0~%uint8 RES_TRK_CH_SBAS = 0~%uint8 RES_TRK_CH_GLONASS = 8~%uint8 maxTrkCh          # (Read only in protocol versions greater than 23)~%                        # Maximum number of tracking channels used for this ~%                        # system. Must be > 0, >= resTrkChn, <= numTrkChUse and~%                        # <= maximum number of tracking channels supported for ~%                        # this system~%uint8 MAX_TRK_CH_MAJOR_MIN = 4         # maxTrkCh must have this minimum value~%                                       # for each enabled major GNSS~%uint8 MAX_TRK_CH_GPS = 16~%uint8 MAX_TRK_CH_GLONASS = 14~%uint8 MAX_TRK_CH_QZSS = 3~%uint8 MAX_TRK_CH_SBAS = 3~%~%uint8 reserved1         # Reserved~%~%uint32 flags            # Bitfield of flags. At least one signal must be~%                        # configured in every enabled system. ~%uint32 FLAGS_ENABLE = 1                # Enable this system~%uint32 FLAGS_SIG_CFG_MASK = 16711680   # Signal configuration mask~%uint32 SIG_CFG_GPS_L1CA = 65536        # When gnssId is 0 (GPS)~%                                       # * 0x01 = GPS L1C/A~%uint32 SIG_CFG_SBAS_L1CA = 65536       # When gnssId is 1 (SBAS)~%                                       # * 0x01 = SBAS L1C/A~%uint32 SIG_CFG_GALILEO_E1OS = 65536    # When gnssId is 2 (Galileo)~%                                       # * 0x01 = Galileo E1OS (not supported in ~%                                       #   protocol versions less than 18)~%uint32 SIG_CFG_BEIDOU_B1I = 65536      # When gnssId is 3 (BeiDou)~%                                       # * 0x01 = BeiDou B1I ~%uint32 SIG_CFG_IMES_L1 = 65536         # When gnssId is 4 (IMES)~%                                       # * 0x01 = IMES L1~%uint32 SIG_CFG_QZSS_L1CA = 65536       # When gnssId is 5 (QZSS)~%                                       # * 0x01 = QZSS L1C/A~%uint32 SIG_CFG_QZSS_L1SAIF = 262144    # * 0x04 = QZSS L1SAIF~%uint32 SIG_CFG_GLONASS_L1OF = 65536    # When gnssId is 6 (GLONASS)~%                                       # * 0x01 = GLONASS L1OF~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgGNSS_Block>))
  (cl:+ 0
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgGNSS_Block>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgGNSS_Block
    (cl:cons ':gnssId (gnssId msg))
    (cl:cons ':resTrkCh (resTrkCh msg))
    (cl:cons ':maxTrkCh (maxTrkCh msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':flags (flags msg))
))
