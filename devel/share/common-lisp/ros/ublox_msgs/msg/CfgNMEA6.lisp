; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgNMEA6.msg.html

(cl:defclass <CfgNMEA6> (roslisp-msg-protocol:ros-message)
  ((filter
    :reader filter
    :initarg :filter
    :type cl:fixnum
    :initform 0)
   (version
    :reader version
    :initarg :version
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
    :initform 0))
)

(cl:defclass CfgNMEA6 (<CfgNMEA6>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgNMEA6>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgNMEA6)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgNMEA6> is deprecated: use ublox_msgs-msg:CfgNMEA6 instead.")))

(cl:ensure-generic-function 'filter-val :lambda-list '(m))
(cl:defmethod filter-val ((m <CfgNMEA6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:filter-val is deprecated.  Use ublox_msgs-msg:filter instead.")
  (filter m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <CfgNMEA6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'numSV-val :lambda-list '(m))
(cl:defmethod numSV-val ((m <CfgNMEA6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numSV-val is deprecated.  Use ublox_msgs-msg:numSV instead.")
  (numSV m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <CfgNMEA6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgNMEA6>)))
    "Constants for message type '<CfgNMEA6>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 23)
    (:FILTER_POS . 1)
    (:FILTER_MSK_POS . 2)
    (:FILTER_TIME . 4)
    (:FILTER_DATE . 8)
    (:FILTER_SBAS_FILT . 16)
    (:FILTER_TRACK . 32)
    (:NMEA_VERSION_2_3 . 35)
    (:NMEA_VERSION_2_1 . 33)
    (:FLAGS_COMPAT . 1)
    (:FLAGS_CONSIDER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgNMEA6)))
    "Constants for message type 'CfgNMEA6"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 23)
    (:FILTER_POS . 1)
    (:FILTER_MSK_POS . 2)
    (:FILTER_TIME . 4)
    (:FILTER_DATE . 8)
    (:FILTER_SBAS_FILT . 16)
    (:FILTER_TRACK . 32)
    (:NMEA_VERSION_2_3 . 35)
    (:NMEA_VERSION_2_1 . 33)
    (:FLAGS_COMPAT . 1)
    (:FLAGS_CONSIDER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgNMEA6>) ostream)
  "Serializes a message object of type '<CfgNMEA6>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgNMEA6>) istream)
  "Deserializes a message object of type '<CfgNMEA6>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgNMEA6>)))
  "Returns string type for a message object of type '<CfgNMEA6>"
  "ublox_msgs/CfgNMEA6")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgNMEA6)))
  "Returns string type for a message object of type 'CfgNMEA6"
  "ublox_msgs/CfgNMEA6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgNMEA6>)))
  "Returns md5sum for a message object of type '<CfgNMEA6>"
  "9ffbd21c832ce4472519430326bb44e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgNMEA6)))
  "Returns md5sum for a message object of type 'CfgNMEA6"
  "9ffbd21c832ce4472519430326bb44e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgNMEA6>)))
  "Returns full string definition for message of type '<CfgNMEA6>"
  (cl:format cl:nil "# CFG-NMEA (0x06 0x17)~%# NMEA protocol configuration~%#~%# Set/Get the NMEA protocol configuration. See section NMEA Protocol ~%# Configuration for a detailed description of the configuration effects on ~%# NMEA output~%#~%# Supported on u-blox 6 from firmware version 6.00 up to version 7.03.~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 23 ~%~%uint8 filter                  # filter flags~%uint8 FILTER_POS = 1          # Disable position filtering~%uint8 FILTER_MSK_POS = 2      # Disable masked position filtering~%uint8 FILTER_TIME = 4         # Disable time filtering~%uint8 FILTER_DATE = 8         # Disable date filtering~%uint8 FILTER_SBAS_FILT = 16   # Enable SBAS filtering~%uint8 FILTER_TRACK = 32       # Disable track filtering~%~%uint8 version             # NMEA version~%uint8 NMEA_VERSION_2_3 = 35     # Version 2.3~%uint8 NMEA_VERSION_2_1 = 33     # Version 2.1~%~%uint8 numSV                   # Maximum Number of SVs to report in NMEA~%                              # protocol.~%                              # This does not affect the receiver's operation.~%                              # It only limits the number of SVs reported in~%                              # NMEA mode (this might be needed with older~%                              # mapping applications which only support 8- or~%                              # 12-channel receivers)~%~%uint8 flags                   # flags~%uint8 FLAGS_COMPAT = 1          # enable compatibility mode.~%                                # This might be needed for certain applications  ~%                                # when customer's NMEA parser expects a fixed ~%                                # number of  digits in position coordinates~%uint8 FLAGS_CONSIDER = 2        # enable considering mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgNMEA6)))
  "Returns full string definition for message of type 'CfgNMEA6"
  (cl:format cl:nil "# CFG-NMEA (0x06 0x17)~%# NMEA protocol configuration~%#~%# Set/Get the NMEA protocol configuration. See section NMEA Protocol ~%# Configuration for a detailed description of the configuration effects on ~%# NMEA output~%#~%# Supported on u-blox 6 from firmware version 6.00 up to version 7.03.~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 23 ~%~%uint8 filter                  # filter flags~%uint8 FILTER_POS = 1          # Disable position filtering~%uint8 FILTER_MSK_POS = 2      # Disable masked position filtering~%uint8 FILTER_TIME = 4         # Disable time filtering~%uint8 FILTER_DATE = 8         # Disable date filtering~%uint8 FILTER_SBAS_FILT = 16   # Enable SBAS filtering~%uint8 FILTER_TRACK = 32       # Disable track filtering~%~%uint8 version             # NMEA version~%uint8 NMEA_VERSION_2_3 = 35     # Version 2.3~%uint8 NMEA_VERSION_2_1 = 33     # Version 2.1~%~%uint8 numSV                   # Maximum Number of SVs to report in NMEA~%                              # protocol.~%                              # This does not affect the receiver's operation.~%                              # It only limits the number of SVs reported in~%                              # NMEA mode (this might be needed with older~%                              # mapping applications which only support 8- or~%                              # 12-channel receivers)~%~%uint8 flags                   # flags~%uint8 FLAGS_COMPAT = 1          # enable compatibility mode.~%                                # This might be needed for certain applications  ~%                                # when customer's NMEA parser expects a fixed ~%                                # number of  digits in position coordinates~%uint8 FLAGS_CONSIDER = 2        # enable considering mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgNMEA6>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgNMEA6>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgNMEA6
    (cl:cons ':filter (filter msg))
    (cl:cons ':version (version msg))
    (cl:cons ':numSV (numSV msg))
    (cl:cons ':flags (flags msg))
))
