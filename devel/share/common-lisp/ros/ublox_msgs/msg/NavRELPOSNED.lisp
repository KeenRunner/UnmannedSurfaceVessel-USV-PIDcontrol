; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavRELPOSNED.msg.html

(cl:defclass <NavRELPOSNED> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type cl:fixnum
    :initform 0)
   (refStationId
    :reader refStationId
    :initarg :refStationId
    :type cl:fixnum
    :initform 0)
   (iTow
    :reader iTow
    :initarg :iTow
    :type cl:integer
    :initform 0)
   (relPosN
    :reader relPosN
    :initarg :relPosN
    :type cl:integer
    :initform 0)
   (relPosE
    :reader relPosE
    :initarg :relPosE
    :type cl:integer
    :initform 0)
   (relPosD
    :reader relPosD
    :initarg :relPosD
    :type cl:integer
    :initform 0)
   (relPosHPN
    :reader relPosHPN
    :initarg :relPosHPN
    :type cl:fixnum
    :initform 0)
   (relPosHPE
    :reader relPosHPE
    :initarg :relPosHPE
    :type cl:fixnum
    :initform 0)
   (relPosHPD
    :reader relPosHPD
    :initarg :relPosHPD
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (accN
    :reader accN
    :initarg :accN
    :type cl:integer
    :initform 0)
   (accE
    :reader accE
    :initarg :accE
    :type cl:integer
    :initform 0)
   (accD
    :reader accD
    :initarg :accD
    :type cl:integer
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:integer
    :initform 0))
)

(cl:defclass NavRELPOSNED (<NavRELPOSNED>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavRELPOSNED>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavRELPOSNED)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavRELPOSNED> is deprecated: use ublox_msgs-msg:NavRELPOSNED instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'refStationId-val :lambda-list '(m))
(cl:defmethod refStationId-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:refStationId-val is deprecated.  Use ublox_msgs-msg:refStationId instead.")
  (refStationId m))

(cl:ensure-generic-function 'iTow-val :lambda-list '(m))
(cl:defmethod iTow-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTow-val is deprecated.  Use ublox_msgs-msg:iTow instead.")
  (iTow m))

(cl:ensure-generic-function 'relPosN-val :lambda-list '(m))
(cl:defmethod relPosN-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:relPosN-val is deprecated.  Use ublox_msgs-msg:relPosN instead.")
  (relPosN m))

(cl:ensure-generic-function 'relPosE-val :lambda-list '(m))
(cl:defmethod relPosE-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:relPosE-val is deprecated.  Use ublox_msgs-msg:relPosE instead.")
  (relPosE m))

(cl:ensure-generic-function 'relPosD-val :lambda-list '(m))
(cl:defmethod relPosD-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:relPosD-val is deprecated.  Use ublox_msgs-msg:relPosD instead.")
  (relPosD m))

(cl:ensure-generic-function 'relPosHPN-val :lambda-list '(m))
(cl:defmethod relPosHPN-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:relPosHPN-val is deprecated.  Use ublox_msgs-msg:relPosHPN instead.")
  (relPosHPN m))

(cl:ensure-generic-function 'relPosHPE-val :lambda-list '(m))
(cl:defmethod relPosHPE-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:relPosHPE-val is deprecated.  Use ublox_msgs-msg:relPosHPE instead.")
  (relPosHPE m))

(cl:ensure-generic-function 'relPosHPD-val :lambda-list '(m))
(cl:defmethod relPosHPD-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:relPosHPD-val is deprecated.  Use ublox_msgs-msg:relPosHPD instead.")
  (relPosHPD m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'accN-val :lambda-list '(m))
(cl:defmethod accN-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:accN-val is deprecated.  Use ublox_msgs-msg:accN instead.")
  (accN m))

(cl:ensure-generic-function 'accE-val :lambda-list '(m))
(cl:defmethod accE-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:accE-val is deprecated.  Use ublox_msgs-msg:accE instead.")
  (accE m))

(cl:ensure-generic-function 'accD-val :lambda-list '(m))
(cl:defmethod accD-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:accD-val is deprecated.  Use ublox_msgs-msg:accD instead.")
  (accD m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <NavRELPOSNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavRELPOSNED>)))
    "Constants for message type '<NavRELPOSNED>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 60)
    (:FLAGS_GNSS_FIX_OK . 1)
    (:FLAGS_DIFF_SOLN . 2)
    (:FLAGS_REL_POS_VALID . 4)
    (:FLAGS_CARR_SOLN_MASK . 24)
    (:FLAGS_CARR_SOLN_NONE . 0)
    (:FLAGS_CARR_SOLN_FLOAT . 8)
    (:FLAGS_CARR_SOLN_FIXED . 16)
    (:FLAGS_IS_MOVING . 32)
    (:FLAGS_REF_POS_MISS . 64)
    (:FLAGS_REF_OBS_MISS . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavRELPOSNED)))
    "Constants for message type 'NavRELPOSNED"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 60)
    (:FLAGS_GNSS_FIX_OK . 1)
    (:FLAGS_DIFF_SOLN . 2)
    (:FLAGS_REL_POS_VALID . 4)
    (:FLAGS_CARR_SOLN_MASK . 24)
    (:FLAGS_CARR_SOLN_NONE . 0)
    (:FLAGS_CARR_SOLN_FLOAT . 8)
    (:FLAGS_CARR_SOLN_FIXED . 16)
    (:FLAGS_IS_MOVING . 32)
    (:FLAGS_REF_POS_MISS . 64)
    (:FLAGS_REF_OBS_MISS . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavRELPOSNED>) ostream)
  "Serializes a message object of type '<NavRELPOSNED>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'refStationId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'refStationId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTow)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'relPosN)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relPosE)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relPosD)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relPosHPN)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relPosHPE)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relPosHPD)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accN)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accN)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accN)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accN)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accE)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accE)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accE)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accE)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavRELPOSNED>) istream)
  "Deserializes a message object of type '<NavRELPOSNED>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'refStationId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'refStationId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTow)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relPosN) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relPosE) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relPosD) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relPosHPN) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relPosHPE) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relPosHPD) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accN)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accN)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accN)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accN)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accE)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accE)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accE)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accE)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accD)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accD)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accD)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accD)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavRELPOSNED>)))
  "Returns string type for a message object of type '<NavRELPOSNED>"
  "ublox_msgs/NavRELPOSNED")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavRELPOSNED)))
  "Returns string type for a message object of type 'NavRELPOSNED"
  "ublox_msgs/NavRELPOSNED")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavRELPOSNED>)))
  "Returns md5sum for a message object of type '<NavRELPOSNED>"
  "fea74cb440387f9a8bcf826c15649585")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavRELPOSNED)))
  "Returns md5sum for a message object of type 'NavRELPOSNED"
  "fea74cb440387f9a8bcf826c15649585")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavRELPOSNED>)))
  "Returns full string definition for message of type '<NavRELPOSNED>"
  (cl:format cl:nil "# NAV-RELPOSNED (0x01 0x3C)~%# Relative Positioning Information in NED frame~%# ~%# The NED frame is defined as the local topological system at the reference~%# station. The relative position vector components in this message, along with~%# their associated accuracies, are given in that local topological system~%# This message contains the relative position vector from the Reference Station~%# to the Rover, including accuracy figures, in the local topological system~%# defined at the reference station~%#~%# Supported on:~%#  - u-blox 8 / u-blox M8 from protocol version 20 up to version 23.01 (only~%#    with High Precision GNSS products)~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 60~%~%uint8 version                     # Message version (0x00 for this version)~%uint8 reserved0                   # Reserved~%uint16 refStationId               # Reference Station ID. Must be in the range ~%                                  # 0..4095~%uint32 iTow                       # GPS time of week of the navigation epoch ~%                                  # [ms]~%~%int32 relPosN                     # North component of relative position vector ~%                                  # [cm]~%int32 relPosE                     # East component of relative position vector~%                                  # [cm]~%int32 relPosD                     # Down component of relative position vector~%                                  # [cm]~%~%int8 relPosHPN                    # High-precision North component of relative~%                                  # position vector. [0.1 mm]~%                                  # Must be in the range -99 to +99.~%                                  # The full North component of the relative~%                                  # position vector, in units of cm, is given by~%                                  # relPosN + (relPosHPN * 1e-2)~%int8 relPosHPE                    # High-precision East component of relative~%                                  # position vector. [0.1 mm]~%                                  # Must be in the range -99 to +99.~%                                  # The full East component of the relative ~%                                  # position vector, in units of cm, is given by~%                                  # relPosE + (relPosHPE * 1e-2)~%int8 relPosHPD                    # High-precision Down component of relative~%                                  # position vector. [0.1 mm]~%                                  # Must be in the range -99 to +99.~%                                  # The full Down component of the relative~%                                  # position vector, in units of cm, is given by~%                                  # relPosD + (relPosHPD * 1e-2)~%~%uint8 reserved1                   # Reserved~%~%uint32 accN                       # Accuracy of relative position North ~%                                  # component [0.1 mm]~%uint32 accE                       # Accuracy of relative position East component~%                                  # [0.1 mm]~%uint32 accD                       # Accuracy of relative position Down component~%                                  # [0.1 mm]~%~%uint32 flags~%uint32 FLAGS_GNSS_FIX_OK = 1      # A valid fix (i.e within DOP & accuracy ~%                                  # masks)~%uint32 FLAGS_DIFF_SOLN = 2        # Set if differential corrections were applied~%uint32 FLAGS_REL_POS_VALID = 4    # Set if relative position components and~%                                  # accuracies are valid~%uint32 FLAGS_CARR_SOLN_MASK = 24  # Carrier phase range solution status:~%uint32 FLAGS_CARR_SOLN_NONE = 0     # No carrier phase range solution~%uint32 FLAGS_CARR_SOLN_FLOAT = 8    # Float solution. No fixed integer carrier ~%                                    # phase measurements have been used to~%                                    # calculate the solution~%uint32 FLAGS_CARR_SOLN_FIXED = 16   # Fixed solution. One or more fixed~%                                    # integer carrier phase range measurements~%                                    # have been used to calculate the solution~%uint32 FLAGS_IS_MOVING = 32       # if the receiver is operating in moving ~%                                  # baseline mode (not supported in protocol~%                                  # versions less than 20.3)~%uint32 FLAGS_REF_POS_MISS = 64    # Set if extrapolated reference position was~%                                  # used to compute moving baseline solution ~%                                  # this epoch (not supported in protocol~%                                  # versions less than 20.3)  ~%uint32 FLAGS_REF_OBS_MISS = 128   # Set if extrapolated reference observations~%                                  # were used to compute moving baseline~%                                  # solution this epoch (not supported in~%                                  # protocol versions less than 20.3)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavRELPOSNED)))
  "Returns full string definition for message of type 'NavRELPOSNED"
  (cl:format cl:nil "# NAV-RELPOSNED (0x01 0x3C)~%# Relative Positioning Information in NED frame~%# ~%# The NED frame is defined as the local topological system at the reference~%# station. The relative position vector components in this message, along with~%# their associated accuracies, are given in that local topological system~%# This message contains the relative position vector from the Reference Station~%# to the Rover, including accuracy figures, in the local topological system~%# defined at the reference station~%#~%# Supported on:~%#  - u-blox 8 / u-blox M8 from protocol version 20 up to version 23.01 (only~%#    with High Precision GNSS products)~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 60~%~%uint8 version                     # Message version (0x00 for this version)~%uint8 reserved0                   # Reserved~%uint16 refStationId               # Reference Station ID. Must be in the range ~%                                  # 0..4095~%uint32 iTow                       # GPS time of week of the navigation epoch ~%                                  # [ms]~%~%int32 relPosN                     # North component of relative position vector ~%                                  # [cm]~%int32 relPosE                     # East component of relative position vector~%                                  # [cm]~%int32 relPosD                     # Down component of relative position vector~%                                  # [cm]~%~%int8 relPosHPN                    # High-precision North component of relative~%                                  # position vector. [0.1 mm]~%                                  # Must be in the range -99 to +99.~%                                  # The full North component of the relative~%                                  # position vector, in units of cm, is given by~%                                  # relPosN + (relPosHPN * 1e-2)~%int8 relPosHPE                    # High-precision East component of relative~%                                  # position vector. [0.1 mm]~%                                  # Must be in the range -99 to +99.~%                                  # The full East component of the relative ~%                                  # position vector, in units of cm, is given by~%                                  # relPosE + (relPosHPE * 1e-2)~%int8 relPosHPD                    # High-precision Down component of relative~%                                  # position vector. [0.1 mm]~%                                  # Must be in the range -99 to +99.~%                                  # The full Down component of the relative~%                                  # position vector, in units of cm, is given by~%                                  # relPosD + (relPosHPD * 1e-2)~%~%uint8 reserved1                   # Reserved~%~%uint32 accN                       # Accuracy of relative position North ~%                                  # component [0.1 mm]~%uint32 accE                       # Accuracy of relative position East component~%                                  # [0.1 mm]~%uint32 accD                       # Accuracy of relative position Down component~%                                  # [0.1 mm]~%~%uint32 flags~%uint32 FLAGS_GNSS_FIX_OK = 1      # A valid fix (i.e within DOP & accuracy ~%                                  # masks)~%uint32 FLAGS_DIFF_SOLN = 2        # Set if differential corrections were applied~%uint32 FLAGS_REL_POS_VALID = 4    # Set if relative position components and~%                                  # accuracies are valid~%uint32 FLAGS_CARR_SOLN_MASK = 24  # Carrier phase range solution status:~%uint32 FLAGS_CARR_SOLN_NONE = 0     # No carrier phase range solution~%uint32 FLAGS_CARR_SOLN_FLOAT = 8    # Float solution. No fixed integer carrier ~%                                    # phase measurements have been used to~%                                    # calculate the solution~%uint32 FLAGS_CARR_SOLN_FIXED = 16   # Fixed solution. One or more fixed~%                                    # integer carrier phase range measurements~%                                    # have been used to calculate the solution~%uint32 FLAGS_IS_MOVING = 32       # if the receiver is operating in moving ~%                                  # baseline mode (not supported in protocol~%                                  # versions less than 20.3)~%uint32 FLAGS_REF_POS_MISS = 64    # Set if extrapolated reference position was~%                                  # used to compute moving baseline solution ~%                                  # this epoch (not supported in protocol~%                                  # versions less than 20.3)  ~%uint32 FLAGS_REF_OBS_MISS = 128   # Set if extrapolated reference observations~%                                  # were used to compute moving baseline~%                                  # solution this epoch (not supported in~%                                  # protocol versions less than 20.3)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavRELPOSNED>))
  (cl:+ 0
     1
     1
     2
     4
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
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavRELPOSNED>))
  "Converts a ROS message object to a list"
  (cl:list 'NavRELPOSNED
    (cl:cons ':version (version msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':refStationId (refStationId msg))
    (cl:cons ':iTow (iTow msg))
    (cl:cons ':relPosN (relPosN msg))
    (cl:cons ':relPosE (relPosE msg))
    (cl:cons ':relPosD (relPosD msg))
    (cl:cons ':relPosHPN (relPosHPN msg))
    (cl:cons ':relPosHPE (relPosHPE msg))
    (cl:cons ':relPosHPD (relPosHPD msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':accN (accN msg))
    (cl:cons ':accE (accE msg))
    (cl:cons ':accD (accD msg))
    (cl:cons ':flags (flags msg))
))
