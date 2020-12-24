; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavPOSLLH.msg.html

(cl:defclass <NavPOSLLH> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:integer
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (hMSL
    :reader hMSL
    :initarg :hMSL
    :type cl:integer
    :initform 0)
   (hAcc
    :reader hAcc
    :initarg :hAcc
    :type cl:integer
    :initform 0)
   (vAcc
    :reader vAcc
    :initarg :vAcc
    :type cl:integer
    :initform 0))
)

(cl:defclass NavPOSLLH (<NavPOSLLH>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPOSLLH>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPOSLLH)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavPOSLLH> is deprecated: use ublox_msgs-msg:NavPOSLLH instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavPOSLLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <NavPOSLLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:lon-val is deprecated.  Use ublox_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <NavPOSLLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:lat-val is deprecated.  Use ublox_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <NavPOSLLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:height-val is deprecated.  Use ublox_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'hMSL-val :lambda-list '(m))
(cl:defmethod hMSL-val ((m <NavPOSLLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hMSL-val is deprecated.  Use ublox_msgs-msg:hMSL instead.")
  (hMSL m))

(cl:ensure-generic-function 'hAcc-val :lambda-list '(m))
(cl:defmethod hAcc-val ((m <NavPOSLLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hAcc-val is deprecated.  Use ublox_msgs-msg:hAcc instead.")
  (hAcc m))

(cl:ensure-generic-function 'vAcc-val :lambda-list '(m))
(cl:defmethod vAcc-val ((m <NavPOSLLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:vAcc-val is deprecated.  Use ublox_msgs-msg:vAcc instead.")
  (vAcc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavPOSLLH>)))
    "Constants for message type '<NavPOSLLH>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavPOSLLH)))
    "Constants for message type 'NavPOSLLH"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPOSLLH>) ostream)
  "Serializes a message object of type '<NavPOSLLH>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hMSL)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vAcc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPOSLLH>) istream)
  "Deserializes a message object of type '<NavPOSLLH>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hMSL) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPOSLLH>)))
  "Returns string type for a message object of type '<NavPOSLLH>"
  "ublox_msgs/NavPOSLLH")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPOSLLH)))
  "Returns string type for a message object of type 'NavPOSLLH"
  "ublox_msgs/NavPOSLLH")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPOSLLH>)))
  "Returns md5sum for a message object of type '<NavPOSLLH>"
  "01aab2c75cd9f8c402a0689e82f04f01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPOSLLH)))
  "Returns md5sum for a message object of type 'NavPOSLLH"
  "01aab2c75cd9f8c402a0689e82f04f01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPOSLLH>)))
  "Returns full string definition for message of type '<NavPOSLLH>"
  (cl:format cl:nil "# NAV-POSLLH (0x01 0x02)~%# Geodetic Position Solution~%#~%# See important comments concerning validity of position given in section~%# Navigation Output Filters.~%# This message outputs the Geodetic position in the currently selected ~%# Ellipsoid. The default is the WGS84 Ellipsoid, but can be changed with the~%# message CFG-DAT.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 2~%~%uint32 iTOW             # GPS Millisecond Time of Week [ms]~%~%int32 lon               # Longitude [deg / 1e-7]~%int32 lat               # Latitude [deg / 1e-7]~%int32 height            # Height above Ellipsoid [mm]~%int32 hMSL              # Height above mean sea level [mm]~%uint32 hAcc             # Horizontal Accuracy Estimate [mm]~%uint32 vAcc             # Vertical Accuracy Estimate [mm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPOSLLH)))
  "Returns full string definition for message of type 'NavPOSLLH"
  (cl:format cl:nil "# NAV-POSLLH (0x01 0x02)~%# Geodetic Position Solution~%#~%# See important comments concerning validity of position given in section~%# Navigation Output Filters.~%# This message outputs the Geodetic position in the currently selected ~%# Ellipsoid. The default is the WGS84 Ellipsoid, but can be changed with the~%# message CFG-DAT.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 2~%~%uint32 iTOW             # GPS Millisecond Time of Week [ms]~%~%int32 lon               # Longitude [deg / 1e-7]~%int32 lat               # Latitude [deg / 1e-7]~%int32 height            # Height above Ellipsoid [mm]~%int32 hMSL              # Height above mean sea level [mm]~%uint32 hAcc             # Horizontal Accuracy Estimate [mm]~%uint32 vAcc             # Vertical Accuracy Estimate [mm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPOSLLH>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPOSLLH>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPOSLLH
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':height (height msg))
    (cl:cons ':hMSL (hMSL msg))
    (cl:cons ':hAcc (hAcc msg))
    (cl:cons ':vAcc (vAcc msg))
))
