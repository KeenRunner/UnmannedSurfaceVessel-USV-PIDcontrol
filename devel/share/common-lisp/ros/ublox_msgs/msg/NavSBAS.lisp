; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSBAS.msg.html

(cl:defclass <NavSBAS> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (geo
    :reader geo
    :initarg :geo
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (sys
    :reader sys
    :initarg :sys
    :type cl:fixnum
    :initform 0)
   (service
    :reader service
    :initarg :service
    :type cl:fixnum
    :initform 0)
   (cnt
    :reader cnt
    :initarg :cnt
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (sv
    :reader sv
    :initarg :sv
    :type (cl:vector ublox_msgs-msg:NavSBAS_SV)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:NavSBAS_SV :initial-element (cl:make-instance 'ublox_msgs-msg:NavSBAS_SV))))
)

(cl:defclass NavSBAS (<NavSBAS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSBAS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSBAS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSBAS> is deprecated: use ublox_msgs-msg:NavSBAS instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'geo-val :lambda-list '(m))
(cl:defmethod geo-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:geo-val is deprecated.  Use ublox_msgs-msg:geo instead.")
  (geo m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:mode-val is deprecated.  Use ublox_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'sys-val :lambda-list '(m))
(cl:defmethod sys-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sys-val is deprecated.  Use ublox_msgs-msg:sys instead.")
  (sys m))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:service-val is deprecated.  Use ublox_msgs-msg:service instead.")
  (service m))

(cl:ensure-generic-function 'cnt-val :lambda-list '(m))
(cl:defmethod cnt-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cnt-val is deprecated.  Use ublox_msgs-msg:cnt instead.")
  (cnt m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'sv-val :lambda-list '(m))
(cl:defmethod sv-val ((m <NavSBAS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sv-val is deprecated.  Use ublox_msgs-msg:sv instead.")
  (sv m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSBAS>)))
    "Constants for message type '<NavSBAS>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 50)
    (:MODE_DISABLED . 0)
    (:MODE_ENABLED_INTEGRITY . 1)
    (:MODE_ENABLED_TESTMODE . 3)
    (:SYS_UNKNOWN . -1)
    (:SYS_WAAS . 0)
    (:SYS_EGNOS . 1)
    (:SYS_MSAS . 2)
    (:SYS_GAGAN . 3)
    (:SYS_GPS . 16)
    (:SERVICE_RANGING . 1)
    (:SERVICE_CORRECTIONS . 2)
    (:SERVICE_INTEGRITY . 4)
    (:SERVICE_TESTMODE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSBAS)))
    "Constants for message type 'NavSBAS"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 50)
    (:MODE_DISABLED . 0)
    (:MODE_ENABLED_INTEGRITY . 1)
    (:MODE_ENABLED_TESTMODE . 3)
    (:SYS_UNKNOWN . -1)
    (:SYS_WAAS . 0)
    (:SYS_EGNOS . 1)
    (:SYS_MSAS . 2)
    (:SYS_GAGAN . 3)
    (:SYS_GPS . 16)
    (:SERVICE_RANGING . 1)
    (:SERVICE_CORRECTIONS . 2)
    (:SERVICE_INTEGRITY . 4)
    (:SERVICE_TESTMODE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSBAS>) ostream)
  "Serializes a message object of type '<NavSBAS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'geo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sys)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'service)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cnt)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSBAS>) istream)
  "Deserializes a message object of type '<NavSBAS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'geo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sys) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'service)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cnt)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:NavSBAS_SV))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSBAS>)))
  "Returns string type for a message object of type '<NavSBAS>"
  "ublox_msgs/NavSBAS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSBAS)))
  "Returns string type for a message object of type 'NavSBAS"
  "ublox_msgs/NavSBAS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSBAS>)))
  "Returns md5sum for a message object of type '<NavSBAS>"
  "4ea0a5f1e74c114f14024eb1bc277c57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSBAS)))
  "Returns md5sum for a message object of type 'NavSBAS"
  "4ea0a5f1e74c114f14024eb1bc277c57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSBAS>)))
  "Returns full string definition for message of type '<NavSBAS>"
  (cl:format cl:nil "# NAV-SBAS (0x01 0x32)~%# SBAS Status Data~%#~%# This message outputs the status of the SBAS sub system~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 50~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%uint8 geo               # PRN Number of the GEO where correction and integrity ~%                        # data is used from~%~%uint8 mode              # SBAS Mode~%uint8 MODE_DISABLED = 0~%uint8 MODE_ENABLED_INTEGRITY = 1~%uint8 MODE_ENABLED_TESTMODE = 3~%~%int8 sys                # SBAS System (WAAS/EGNOS/...)~%int8 SYS_UNKNOWN = -1~%int8 SYS_WAAS = 0~%int8 SYS_EGNOS = 1~%int8 SYS_MSAS = 2~%int8 SYS_GAGAN = 3~%int8 SYS_GPS = 16~%~%uint8 service           # SBAS Services available~%uint8 SERVICE_RANGING = 1~%uint8 SERVICE_CORRECTIONS = 2~%uint8 SERVICE_INTEGRITY = 4~%uint8 SERVICE_TESTMODE = 8~%~%uint8 cnt               # Number of SV data following~%uint8[3] reserved0      # Reserved~%~%NavSBAS_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/NavSBAS_SV~%# see message NavSBAS~%#~%~%uint8 svid              # SV Id~%uint8 flags             # Flags for this SV~%uint8 udre              # Monitoring status~%uint8 svSys             # System (WAAS/EGNOS/...), same as SYS~%uint8 svService         # Services available, same as SERVICE~%uint8 reserved1         # Reserved~%int16 prc               # Pseudo Range correction in [cm]~%uint16 reserved2        # Reserved~%int16 ic                # Ionosphere correction in [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSBAS)))
  "Returns full string definition for message of type 'NavSBAS"
  (cl:format cl:nil "# NAV-SBAS (0x01 0x32)~%# SBAS Status Data~%#~%# This message outputs the status of the SBAS sub system~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 50~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%uint8 geo               # PRN Number of the GEO where correction and integrity ~%                        # data is used from~%~%uint8 mode              # SBAS Mode~%uint8 MODE_DISABLED = 0~%uint8 MODE_ENABLED_INTEGRITY = 1~%uint8 MODE_ENABLED_TESTMODE = 3~%~%int8 sys                # SBAS System (WAAS/EGNOS/...)~%int8 SYS_UNKNOWN = -1~%int8 SYS_WAAS = 0~%int8 SYS_EGNOS = 1~%int8 SYS_MSAS = 2~%int8 SYS_GAGAN = 3~%int8 SYS_GPS = 16~%~%uint8 service           # SBAS Services available~%uint8 SERVICE_RANGING = 1~%uint8 SERVICE_CORRECTIONS = 2~%uint8 SERVICE_INTEGRITY = 4~%uint8 SERVICE_TESTMODE = 8~%~%uint8 cnt               # Number of SV data following~%uint8[3] reserved0      # Reserved~%~%NavSBAS_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/NavSBAS_SV~%# see message NavSBAS~%#~%~%uint8 svid              # SV Id~%uint8 flags             # Flags for this SV~%uint8 udre              # Monitoring status~%uint8 svSys             # System (WAAS/EGNOS/...), same as SYS~%uint8 svService         # Services available, same as SERVICE~%uint8 reserved1         # Reserved~%int16 prc               # Pseudo Range correction in [cm]~%uint16 reserved2        # Reserved~%int16 ic                # Ionosphere correction in [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSBAS>))
  (cl:+ 0
     4
     1
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSBAS>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSBAS
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':geo (geo msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':sys (sys msg))
    (cl:cons ':service (service msg))
    (cl:cons ':cnt (cnt msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':sv (sv msg))
))
