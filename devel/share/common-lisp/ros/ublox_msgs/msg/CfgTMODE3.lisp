; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgTMODE3.msg.html

(cl:defclass <CfgTMODE3> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
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
    :type cl:fixnum
    :initform 0)
   (ecefXOrLat
    :reader ecefXOrLat
    :initarg :ecefXOrLat
    :type cl:integer
    :initform 0)
   (ecefYOrLon
    :reader ecefYOrLon
    :initarg :ecefYOrLon
    :type cl:integer
    :initform 0)
   (ecefZOrAlt
    :reader ecefZOrAlt
    :initarg :ecefZOrAlt
    :type cl:integer
    :initform 0)
   (ecefXOrLatHP
    :reader ecefXOrLatHP
    :initarg :ecefXOrLatHP
    :type cl:fixnum
    :initform 0)
   (ecefYOrLonHP
    :reader ecefYOrLonHP
    :initarg :ecefYOrLonHP
    :type cl:fixnum
    :initform 0)
   (ecefZOrAltHP
    :reader ecefZOrAltHP
    :initarg :ecefZOrAltHP
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:fixnum
    :initform 0)
   (fixedPosAcc
    :reader fixedPosAcc
    :initarg :fixedPosAcc
    :type cl:integer
    :initform 0)
   (svinMinDur
    :reader svinMinDur
    :initarg :svinMinDur
    :type cl:integer
    :initform 0)
   (svinAccLimit
    :reader svinAccLimit
    :initarg :svinAccLimit
    :type cl:integer
    :initform 0)
   (reserved3
    :reader reserved3
    :initarg :reserved3
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CfgTMODE3 (<CfgTMODE3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgTMODE3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgTMODE3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgTMODE3> is deprecated: use ublox_msgs-msg:CfgTMODE3 instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'ecefXOrLat-val :lambda-list '(m))
(cl:defmethod ecefXOrLat-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefXOrLat-val is deprecated.  Use ublox_msgs-msg:ecefXOrLat instead.")
  (ecefXOrLat m))

(cl:ensure-generic-function 'ecefYOrLon-val :lambda-list '(m))
(cl:defmethod ecefYOrLon-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefYOrLon-val is deprecated.  Use ublox_msgs-msg:ecefYOrLon instead.")
  (ecefYOrLon m))

(cl:ensure-generic-function 'ecefZOrAlt-val :lambda-list '(m))
(cl:defmethod ecefZOrAlt-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefZOrAlt-val is deprecated.  Use ublox_msgs-msg:ecefZOrAlt instead.")
  (ecefZOrAlt m))

(cl:ensure-generic-function 'ecefXOrLatHP-val :lambda-list '(m))
(cl:defmethod ecefXOrLatHP-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefXOrLatHP-val is deprecated.  Use ublox_msgs-msg:ecefXOrLatHP instead.")
  (ecefXOrLatHP m))

(cl:ensure-generic-function 'ecefYOrLonHP-val :lambda-list '(m))
(cl:defmethod ecefYOrLonHP-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefYOrLonHP-val is deprecated.  Use ublox_msgs-msg:ecefYOrLonHP instead.")
  (ecefYOrLonHP m))

(cl:ensure-generic-function 'ecefZOrAltHP-val :lambda-list '(m))
(cl:defmethod ecefZOrAltHP-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefZOrAltHP-val is deprecated.  Use ublox_msgs-msg:ecefZOrAltHP instead.")
  (ecefZOrAltHP m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'fixedPosAcc-val :lambda-list '(m))
(cl:defmethod fixedPosAcc-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:fixedPosAcc-val is deprecated.  Use ublox_msgs-msg:fixedPosAcc instead.")
  (fixedPosAcc m))

(cl:ensure-generic-function 'svinMinDur-val :lambda-list '(m))
(cl:defmethod svinMinDur-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svinMinDur-val is deprecated.  Use ublox_msgs-msg:svinMinDur instead.")
  (svinMinDur m))

(cl:ensure-generic-function 'svinAccLimit-val :lambda-list '(m))
(cl:defmethod svinAccLimit-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svinAccLimit-val is deprecated.  Use ublox_msgs-msg:svinAccLimit instead.")
  (svinAccLimit m))

(cl:ensure-generic-function 'reserved3-val :lambda-list '(m))
(cl:defmethod reserved3-val ((m <CfgTMODE3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved3-val is deprecated.  Use ublox_msgs-msg:reserved3 instead.")
  (reserved3 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgTMODE3>)))
    "Constants for message type '<CfgTMODE3>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 113)
    (:FLAGS_MODE_MASK . 255)
    (:FLAGS_MODE_DISABLED . 0)
    (:FLAGS_MODE_SURVEY_IN . 1)
    (:FLAGS_MODE_FIXED . 2)
    (:FLAGS_LLA . 256))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgTMODE3)))
    "Constants for message type 'CfgTMODE3"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 113)
    (:FLAGS_MODE_MASK . 255)
    (:FLAGS_MODE_DISABLED . 0)
    (:FLAGS_MODE_SURVEY_IN . 1)
    (:FLAGS_MODE_FIXED . 2)
    (:FLAGS_LLA . 256))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgTMODE3>) ostream)
  "Serializes a message object of type '<CfgTMODE3>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ecefXOrLat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefYOrLon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefZOrAlt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefXOrLatHP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefYOrLonHP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefZOrAltHP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixedPosAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixedPosAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fixedPosAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fixedPosAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svinMinDur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svinMinDur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svinMinDur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svinMinDur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svinAccLimit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svinAccLimit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svinAccLimit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svinAccLimit)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgTMODE3>) istream)
  "Deserializes a message object of type '<CfgTMODE3>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefXOrLat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefYOrLon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefZOrAlt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefXOrLatHP) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefYOrLonHP) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefZOrAltHP) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixedPosAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixedPosAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fixedPosAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fixedPosAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svinMinDur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svinMinDur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svinMinDur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svinMinDur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svinAccLimit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svinAccLimit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svinAccLimit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svinAccLimit)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved3) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'reserved3)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgTMODE3>)))
  "Returns string type for a message object of type '<CfgTMODE3>"
  "ublox_msgs/CfgTMODE3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgTMODE3)))
  "Returns string type for a message object of type 'CfgTMODE3"
  "ublox_msgs/CfgTMODE3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgTMODE3>)))
  "Returns md5sum for a message object of type '<CfgTMODE3>"
  "818be20c97f2b940a885faaabc0d98a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgTMODE3)))
  "Returns md5sum for a message object of type 'CfgTMODE3"
  "818be20c97f2b940a885faaabc0d98a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgTMODE3>)))
  "Returns full string definition for message of type '<CfgTMODE3>"
  (cl:format cl:nil "# CFG-TMODE3 (0x06, 0x71)~%# Time Mode Settings 3~%#~%# Configures the receiver to be in Time Mode. The position referred to in this~%# message is that of the Antenna Reference Point (ARP). See the Time Mode ~%# Description for details.~%# ~%# Supported on:~%#  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision~%#    GNSS products)~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 113~%~%uint8 version                     # Message version (0x00 for this version)~%uint8 reserved1                   # Reserved~%~%uint16 flags~%uint16 FLAGS_MODE_MASK = 255      # Receiver Mode:~%uint16 FLAGS_MODE_DISABLED = 0      # Disabled~%uint16 FLAGS_MODE_SURVEY_IN = 1     # Survey In~%uint16 FLAGS_MODE_FIXED = 2         # Fixed Mode (true ARP position required)~%uint16 FLAGS_LLA = 256            # Position is given in LAT/LON/ALT ~%                                  # (default is ECEF)~%~%int32 ecefXOrLat                  # WGS84 ECEF X coordinate (or latitude) of~%                                  # the ARP position, depending on flags above~%                                  # [cm] or [deg / 1e-7]~%int32 ecefYOrLon                  # WGS84 ECEF Y coordinate (or longitude) of~%                                  # the ARP position, depending on flags above~%                                  # [cm] or [deg / 1e-7]~%int32 ecefZOrAlt                  # WGS84 ECEF Z coordinate (or altitude) of~%                                  # the ARP position, depending on flags above~%                                  # [cm]~%int8 ecefXOrLatHP                 # High-precision WGS84 ECEF X coordinate (or~%                                  # latitude) of the ARP position, depending on~%                                  # flags above. Must be in the range -99..+99.~%                                  # The precise WGS84 ECEF X coordinate in units~%                                  # of cm, or the precise WGS84 ECEF latitude in~%                                  # units of 1e-7 degrees, is given by~%                                  # ecefXOrLat + (ecefXOrLatHP * 1e-2)~%                                  # [0.1 mm] or [deg * 1e-9]~%int8 ecefYOrLonHP                 # High-precision WGS84 ECEF Y coordinate (or~%                                  # longitude) of the ARP position, depending on~%                                  # flags above. Must be in the range -99..+99.~%                                  # The precise WGS84 ECEF Y coordinate in units~%                                  # of cm, or the precise WGS84 ECEF longitude ~%                                  # in units of 1e-7 degrees, is given by~%                                  # ecefYOrLon + (ecefYOrLonHP * 1e-2)~%                                  # [0.1 mm] or [deg * 1e-9]~%int8 ecefZOrAltHP                 # High-precision WGS84 ECEF Z coordinate (or~%                                  # altitude) of the ARP position, depending on~%                                  # flags above. Must be in the range -99..+99.~%                                  # The precise WGS84 ECEF Z coordinate, or~%                                  # altitude coordinate, in units of cm is given~%                                  # by ecefZOrAlt + (ecefZOrAltHP * 1e-2)~%                                  # [0.1 mm]~%uint8 reserved2                   # Reserved~%~%uint32 fixedPosAcc                # Fixed position 3D accuracy~%                                  # [0.1 mm]~%uint32 svinMinDur                 # Survey-in minimum duration~%                                  # [s]~%uint32 svinAccLimit               # Survey-in position accuracy limit~%                                  # [0.1 mm]~%~%uint8[8] reserved3                # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgTMODE3)))
  "Returns full string definition for message of type 'CfgTMODE3"
  (cl:format cl:nil "# CFG-TMODE3 (0x06, 0x71)~%# Time Mode Settings 3~%#~%# Configures the receiver to be in Time Mode. The position referred to in this~%# message is that of the Antenna Reference Point (ARP). See the Time Mode ~%# Description for details.~%# ~%# Supported on:~%#  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision~%#    GNSS products)~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 113~%~%uint8 version                     # Message version (0x00 for this version)~%uint8 reserved1                   # Reserved~%~%uint16 flags~%uint16 FLAGS_MODE_MASK = 255      # Receiver Mode:~%uint16 FLAGS_MODE_DISABLED = 0      # Disabled~%uint16 FLAGS_MODE_SURVEY_IN = 1     # Survey In~%uint16 FLAGS_MODE_FIXED = 2         # Fixed Mode (true ARP position required)~%uint16 FLAGS_LLA = 256            # Position is given in LAT/LON/ALT ~%                                  # (default is ECEF)~%~%int32 ecefXOrLat                  # WGS84 ECEF X coordinate (or latitude) of~%                                  # the ARP position, depending on flags above~%                                  # [cm] or [deg / 1e-7]~%int32 ecefYOrLon                  # WGS84 ECEF Y coordinate (or longitude) of~%                                  # the ARP position, depending on flags above~%                                  # [cm] or [deg / 1e-7]~%int32 ecefZOrAlt                  # WGS84 ECEF Z coordinate (or altitude) of~%                                  # the ARP position, depending on flags above~%                                  # [cm]~%int8 ecefXOrLatHP                 # High-precision WGS84 ECEF X coordinate (or~%                                  # latitude) of the ARP position, depending on~%                                  # flags above. Must be in the range -99..+99.~%                                  # The precise WGS84 ECEF X coordinate in units~%                                  # of cm, or the precise WGS84 ECEF latitude in~%                                  # units of 1e-7 degrees, is given by~%                                  # ecefXOrLat + (ecefXOrLatHP * 1e-2)~%                                  # [0.1 mm] or [deg * 1e-9]~%int8 ecefYOrLonHP                 # High-precision WGS84 ECEF Y coordinate (or~%                                  # longitude) of the ARP position, depending on~%                                  # flags above. Must be in the range -99..+99.~%                                  # The precise WGS84 ECEF Y coordinate in units~%                                  # of cm, or the precise WGS84 ECEF longitude ~%                                  # in units of 1e-7 degrees, is given by~%                                  # ecefYOrLon + (ecefYOrLonHP * 1e-2)~%                                  # [0.1 mm] or [deg * 1e-9]~%int8 ecefZOrAltHP                 # High-precision WGS84 ECEF Z coordinate (or~%                                  # altitude) of the ARP position, depending on~%                                  # flags above. Must be in the range -99..+99.~%                                  # The precise WGS84 ECEF Z coordinate, or~%                                  # altitude coordinate, in units of cm is given~%                                  # by ecefZOrAlt + (ecefZOrAltHP * 1e-2)~%                                  # [0.1 mm]~%uint8 reserved2                   # Reserved~%~%uint32 fixedPosAcc                # Fixed position 3D accuracy~%                                  # [0.1 mm]~%uint32 svinMinDur                 # Survey-in minimum duration~%                                  # [s]~%uint32 svinAccLimit               # Survey-in position accuracy limit~%                                  # [0.1 mm]~%~%uint8[8] reserved3                # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgTMODE3>))
  (cl:+ 0
     1
     1
     2
     4
     4
     4
     1
     1
     1
     1
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgTMODE3>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgTMODE3
    (cl:cons ':version (version msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':ecefXOrLat (ecefXOrLat msg))
    (cl:cons ':ecefYOrLon (ecefYOrLon msg))
    (cl:cons ':ecefZOrAlt (ecefZOrAlt msg))
    (cl:cons ':ecefXOrLatHP (ecefXOrLatHP msg))
    (cl:cons ':ecefYOrLonHP (ecefYOrLonHP msg))
    (cl:cons ':ecefZOrAltHP (ecefZOrAltHP msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':fixedPosAcc (fixedPosAcc msg))
    (cl:cons ':svinMinDur (svinMinDur msg))
    (cl:cons ':svinAccLimit (svinAccLimit msg))
    (cl:cons ':reserved3 (reserved3 msg))
))
