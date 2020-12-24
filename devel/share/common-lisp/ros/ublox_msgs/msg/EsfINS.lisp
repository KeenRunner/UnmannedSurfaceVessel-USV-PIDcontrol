; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude EsfINS.msg.html

(cl:defclass <EsfINS> (roslisp-msg-protocol:ros-message)
  ((bitfield0
    :reader bitfield0
    :initarg :bitfield0
    :type cl:integer
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (xAngRate
    :reader xAngRate
    :initarg :xAngRate
    :type cl:integer
    :initform 0)
   (yAngRate
    :reader yAngRate
    :initarg :yAngRate
    :type cl:integer
    :initform 0)
   (zAngRate
    :reader zAngRate
    :initarg :zAngRate
    :type cl:integer
    :initform 0)
   (xAccel
    :reader xAccel
    :initarg :xAccel
    :type cl:integer
    :initform 0)
   (yAccel
    :reader yAccel
    :initarg :yAccel
    :type cl:integer
    :initform 0)
   (zAccel
    :reader zAccel
    :initarg :zAccel
    :type cl:integer
    :initform 0))
)

(cl:defclass EsfINS (<EsfINS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EsfINS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EsfINS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<EsfINS> is deprecated: use ublox_msgs-msg:EsfINS instead.")))

(cl:ensure-generic-function 'bitfield0-val :lambda-list '(m))
(cl:defmethod bitfield0-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:bitfield0-val is deprecated.  Use ublox_msgs-msg:bitfield0 instead.")
  (bitfield0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'xAngRate-val :lambda-list '(m))
(cl:defmethod xAngRate-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:xAngRate-val is deprecated.  Use ublox_msgs-msg:xAngRate instead.")
  (xAngRate m))

(cl:ensure-generic-function 'yAngRate-val :lambda-list '(m))
(cl:defmethod yAngRate-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:yAngRate-val is deprecated.  Use ublox_msgs-msg:yAngRate instead.")
  (yAngRate m))

(cl:ensure-generic-function 'zAngRate-val :lambda-list '(m))
(cl:defmethod zAngRate-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:zAngRate-val is deprecated.  Use ublox_msgs-msg:zAngRate instead.")
  (zAngRate m))

(cl:ensure-generic-function 'xAccel-val :lambda-list '(m))
(cl:defmethod xAccel-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:xAccel-val is deprecated.  Use ublox_msgs-msg:xAccel instead.")
  (xAccel m))

(cl:ensure-generic-function 'yAccel-val :lambda-list '(m))
(cl:defmethod yAccel-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:yAccel-val is deprecated.  Use ublox_msgs-msg:yAccel instead.")
  (yAccel m))

(cl:ensure-generic-function 'zAccel-val :lambda-list '(m))
(cl:defmethod zAccel-val ((m <EsfINS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:zAccel-val is deprecated.  Use ublox_msgs-msg:zAccel instead.")
  (zAccel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EsfINS>)))
    "Constants for message type '<EsfINS>"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 21)
    (:BITFIELD0_VERSION . 255)
    (:BITFIELD0_X_ANG_RATE_VALID . 256)
    (:BITFIELD0_Y_ANG_RATE_VALID . 512)
    (:BITFIELD0_Z_ANG_RATE_VALID . 1024)
    (:BITFIELD0_X_ACCEL_VALID . 2048)
    (:BITFIELD0_Y_ACCEL_VALID . 4096)
    (:BITFIELD0_Z_ACCEL_VALID . 8192))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EsfINS)))
    "Constants for message type 'EsfINS"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 21)
    (:BITFIELD0_VERSION . 255)
    (:BITFIELD0_X_ANG_RATE_VALID . 256)
    (:BITFIELD0_Y_ANG_RATE_VALID . 512)
    (:BITFIELD0_Z_ANG_RATE_VALID . 1024)
    (:BITFIELD0_X_ACCEL_VALID . 2048)
    (:BITFIELD0_Y_ACCEL_VALID . 4096)
    (:BITFIELD0_Z_ACCEL_VALID . 8192))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EsfINS>) ostream)
  "Serializes a message object of type '<EsfINS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bitfield0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bitfield0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bitfield0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bitfield0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'xAngRate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yAngRate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'zAngRate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'xAccel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yAccel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'zAccel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EsfINS>) istream)
  "Deserializes a message object of type '<EsfINS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bitfield0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bitfield0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bitfield0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bitfield0)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xAngRate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yAngRate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zAngRate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xAccel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yAccel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zAccel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EsfINS>)))
  "Returns string type for a message object of type '<EsfINS>"
  "ublox_msgs/EsfINS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EsfINS)))
  "Returns string type for a message object of type 'EsfINS"
  "ublox_msgs/EsfINS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EsfINS>)))
  "Returns md5sum for a message object of type '<EsfINS>"
  "975d05e9503737524d7e47a42cb9fff1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EsfINS)))
  "Returns md5sum for a message object of type 'EsfINS"
  "975d05e9503737524d7e47a42cb9fff1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EsfINS>)))
  "Returns full string definition for message of type '<EsfINS>"
  (cl:format cl:nil "# ESF-INS (0x10 0x15)~%# Vehicle dynamics information~%# ~%# This message outputs information about vehicle dynamics computed by the ~%# Inertial Navigation System (INS) during ESF-based navigation.~%# For ADR products, the output dynamics information (angular rates and ~%# accelerations) is expressed with respect to the vehicle-frame.~%# For UDR products, the output dynamics information (angular rates and ~%# accelerations) is expressed with respect to the body-frame.~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 21~%~%uint32 bitfield0      # Bitfield (see graphic below)~%uint32 BITFIELD0_VERSION = 255            # Message version (1 for this version).~%uint32 BITFIELD0_X_ANG_RATE_VALID = 256   # Compensated x-axis angular rate data ~%                                          # validity flag~%uint32 BITFIELD0_Y_ANG_RATE_VALID = 512   # Compensated y-axis angular rate data ~%                                          # validity flag~%uint32 BITFIELD0_Z_ANG_RATE_VALID = 1024  # Compensated z-axis angular rate data ~%                                          # validity flag~%uint32 BITFIELD0_X_ACCEL_VALID = 2048     # Compensated x-axis acceleration data ~%                                          # validity flag~%uint32 BITFIELD0_Y_ACCEL_VALID = 4096     # Compensated y-axis acceleration data ~%                                          # validity flag~%uint32 BITFIELD0_Z_ACCEL_VALID = 8192     # Compensated z-axis acceleration data ~%                                          # validity flag~%~%uint8[4] reserved1    # Reserved~%~%uint32 iTOW           # GPS time of week of the navigation epoch [ms]~%int32 xAngRate        # Compensated x-axis angular rate [deg/s / 1e-3]~%int32 yAngRate        # Compensated y-axis angular rate [deg/s / 1e-3]~%int32 zAngRate        # Compensated z-axis angular rate [deg/s / 1e-3]~%int32 xAccel          # Compensated x-axis acceleration (gravity-free) [mg]~%int32 yAccel          # Compensated y-axis acceleration (gravity-free) [mg]~%int32 zAccel          # Compensated z-axis acceleration (gravity-free) [mg]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EsfINS)))
  "Returns full string definition for message of type 'EsfINS"
  (cl:format cl:nil "# ESF-INS (0x10 0x15)~%# Vehicle dynamics information~%# ~%# This message outputs information about vehicle dynamics computed by the ~%# Inertial Navigation System (INS) during ESF-based navigation.~%# For ADR products, the output dynamics information (angular rates and ~%# accelerations) is expressed with respect to the vehicle-frame.~%# For UDR products, the output dynamics information (angular rates and ~%# accelerations) is expressed with respect to the body-frame.~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 21~%~%uint32 bitfield0      # Bitfield (see graphic below)~%uint32 BITFIELD0_VERSION = 255            # Message version (1 for this version).~%uint32 BITFIELD0_X_ANG_RATE_VALID = 256   # Compensated x-axis angular rate data ~%                                          # validity flag~%uint32 BITFIELD0_Y_ANG_RATE_VALID = 512   # Compensated y-axis angular rate data ~%                                          # validity flag~%uint32 BITFIELD0_Z_ANG_RATE_VALID = 1024  # Compensated z-axis angular rate data ~%                                          # validity flag~%uint32 BITFIELD0_X_ACCEL_VALID = 2048     # Compensated x-axis acceleration data ~%                                          # validity flag~%uint32 BITFIELD0_Y_ACCEL_VALID = 4096     # Compensated y-axis acceleration data ~%                                          # validity flag~%uint32 BITFIELD0_Z_ACCEL_VALID = 8192     # Compensated z-axis acceleration data ~%                                          # validity flag~%~%uint8[4] reserved1    # Reserved~%~%uint32 iTOW           # GPS time of week of the navigation epoch [ms]~%int32 xAngRate        # Compensated x-axis angular rate [deg/s / 1e-3]~%int32 yAngRate        # Compensated y-axis angular rate [deg/s / 1e-3]~%int32 zAngRate        # Compensated z-axis angular rate [deg/s / 1e-3]~%int32 xAccel          # Compensated x-axis acceleration (gravity-free) [mg]~%int32 yAccel          # Compensated y-axis acceleration (gravity-free) [mg]~%int32 zAccel          # Compensated z-axis acceleration (gravity-free) [mg]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EsfINS>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EsfINS>))
  "Converts a ROS message object to a list"
  (cl:list 'EsfINS
    (cl:cons ':bitfield0 (bitfield0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':xAngRate (xAngRate msg))
    (cl:cons ':yAngRate (yAngRate msg))
    (cl:cons ':zAngRate (zAngRate msg))
    (cl:cons ':xAccel (xAccel msg))
    (cl:cons ':yAccel (yAccel msg))
    (cl:cons ':zAccel (zAccel msg))
))
