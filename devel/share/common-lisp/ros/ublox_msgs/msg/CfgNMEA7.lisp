; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgNMEA7.msg.html

(cl:defclass <CfgNMEA7> (roslisp-msg-protocol:ros-message)
  ((filter
    :reader filter
    :initarg :filter
    :type cl:fixnum
    :initform 0)
   (nmeaVersion
    :reader nmeaVersion
    :initarg :nmeaVersion
    :type cl:fixnum
    :initform 0)
   (numSV
    :reader numSV
    :initarg :numSV
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (gnssToFilter
    :reader gnssToFilter
    :initarg :gnssToFilter
    :type cl:integer
    :initform 0)
   (svNumbering
    :reader svNumbering
    :initarg :svNumbering
    :type cl:fixnum
    :initform 0)
   (mainTalkerId
    :reader mainTalkerId
    :initarg :mainTalkerId
    :type cl:fixnum
    :initform 0)
   (gsvTalkerId
    :reader gsvTalkerId
    :initarg :gsvTalkerId
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CfgNMEA7 (<CfgNMEA7>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgNMEA7>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgNMEA7)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgNMEA7> is deprecated: use ublox_msgs-msg:CfgNMEA7 instead.")))

(cl:ensure-generic-function 'filter-val :lambda-list '(m))
(cl:defmethod filter-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:filter-val is deprecated.  Use ublox_msgs-msg:filter instead.")
  (filter m))

(cl:ensure-generic-function 'nmeaVersion-val :lambda-list '(m))
(cl:defmethod nmeaVersion-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:nmeaVersion-val is deprecated.  Use ublox_msgs-msg:nmeaVersion instead.")
  (nmeaVersion m))

(cl:ensure-generic-function 'numSV-val :lambda-list '(m))
(cl:defmethod numSV-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numSV-val is deprecated.  Use ublox_msgs-msg:numSV instead.")
  (numSV m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'gnssToFilter-val :lambda-list '(m))
(cl:defmethod gnssToFilter-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gnssToFilter-val is deprecated.  Use ublox_msgs-msg:gnssToFilter instead.")
  (gnssToFilter m))

(cl:ensure-generic-function 'svNumbering-val :lambda-list '(m))
(cl:defmethod svNumbering-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svNumbering-val is deprecated.  Use ublox_msgs-msg:svNumbering instead.")
  (svNumbering m))

(cl:ensure-generic-function 'mainTalkerId-val :lambda-list '(m))
(cl:defmethod mainTalkerId-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:mainTalkerId-val is deprecated.  Use ublox_msgs-msg:mainTalkerId instead.")
  (mainTalkerId m))

(cl:ensure-generic-function 'gsvTalkerId-val :lambda-list '(m))
(cl:defmethod gsvTalkerId-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gsvTalkerId-val is deprecated.  Use ublox_msgs-msg:gsvTalkerId instead.")
  (gsvTalkerId m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <CfgNMEA7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved-val is deprecated.  Use ublox_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgNMEA7>)))
    "Constants for message type '<CfgNMEA7>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 23)
    (:FILTER_POS . 1)
    (:FILTER_MSK_POS . 2)
    (:FILTER_TIME . 4)
    (:FILTER_DATE . 8)
    (:FILTER_GPS_ONLY . 16)
    (:FILTER_TRACK . 32)
    (:NMEA_VERSION_2_3 . 35)
    (:NMEA_VERSION_2_1 . 33)
    (:NUM_SV_UNLIMITED . 0)
    (:FLAGS_COMPAT . 1)
    (:FLAGS_CONSIDER . 2)
    (:GNSS_TO_FILTER_GPS . 1)
    (:GNSS_TO_FILTER_SBAS . 2)
    (:GNSS_TO_FILTER_QZSS . 16)
    (:GNSS_TO_FILTER_GLONASS . 32)
    (:SV_NUMBERING_STRICT . 0)
    (:SV_NUMBERING_EXTENDED . 1)
    (:MAIN_TALKER_ID_NOT_OVERRIDDEN . 0)
    (:MAIN_TALKER_ID_GP . 1)
    (:MAIN_TALKER_ID_GL . 2)
    (:MAIN_TALKER_ID_GN . 3)
    (:GSV_TALKER_ID_GNSS_SPECIFIC . 0)
    (:GSV_TALKER_ID_MAIN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgNMEA7)))
    "Constants for message type 'CfgNMEA7"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 23)
    (:FILTER_POS . 1)
    (:FILTER_MSK_POS . 2)
    (:FILTER_TIME . 4)
    (:FILTER_DATE . 8)
    (:FILTER_GPS_ONLY . 16)
    (:FILTER_TRACK . 32)
    (:NMEA_VERSION_2_3 . 35)
    (:NMEA_VERSION_2_1 . 33)
    (:NUM_SV_UNLIMITED . 0)
    (:FLAGS_COMPAT . 1)
    (:FLAGS_CONSIDER . 2)
    (:GNSS_TO_FILTER_GPS . 1)
    (:GNSS_TO_FILTER_SBAS . 2)
    (:GNSS_TO_FILTER_QZSS . 16)
    (:GNSS_TO_FILTER_GLONASS . 32)
    (:SV_NUMBERING_STRICT . 0)
    (:SV_NUMBERING_EXTENDED . 1)
    (:MAIN_TALKER_ID_NOT_OVERRIDDEN . 0)
    (:MAIN_TALKER_ID_GP . 1)
    (:MAIN_TALKER_ID_GL . 2)
    (:MAIN_TALKER_ID_GN . 3)
    (:GSV_TALKER_ID_GNSS_SPECIFIC . 0)
    (:GSV_TALKER_ID_MAIN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgNMEA7>) ostream)
  "Serializes a message object of type '<CfgNMEA7>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nmeaVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssToFilter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnssToFilter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gnssToFilter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gnssToFilter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svNumbering)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mainTalkerId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gsvTalkerId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgNMEA7>) istream)
  "Deserializes a message object of type '<CfgNMEA7>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nmeaVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssToFilter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnssToFilter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gnssToFilter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gnssToFilter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svNumbering)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mainTalkerId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gsvTalkerId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgNMEA7>)))
  "Returns string type for a message object of type '<CfgNMEA7>"
  "ublox_msgs/CfgNMEA7")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgNMEA7)))
  "Returns string type for a message object of type 'CfgNMEA7"
  "ublox_msgs/CfgNMEA7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgNMEA7>)))
  "Returns md5sum for a message object of type '<CfgNMEA7>"
  "f06212695f6e460ea30b1b436df86c2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgNMEA7)))
  "Returns md5sum for a message object of type 'CfgNMEA7"
  "f06212695f6e460ea30b1b436df86c2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgNMEA7>)))
  "Returns full string definition for message of type '<CfgNMEA7>"
  (cl:format cl:nil "# CFG-NMEA (0x06 0x17)~%# NMEA protocol configuration V0~%#~%# Set/Get the NMEA protocol configuration. See section NMEA Protocol ~%# Configuration for a detailed description of the configuration effects on ~%# NMEA output~%#~%# Supported on: u-blox 7 firmware version 1.00~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 23 ~%~%uint8 filter                  # filter flags~%uint8 FILTER_POS = 1          # Enable position output for failed or ~%                              # invalid fixes~%uint8 FILTER_MSK_POS = 2      # Enable position output for invalid fixes~%uint8 FILTER_TIME = 4         # Enable time output for invalid times~%uint8 FILTER_DATE = 8         # Enable date output for invalid dates~%uint8 FILTER_GPS_ONLY = 16    # Restrict output to GPS satellites only~%uint8 FILTER_TRACK = 32       # Enable COG output even if COG is frozen~%~%uint8 nmeaVersion             # NMEA version~%uint8 NMEA_VERSION_2_3 = 35     # Version 2.3~%uint8 NMEA_VERSION_2_1 = 33     # Version 2.1~%~%uint8 numSV                   # Maximum Number of SVs to report per TalkerId: ~%                              # unlimited (0) or 8, 12, 16~%uint8 NUM_SV_UNLIMITED = 0 ~%~%uint8 flags                   # flags~%uint8 FLAGS_COMPAT = 1          # enable compatibility mode.~%                                # This might be needed for certain applications  ~%                                # when customer's NMEA parser expects a fixed ~%                                # number of  digits in position coordinates~%uint8 FLAGS_CONSIDER = 2        # enable considering mode~%~%uint32 gnssToFilter           # Filters out satellites based on their GNSS.  ~%                              # If a bitfield is enabled, the corresponding ~%                              # satellites will be not output.~%uint32 GNSS_TO_FILTER_GPS = 1       # Disable reporting of GPS satellites~%uint32 GNSS_TO_FILTER_SBAS = 2      # Disable reporting of SBAS satellites~%uint32 GNSS_TO_FILTER_QZSS = 16     # Disable reporting of QZSS satellites~%uint32 GNSS_TO_FILTER_GLONASS = 32  # Disable reporting of GLONASS satellites~%~%uint8 svNumbering             # Configures the display of satellites that do not  ~%                              # have an NMEA-defined value. Note: this does not~%                              # apply to satellites with an unknown ID.~%uint8 SV_NUMBERING_STRICT = 0     # Strict - Satellites are not output~%uint8 SV_NUMBERING_EXTENDED = 1   # Extended - Use proprietary numbering~%~%uint8 mainTalkerId            # By default the main Talker ID (i.e. the Talker ~%                              # ID used  for all messages other than GSV) is ~%                              # determined by the  GNSS assignment of the ~%                              # receiver's channels (see CfgGNSS). ~%                              # This field enables the main Talker ID to be ~%                              # overridden~%uint8 MAIN_TALKER_ID_NOT_OVERRIDDEN = 0   # Main Talker ID is not overridden~%uint8 MAIN_TALKER_ID_GP = 1               # Set main Talker ID to 'GP'~%uint8 MAIN_TALKER_ID_GL = 2               # Set main Talker ID to 'GL'~%uint8 MAIN_TALKER_ID_GN = 3               # Set main Talker ID to 'GN'~%~%uint8 gsvTalkerId             # By default the Talker ID for GSV messages is  ~%                              # GNSS specific (as defined by NMEA). This field ~%                              # enables the GSV Talker ID to be overridden.~%uint8 GSV_TALKER_ID_GNSS_SPECIFIC = 0   # Use GNSS specific Talker ID ~%                                        # (as defined by NMEA)~%uint8 GSV_TALKER_ID_MAIN = 1            # Use the main Talker ID~%~%uint8 reserved              # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgNMEA7)))
  "Returns full string definition for message of type 'CfgNMEA7"
  (cl:format cl:nil "# CFG-NMEA (0x06 0x17)~%# NMEA protocol configuration V0~%#~%# Set/Get the NMEA protocol configuration. See section NMEA Protocol ~%# Configuration for a detailed description of the configuration effects on ~%# NMEA output~%#~%# Supported on: u-blox 7 firmware version 1.00~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 23 ~%~%uint8 filter                  # filter flags~%uint8 FILTER_POS = 1          # Enable position output for failed or ~%                              # invalid fixes~%uint8 FILTER_MSK_POS = 2      # Enable position output for invalid fixes~%uint8 FILTER_TIME = 4         # Enable time output for invalid times~%uint8 FILTER_DATE = 8         # Enable date output for invalid dates~%uint8 FILTER_GPS_ONLY = 16    # Restrict output to GPS satellites only~%uint8 FILTER_TRACK = 32       # Enable COG output even if COG is frozen~%~%uint8 nmeaVersion             # NMEA version~%uint8 NMEA_VERSION_2_3 = 35     # Version 2.3~%uint8 NMEA_VERSION_2_1 = 33     # Version 2.1~%~%uint8 numSV                   # Maximum Number of SVs to report per TalkerId: ~%                              # unlimited (0) or 8, 12, 16~%uint8 NUM_SV_UNLIMITED = 0 ~%~%uint8 flags                   # flags~%uint8 FLAGS_COMPAT = 1          # enable compatibility mode.~%                                # This might be needed for certain applications  ~%                                # when customer's NMEA parser expects a fixed ~%                                # number of  digits in position coordinates~%uint8 FLAGS_CONSIDER = 2        # enable considering mode~%~%uint32 gnssToFilter           # Filters out satellites based on their GNSS.  ~%                              # If a bitfield is enabled, the corresponding ~%                              # satellites will be not output.~%uint32 GNSS_TO_FILTER_GPS = 1       # Disable reporting of GPS satellites~%uint32 GNSS_TO_FILTER_SBAS = 2      # Disable reporting of SBAS satellites~%uint32 GNSS_TO_FILTER_QZSS = 16     # Disable reporting of QZSS satellites~%uint32 GNSS_TO_FILTER_GLONASS = 32  # Disable reporting of GLONASS satellites~%~%uint8 svNumbering             # Configures the display of satellites that do not  ~%                              # have an NMEA-defined value. Note: this does not~%                              # apply to satellites with an unknown ID.~%uint8 SV_NUMBERING_STRICT = 0     # Strict - Satellites are not output~%uint8 SV_NUMBERING_EXTENDED = 1   # Extended - Use proprietary numbering~%~%uint8 mainTalkerId            # By default the main Talker ID (i.e. the Talker ~%                              # ID used  for all messages other than GSV) is ~%                              # determined by the  GNSS assignment of the ~%                              # receiver's channels (see CfgGNSS). ~%                              # This field enables the main Talker ID to be ~%                              # overridden~%uint8 MAIN_TALKER_ID_NOT_OVERRIDDEN = 0   # Main Talker ID is not overridden~%uint8 MAIN_TALKER_ID_GP = 1               # Set main Talker ID to 'GP'~%uint8 MAIN_TALKER_ID_GL = 2               # Set main Talker ID to 'GL'~%uint8 MAIN_TALKER_ID_GN = 3               # Set main Talker ID to 'GN'~%~%uint8 gsvTalkerId             # By default the Talker ID for GSV messages is  ~%                              # GNSS specific (as defined by NMEA). This field ~%                              # enables the GSV Talker ID to be overridden.~%uint8 GSV_TALKER_ID_GNSS_SPECIFIC = 0   # Use GNSS specific Talker ID ~%                                        # (as defined by NMEA)~%uint8 GSV_TALKER_ID_MAIN = 1            # Use the main Talker ID~%~%uint8 reserved              # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgNMEA7>))
  (cl:+ 0
     1
     1
     1
     1
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgNMEA7>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgNMEA7
    (cl:cons ':filter (filter msg))
    (cl:cons ':nmeaVersion (nmeaVersion msg))
    (cl:cons ':numSV (numSV msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':gnssToFilter (gnssToFilter msg))
    (cl:cons ':svNumbering (svNumbering msg))
    (cl:cons ':mainTalkerId (mainTalkerId msg))
    (cl:cons ':gsvTalkerId (gsvTalkerId msg))
    (cl:cons ':reserved (reserved msg))
))
