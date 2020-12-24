; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavDGPS.msg.html

(cl:defclass <NavDGPS> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (baseId
    :reader baseId
    :initarg :baseId
    :type cl:fixnum
    :initform 0)
   (baseHealth
    :reader baseHealth
    :initarg :baseHealth
    :type cl:fixnum
    :initform 0)
   (numCh
    :reader numCh
    :initarg :numCh
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (sv
    :reader sv
    :initarg :sv
    :type (cl:vector ublox_msgs-msg:NavDGPS_SV)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:NavDGPS_SV :initial-element (cl:make-instance 'ublox_msgs-msg:NavDGPS_SV))))
)

(cl:defclass NavDGPS (<NavDGPS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavDGPS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavDGPS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavDGPS> is deprecated: use ublox_msgs-msg:NavDGPS instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:age-val is deprecated.  Use ublox_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'baseId-val :lambda-list '(m))
(cl:defmethod baseId-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:baseId-val is deprecated.  Use ublox_msgs-msg:baseId instead.")
  (baseId m))

(cl:ensure-generic-function 'baseHealth-val :lambda-list '(m))
(cl:defmethod baseHealth-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:baseHealth-val is deprecated.  Use ublox_msgs-msg:baseHealth instead.")
  (baseHealth m))

(cl:ensure-generic-function 'numCh-val :lambda-list '(m))
(cl:defmethod numCh-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numCh-val is deprecated.  Use ublox_msgs-msg:numCh instead.")
  (numCh m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:status-val is deprecated.  Use ublox_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'sv-val :lambda-list '(m))
(cl:defmethod sv-val ((m <NavDGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sv-val is deprecated.  Use ublox_msgs-msg:sv instead.")
  (sv m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavDGPS>)))
    "Constants for message type '<NavDGPS>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 49)
    (:DGPS_CORRECTION_NONE . 0)
    (:DGPS_CORRECTION_PR_PRR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavDGPS)))
    "Constants for message type 'NavDGPS"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 49)
    (:DGPS_CORRECTION_NONE . 0)
    (:DGPS_CORRECTION_PR_PRR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavDGPS>) ostream)
  "Serializes a message object of type '<NavDGPS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseHealth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'numCh)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavDGPS>) istream)
  "Deserializes a message object of type '<NavDGPS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseId) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseHealth) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numCh) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:NavDGPS_SV))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavDGPS>)))
  "Returns string type for a message object of type '<NavDGPS>"
  "ublox_msgs/NavDGPS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavDGPS)))
  "Returns string type for a message object of type 'NavDGPS"
  "ublox_msgs/NavDGPS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavDGPS>)))
  "Returns md5sum for a message object of type '<NavDGPS>"
  "b40fcf35e803e9b5ccedf7c1c7ca332d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavDGPS)))
  "Returns md5sum for a message object of type 'NavDGPS"
  "b40fcf35e803e9b5ccedf7c1c7ca332d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavDGPS>)))
  "Returns full string definition for message of type '<NavDGPS>"
  (cl:format cl:nil "# NAV-DGPS (0x01 0x31)~%# DGPS Data Used for NAV~%#~%# This message outputs the Correction data as it has been applied to the current~%# NAV Solution. See also the notes on the RTCM protocol.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 49~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%int32 age               # Age of newest correction data [ms]~%int16 baseId            # DGPS Base Station ID~%int16 baseHealth        # DGPS Base Station Health Status~%int8 numCh              # Number of channels for which correction data is ~%                        # following~%~%uint8 status            # DGPS Correction Type Status~%uint8 DGPS_CORRECTION_NONE = 0~%uint8 DGPS_CORRECTION_PR_PRR = 1~%~%uint16 reserved1        # Reserved~%~%NavDGPS_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/NavDGPS_SV~%# see message NavDGPS~%~%uint8 svid              # Satellite ID~%~%uint8 flags             # Bitmask / Channel Number and Usage:~%uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15~%                                # Channel numbers > 15 marked as 15~%uint8 FLAGS_DGPS = 16           # DGPS Used for this SV~%~%uint16 ageC             # Age of latest correction data [ms]~%float32 prc             # Pseudo Range Correction [m]~%float32 prrc            # Pseudo Range Rate Correction [m/s]~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavDGPS)))
  "Returns full string definition for message of type 'NavDGPS"
  (cl:format cl:nil "# NAV-DGPS (0x01 0x31)~%# DGPS Data Used for NAV~%#~%# This message outputs the Correction data as it has been applied to the current~%# NAV Solution. See also the notes on the RTCM protocol.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 49~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%int32 age               # Age of newest correction data [ms]~%int16 baseId            # DGPS Base Station ID~%int16 baseHealth        # DGPS Base Station Health Status~%int8 numCh              # Number of channels for which correction data is ~%                        # following~%~%uint8 status            # DGPS Correction Type Status~%uint8 DGPS_CORRECTION_NONE = 0~%uint8 DGPS_CORRECTION_PR_PRR = 1~%~%uint16 reserved1        # Reserved~%~%NavDGPS_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/NavDGPS_SV~%# see message NavDGPS~%~%uint8 svid              # Satellite ID~%~%uint8 flags             # Bitmask / Channel Number and Usage:~%uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15~%                                # Channel numbers > 15 marked as 15~%uint8 FLAGS_DGPS = 16           # DGPS Used for this SV~%~%uint16 ageC             # Age of latest correction data [ms]~%float32 prc             # Pseudo Range Correction [m]~%float32 prrc            # Pseudo Range Rate Correction [m/s]~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavDGPS>))
  (cl:+ 0
     4
     4
     2
     2
     1
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavDGPS>))
  "Converts a ROS message object to a list"
  (cl:list 'NavDGPS
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':age (age msg))
    (cl:cons ':baseId (baseId msg))
    (cl:cons ':baseHealth (baseHealth msg))
    (cl:cons ':numCh (numCh msg))
    (cl:cons ':status (status msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':sv (sv msg))
))
