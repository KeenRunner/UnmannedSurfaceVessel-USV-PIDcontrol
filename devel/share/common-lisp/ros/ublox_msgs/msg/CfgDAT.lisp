; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgDAT.msg.html

(cl:defclass <CfgDAT> (roslisp-msg-protocol:ros-message)
  ((datumNum
    :reader datumNum
    :initarg :datumNum
    :type cl:fixnum
    :initform 0)
   (datumName
    :reader datumName
    :initarg :datumName
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0))
   (majA
    :reader majA
    :initarg :majA
    :type cl:float
    :initform 0.0)
   (flat
    :reader flat
    :initarg :flat
    :type cl:float
    :initform 0.0)
   (dX
    :reader dX
    :initarg :dX
    :type cl:float
    :initform 0.0)
   (dY
    :reader dY
    :initarg :dY
    :type cl:float
    :initform 0.0)
   (dZ
    :reader dZ
    :initarg :dZ
    :type cl:float
    :initform 0.0)
   (rotX
    :reader rotX
    :initarg :rotX
    :type cl:float
    :initform 0.0)
   (rotY
    :reader rotY
    :initarg :rotY
    :type cl:float
    :initform 0.0)
   (rotZ
    :reader rotZ
    :initarg :rotZ
    :type cl:float
    :initform 0.0)
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass CfgDAT (<CfgDAT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgDAT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgDAT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgDAT> is deprecated: use ublox_msgs-msg:CfgDAT instead.")))

(cl:ensure-generic-function 'datumNum-val :lambda-list '(m))
(cl:defmethod datumNum-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:datumNum-val is deprecated.  Use ublox_msgs-msg:datumNum instead.")
  (datumNum m))

(cl:ensure-generic-function 'datumName-val :lambda-list '(m))
(cl:defmethod datumName-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:datumName-val is deprecated.  Use ublox_msgs-msg:datumName instead.")
  (datumName m))

(cl:ensure-generic-function 'majA-val :lambda-list '(m))
(cl:defmethod majA-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:majA-val is deprecated.  Use ublox_msgs-msg:majA instead.")
  (majA m))

(cl:ensure-generic-function 'flat-val :lambda-list '(m))
(cl:defmethod flat-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flat-val is deprecated.  Use ublox_msgs-msg:flat instead.")
  (flat m))

(cl:ensure-generic-function 'dX-val :lambda-list '(m))
(cl:defmethod dX-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dX-val is deprecated.  Use ublox_msgs-msg:dX instead.")
  (dX m))

(cl:ensure-generic-function 'dY-val :lambda-list '(m))
(cl:defmethod dY-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dY-val is deprecated.  Use ublox_msgs-msg:dY instead.")
  (dY m))

(cl:ensure-generic-function 'dZ-val :lambda-list '(m))
(cl:defmethod dZ-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dZ-val is deprecated.  Use ublox_msgs-msg:dZ instead.")
  (dZ m))

(cl:ensure-generic-function 'rotX-val :lambda-list '(m))
(cl:defmethod rotX-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:rotX-val is deprecated.  Use ublox_msgs-msg:rotX instead.")
  (rotX m))

(cl:ensure-generic-function 'rotY-val :lambda-list '(m))
(cl:defmethod rotY-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:rotY-val is deprecated.  Use ublox_msgs-msg:rotY instead.")
  (rotY m))

(cl:ensure-generic-function 'rotZ-val :lambda-list '(m))
(cl:defmethod rotZ-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:rotZ-val is deprecated.  Use ublox_msgs-msg:rotZ instead.")
  (rotZ m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <CfgDAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:scale-val is deprecated.  Use ublox_msgs-msg:scale instead.")
  (scale m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgDAT>)))
    "Constants for message type '<CfgDAT>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 6)
    (:DATUM_NUM_WGS84 . 0)
    (:DATUM_NUM_USER . 65535))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgDAT)))
    "Constants for message type 'CfgDAT"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 6)
    (:DATUM_NUM_WGS84 . 0)
    (:DATUM_NUM_USER . 65535))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgDAT>) ostream)
  "Serializes a message object of type '<CfgDAT>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datumNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datumNum)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'datumName))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'majA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'flat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgDAT>) istream)
  "Deserializes a message object of type '<CfgDAT>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datumNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datumNum)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'datumName) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'datumName)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'majA) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgDAT>)))
  "Returns string type for a message object of type '<CfgDAT>"
  "ublox_msgs/CfgDAT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgDAT)))
  "Returns string type for a message object of type 'CfgDAT"
  "ublox_msgs/CfgDAT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgDAT>)))
  "Returns md5sum for a message object of type '<CfgDAT>"
  "05d7a26d8a386fd3054953454a03b113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgDAT)))
  "Returns md5sum for a message object of type 'CfgDAT"
  "05d7a26d8a386fd3054953454a03b113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgDAT>)))
  "Returns full string definition for message of type '<CfgDAT>"
  (cl:format cl:nil "# CFG-DAT (0x06 0x06)~%# Set User-defined Datum~%# ~%# For more information see the description of Geodetic Systems and Frames.~%# ~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 6~%~%# Only for GET, these values are not used for write~%uint16 datumNum       # Datum Number: 0 = WGS84, 0xFFFF = user-defined~%uint16 DATUM_NUM_WGS84 = 0~%uint16 DATUM_NUM_USER = 65535~%~%uint8[6] datumName    # ASCII String: WGS84 or USER~%~%float64 majA          # Semi-major Axis [m]~%                      # accepted range = 6,300,000.0 to 6,500,000.0 meters ~%float64 flat          # 1.0 / Flattening ~%                      # accepted range is 0.0 to 500.0~%~%float32 dX            # X Axis shift at the origin [m]~%                      # accepted range is +/- 5000.0 meters ~%float32 dY            # Y Axis shift at the origin [m]~%                      # accepted range is +/- 5000.0 meters ~%float32 dZ            # Z Axis shift at the origin [m]~%                      # accepted range is +/- 5000.0 meters ~%~%float32 rotX          # Rotation about the X Axis [s]~%                      # accepted range is +/- 20.0 milli-arc seconds ~%float32 rotY          # Rotation about the Y Axis [s]~%                      # accepted range is +/- 20.0 milli-arc seconds ~%float32 rotZ          # Rotation about the Z Axis [s]~%                      # accepted range is +/- 20.0 milli-arc seconds~%~%float32 scale         # Scale change [ppm]~%                      # accepted range is 0.0 to 50.0 parts per million~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgDAT)))
  "Returns full string definition for message of type 'CfgDAT"
  (cl:format cl:nil "# CFG-DAT (0x06 0x06)~%# Set User-defined Datum~%# ~%# For more information see the description of Geodetic Systems and Frames.~%# ~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 6~%~%# Only for GET, these values are not used for write~%uint16 datumNum       # Datum Number: 0 = WGS84, 0xFFFF = user-defined~%uint16 DATUM_NUM_WGS84 = 0~%uint16 DATUM_NUM_USER = 65535~%~%uint8[6] datumName    # ASCII String: WGS84 or USER~%~%float64 majA          # Semi-major Axis [m]~%                      # accepted range = 6,300,000.0 to 6,500,000.0 meters ~%float64 flat          # 1.0 / Flattening ~%                      # accepted range is 0.0 to 500.0~%~%float32 dX            # X Axis shift at the origin [m]~%                      # accepted range is +/- 5000.0 meters ~%float32 dY            # Y Axis shift at the origin [m]~%                      # accepted range is +/- 5000.0 meters ~%float32 dZ            # Z Axis shift at the origin [m]~%                      # accepted range is +/- 5000.0 meters ~%~%float32 rotX          # Rotation about the X Axis [s]~%                      # accepted range is +/- 20.0 milli-arc seconds ~%float32 rotY          # Rotation about the Y Axis [s]~%                      # accepted range is +/- 20.0 milli-arc seconds ~%float32 rotZ          # Rotation about the Z Axis [s]~%                      # accepted range is +/- 20.0 milli-arc seconds~%~%float32 scale         # Scale change [ppm]~%                      # accepted range is 0.0 to 50.0 parts per million~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgDAT>))
  (cl:+ 0
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'datumName) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     8
     8
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgDAT>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgDAT
    (cl:cons ':datumNum (datumNum msg))
    (cl:cons ':datumName (datumName msg))
    (cl:cons ':majA (majA msg))
    (cl:cons ':flat (flat msg))
    (cl:cons ':dX (dX msg))
    (cl:cons ':dY (dY msg))
    (cl:cons ':dZ (dZ msg))
    (cl:cons ':rotX (rotX msg))
    (cl:cons ':rotY (rotY msg))
    (cl:cons ':rotZ (rotZ msg))
    (cl:cons ':scale (scale msg))
))
