; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSVIN.msg.html

(cl:defclass <NavSVIN> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (dur
    :reader dur
    :initarg :dur
    :type cl:integer
    :initform 0)
   (meanX
    :reader meanX
    :initarg :meanX
    :type cl:integer
    :initform 0)
   (meanY
    :reader meanY
    :initarg :meanY
    :type cl:integer
    :initform 0)
   (meanZ
    :reader meanZ
    :initarg :meanZ
    :type cl:integer
    :initform 0)
   (meanXHP
    :reader meanXHP
    :initarg :meanXHP
    :type cl:fixnum
    :initform 0)
   (meanYHP
    :reader meanYHP
    :initarg :meanYHP
    :type cl:fixnum
    :initform 0)
   (meanZHP
    :reader meanZHP
    :initarg :meanZHP
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (meanAcc
    :reader meanAcc
    :initarg :meanAcc
    :type cl:integer
    :initform 0)
   (obs
    :reader obs
    :initarg :obs
    :type cl:integer
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:fixnum
    :initform 0)
   (active
    :reader active
    :initarg :active
    :type cl:fixnum
    :initform 0)
   (reserved3
    :reader reserved3
    :initarg :reserved3
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass NavSVIN (<NavSVIN>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSVIN>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSVIN)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSVIN> is deprecated: use ublox_msgs-msg:NavSVIN instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'dur-val :lambda-list '(m))
(cl:defmethod dur-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dur-val is deprecated.  Use ublox_msgs-msg:dur instead.")
  (dur m))

(cl:ensure-generic-function 'meanX-val :lambda-list '(m))
(cl:defmethod meanX-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meanX-val is deprecated.  Use ublox_msgs-msg:meanX instead.")
  (meanX m))

(cl:ensure-generic-function 'meanY-val :lambda-list '(m))
(cl:defmethod meanY-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meanY-val is deprecated.  Use ublox_msgs-msg:meanY instead.")
  (meanY m))

(cl:ensure-generic-function 'meanZ-val :lambda-list '(m))
(cl:defmethod meanZ-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meanZ-val is deprecated.  Use ublox_msgs-msg:meanZ instead.")
  (meanZ m))

(cl:ensure-generic-function 'meanXHP-val :lambda-list '(m))
(cl:defmethod meanXHP-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meanXHP-val is deprecated.  Use ublox_msgs-msg:meanXHP instead.")
  (meanXHP m))

(cl:ensure-generic-function 'meanYHP-val :lambda-list '(m))
(cl:defmethod meanYHP-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meanYHP-val is deprecated.  Use ublox_msgs-msg:meanYHP instead.")
  (meanYHP m))

(cl:ensure-generic-function 'meanZHP-val :lambda-list '(m))
(cl:defmethod meanZHP-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meanZHP-val is deprecated.  Use ublox_msgs-msg:meanZHP instead.")
  (meanZHP m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'meanAcc-val :lambda-list '(m))
(cl:defmethod meanAcc-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meanAcc-val is deprecated.  Use ublox_msgs-msg:meanAcc instead.")
  (meanAcc m))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:obs-val is deprecated.  Use ublox_msgs-msg:obs instead.")
  (obs m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:valid-val is deprecated.  Use ublox_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:active-val is deprecated.  Use ublox_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'reserved3-val :lambda-list '(m))
(cl:defmethod reserved3-val ((m <NavSVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved3-val is deprecated.  Use ublox_msgs-msg:reserved3 instead.")
  (reserved3 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSVIN>)))
    "Constants for message type '<NavSVIN>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 59))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSVIN)))
    "Constants for message type 'NavSVIN"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 59))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSVIN>) ostream)
  "Serializes a message object of type '<NavSVIN>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dur)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'meanX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'meanY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'meanZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'meanXHP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'meanYHP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'meanZHP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'meanAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'meanAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'meanAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'meanAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'active)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSVIN>) istream)
  "Deserializes a message object of type '<NavSVIN>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meanX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meanY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meanZ) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meanXHP) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meanYHP) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meanZHP) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'meanAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'meanAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'meanAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'meanAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'active)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved3) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved3)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSVIN>)))
  "Returns string type for a message object of type '<NavSVIN>"
  "ublox_msgs/NavSVIN")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSVIN)))
  "Returns string type for a message object of type 'NavSVIN"
  "ublox_msgs/NavSVIN")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSVIN>)))
  "Returns md5sum for a message object of type '<NavSVIN>"
  "c78016f30ce026b9e670e40dd151a8ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSVIN)))
  "Returns md5sum for a message object of type 'NavSVIN"
  "c78016f30ce026b9e670e40dd151a8ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSVIN>)))
  "Returns full string definition for message of type '<NavSVIN>"
  (cl:format cl:nil "# NAV-SVIN (0x01 0x3B)~%# Survey-in data~%# ~%# This message contains information about survey-in parameters.~%# Supported on:~%#  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision~%#    GNSS products)~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 59~%~%uint8 version           # Message version (0x00 for this version)~%uint8[3] reserved0      # Reserved~%~%uint32 iTOW             # GPS time of week of the navigation epoch [ms]~%~%uint32 dur              # Passed survey-in observation time [s]~%~%int32 meanX             # Current survey-in mean position ECEF X coordinate [cm]~%int32 meanY             # Current survey-in mean position ECEF Y coordinate [cm]~%int32 meanZ             # Current survey-in mean position ECEF Z coordinate [cm]~%~%int8 meanXHP            # Current high-precision survey-in mean position~%                        # ECEF X coordinate. 0.1_mm ~%                        # Must be in the range -99..+99.~%                        # The current survey-in mean position ECEF X~%                        # coordinate, in units of cm, is given by~%                        # meanX + (0.01 * meanXHP)~%int8 meanYHP            # Current high-precision survey-in mean position~%                        # ECEF Y coordinate. [0.1 mm] ~%                        # Must be in the range -99..+99.~%                        # The current survey-in mean position ECEF Y~%                        # coordinate, in units of cm, is given by~%                        # meanY + (0.01 * meanYHP)~%int8 meanZHP            # Current high-precision survey-in mean position~%                        # ECEF Z coordinate. [0.1 mm] ~%                        # Must be in the range -99..+99.~%                        # The current survey-in mean position ECEF Z~%                        # coordinate, in units of cm, is given by~%                        # meanZ + (0.01 * meanZHP)~%~%uint8 reserved1         # Reserved~%~%uint32 meanAcc          # Current survey-in mean position accuracy [0.1 mm]~%uint32 obs              # Number of position observations used during survey-in~%uint8 valid             # Survey-in position validity flag, 1 = valid~%                        # otherwise 0~%uint8 active            # Survey-in in progress flag, 1 = in-progress~%                        # otherwise 0~%~%uint8[2] reserved3      # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSVIN)))
  "Returns full string definition for message of type 'NavSVIN"
  (cl:format cl:nil "# NAV-SVIN (0x01 0x3B)~%# Survey-in data~%# ~%# This message contains information about survey-in parameters.~%# Supported on:~%#  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision~%#    GNSS products)~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 59~%~%uint8 version           # Message version (0x00 for this version)~%uint8[3] reserved0      # Reserved~%~%uint32 iTOW             # GPS time of week of the navigation epoch [ms]~%~%uint32 dur              # Passed survey-in observation time [s]~%~%int32 meanX             # Current survey-in mean position ECEF X coordinate [cm]~%int32 meanY             # Current survey-in mean position ECEF Y coordinate [cm]~%int32 meanZ             # Current survey-in mean position ECEF Z coordinate [cm]~%~%int8 meanXHP            # Current high-precision survey-in mean position~%                        # ECEF X coordinate. 0.1_mm ~%                        # Must be in the range -99..+99.~%                        # The current survey-in mean position ECEF X~%                        # coordinate, in units of cm, is given by~%                        # meanX + (0.01 * meanXHP)~%int8 meanYHP            # Current high-precision survey-in mean position~%                        # ECEF Y coordinate. [0.1 mm] ~%                        # Must be in the range -99..+99.~%                        # The current survey-in mean position ECEF Y~%                        # coordinate, in units of cm, is given by~%                        # meanY + (0.01 * meanYHP)~%int8 meanZHP            # Current high-precision survey-in mean position~%                        # ECEF Z coordinate. [0.1 mm] ~%                        # Must be in the range -99..+99.~%                        # The current survey-in mean position ECEF Z~%                        # coordinate, in units of cm, is given by~%                        # meanZ + (0.01 * meanZHP)~%~%uint8 reserved1         # Reserved~%~%uint32 meanAcc          # Current survey-in mean position accuracy [0.1 mm]~%uint32 obs              # Number of position observations used during survey-in~%uint8 valid             # Survey-in position validity flag, 1 = valid~%                        # otherwise 0~%uint8 active            # Survey-in in progress flag, 1 = in-progress~%                        # otherwise 0~%~%uint8[2] reserved3      # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSVIN>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
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
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSVIN>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSVIN
    (cl:cons ':version (version msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':dur (dur msg))
    (cl:cons ':meanX (meanX msg))
    (cl:cons ':meanY (meanY msg))
    (cl:cons ':meanZ (meanZ msg))
    (cl:cons ':meanXHP (meanXHP msg))
    (cl:cons ':meanYHP (meanYHP msg))
    (cl:cons ':meanZHP (meanZHP msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':meanAcc (meanAcc msg))
    (cl:cons ':obs (obs msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':active (active msg))
    (cl:cons ':reserved3 (reserved3 msg))
))
