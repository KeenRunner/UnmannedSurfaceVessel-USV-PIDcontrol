; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSVINFO_SV.msg.html

(cl:defclass <NavSVINFO_SV> (roslisp-msg-protocol:ros-message)
  ((chn
    :reader chn
    :initarg :chn
    :type cl:fixnum
    :initform 0)
   (svid
    :reader svid
    :initarg :svid
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0)
   (cno
    :reader cno
    :initarg :cno
    :type cl:fixnum
    :initform 0)
   (elev
    :reader elev
    :initarg :elev
    :type cl:fixnum
    :initform 0)
   (azim
    :reader azim
    :initarg :azim
    :type cl:fixnum
    :initform 0)
   (prRes
    :reader prRes
    :initarg :prRes
    :type cl:integer
    :initform 0))
)

(cl:defclass NavSVINFO_SV (<NavSVINFO_SV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSVINFO_SV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSVINFO_SV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSVINFO_SV> is deprecated: use ublox_msgs-msg:NavSVINFO_SV instead.")))

(cl:ensure-generic-function 'chn-val :lambda-list '(m))
(cl:defmethod chn-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:chn-val is deprecated.  Use ublox_msgs-msg:chn instead.")
  (chn m))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:quality-val is deprecated.  Use ublox_msgs-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'cno-val :lambda-list '(m))
(cl:defmethod cno-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cno-val is deprecated.  Use ublox_msgs-msg:cno instead.")
  (cno m))

(cl:ensure-generic-function 'elev-val :lambda-list '(m))
(cl:defmethod elev-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:elev-val is deprecated.  Use ublox_msgs-msg:elev instead.")
  (elev m))

(cl:ensure-generic-function 'azim-val :lambda-list '(m))
(cl:defmethod azim-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:azim-val is deprecated.  Use ublox_msgs-msg:azim instead.")
  (azim m))

(cl:ensure-generic-function 'prRes-val :lambda-list '(m))
(cl:defmethod prRes-val ((m <NavSVINFO_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prRes-val is deprecated.  Use ublox_msgs-msg:prRes instead.")
  (prRes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSVINFO_SV>)))
    "Constants for message type '<NavSVINFO_SV>"
  '((:FLAGS_SV_USED . 1)
    (:FLAGS_DIFF_CORR . 2)
    (:FLAGS_ORBIT_AVAIL . 4)
    (:FLAGS_ORBIT_EPH . 8)
    (:FLAGS_UNHEALTHY . 16)
    (:FLAGS_ORBIT_ALM . 32)
    (:FLAGS_ORBIT_AOP . 64)
    (:FLAGS_SMOOTHED . 128)
    (:QUALITY_IDLE . 0)
    (:QUALITY_SEARCHING . 1)
    (:QUALITY_ACQUIRED . 2)
    (:QUALITY_DETECTED . 3)
    (:QUALITY_CODE_LOCK . 4)
    (:QUALITY_CODE_AND_CARRIER_LOCKED1 . 5)
    (:QUALITY_CODE_AND_CARRIER_LOCKED2 . 6)
    (:QUALITY_CODE_AND_CARRIER_LOCKED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSVINFO_SV)))
    "Constants for message type 'NavSVINFO_SV"
  '((:FLAGS_SV_USED . 1)
    (:FLAGS_DIFF_CORR . 2)
    (:FLAGS_ORBIT_AVAIL . 4)
    (:FLAGS_ORBIT_EPH . 8)
    (:FLAGS_UNHEALTHY . 16)
    (:FLAGS_ORBIT_ALM . 32)
    (:FLAGS_ORBIT_AOP . 64)
    (:FLAGS_SMOOTHED . 128)
    (:QUALITY_IDLE . 0)
    (:QUALITY_SEARCHING . 1)
    (:QUALITY_ACQUIRED . 2)
    (:QUALITY_DETECTED . 3)
    (:QUALITY_CODE_LOCK . 4)
    (:QUALITY_CODE_AND_CARRIER_LOCKED1 . 5)
    (:QUALITY_CODE_AND_CARRIER_LOCKED2 . 6)
    (:QUALITY_CODE_AND_CARRIER_LOCKED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSVINFO_SV>) ostream)
  "Serializes a message object of type '<NavSVINFO_SV>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cno)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'elev)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'azim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'prRes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSVINFO_SV>) istream)
  "Deserializes a message object of type '<NavSVINFO_SV>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cno)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elev) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'azim) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prRes) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSVINFO_SV>)))
  "Returns string type for a message object of type '<NavSVINFO_SV>"
  "ublox_msgs/NavSVINFO_SV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSVINFO_SV)))
  "Returns string type for a message object of type 'NavSVINFO_SV"
  "ublox_msgs/NavSVINFO_SV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSVINFO_SV>)))
  "Returns md5sum for a message object of type '<NavSVINFO_SV>"
  "fd3d8150f431e87f504da9aafff163a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSVINFO_SV)))
  "Returns md5sum for a message object of type 'NavSVINFO_SV"
  "fd3d8150f431e87f504da9aafff163a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSVINFO_SV>)))
  "Returns full string definition for message of type '<NavSVINFO_SV>"
  (cl:format cl:nil "# see message NavSVINFO~%#~%~%uint8 chn             # Channel number, 255 for SVs not assigned to a channel~%uint8 svid            # Satellite ID~%~%uint8 flags           # Bitmask~%uint8 FLAGS_SV_USED = 1                     # SV is used for navigation~%uint8 FLAGS_DIFF_CORR = 2                   # Differential correction data ~%                                            # is available for this SV~%uint8 FLAGS_ORBIT_AVAIL = 4                 # Orbit information is available for ~%                                            # this SV (Ephemeris or Almanach)~%uint8 FLAGS_ORBIT_EPH = 8                   # Orbit information is Ephemeris~%uint8 FLAGS_UNHEALTHY = 16                  # SV is unhealthy / shall not be ~%                                            # used~%uint8 FLAGS_ORBIT_ALM = 32                  # Orbit information is Almanac Plus~%uint8 FLAGS_ORBIT_AOP = 64                  # Orbit information is AssistNow ~%                                            # Autonomous~%uint8 FLAGS_SMOOTHED = 128                  # Carrier smoothed pseudorange used~%~%uint8 quality         # Bitfield~%# qualityInd: Signal Quality indicator (range 0..7). The following list shows ~%# the meaning of the different QI values:~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES~%# signal can never reach a quality indicator value of higher than 3.~%uint8 QUALITY_IDLE = 0                      # This channel is idle~%uint8 QUALITY_SEARCHING = 1                 # Channel is searching~%uint8 QUALITY_ACQUIRED = 2                   # Signal acquired~%uint8 QUALITY_DETECTED = 3                  # Signal detected but unusable~%uint8 QUALITY_CODE_LOCK = 4                 # Code Lock on Signal~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED1 = 5  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED2 = 6  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED3 = 7  # Code and Carrier locked ~%                                            # and time synchronized~%~%uint8 cno             # Carrier to Noise Ratio (Signal Strength) [dBHz]~%int8 elev             # Elevation in integer degrees [deg]~%int16 azim            # Azimuth in integer degrees [deg]~%int32 prRes           # Pseudo range residual in centimetres [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSVINFO_SV)))
  "Returns full string definition for message of type 'NavSVINFO_SV"
  (cl:format cl:nil "# see message NavSVINFO~%#~%~%uint8 chn             # Channel number, 255 for SVs not assigned to a channel~%uint8 svid            # Satellite ID~%~%uint8 flags           # Bitmask~%uint8 FLAGS_SV_USED = 1                     # SV is used for navigation~%uint8 FLAGS_DIFF_CORR = 2                   # Differential correction data ~%                                            # is available for this SV~%uint8 FLAGS_ORBIT_AVAIL = 4                 # Orbit information is available for ~%                                            # this SV (Ephemeris or Almanach)~%uint8 FLAGS_ORBIT_EPH = 8                   # Orbit information is Ephemeris~%uint8 FLAGS_UNHEALTHY = 16                  # SV is unhealthy / shall not be ~%                                            # used~%uint8 FLAGS_ORBIT_ALM = 32                  # Orbit information is Almanac Plus~%uint8 FLAGS_ORBIT_AOP = 64                  # Orbit information is AssistNow ~%                                            # Autonomous~%uint8 FLAGS_SMOOTHED = 128                  # Carrier smoothed pseudorange used~%~%uint8 quality         # Bitfield~%# qualityInd: Signal Quality indicator (range 0..7). The following list shows ~%# the meaning of the different QI values:~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES~%# signal can never reach a quality indicator value of higher than 3.~%uint8 QUALITY_IDLE = 0                      # This channel is idle~%uint8 QUALITY_SEARCHING = 1                 # Channel is searching~%uint8 QUALITY_ACQUIRED = 2                   # Signal acquired~%uint8 QUALITY_DETECTED = 3                  # Signal detected but unusable~%uint8 QUALITY_CODE_LOCK = 4                 # Code Lock on Signal~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED1 = 5  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED2 = 6  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED3 = 7  # Code and Carrier locked ~%                                            # and time synchronized~%~%uint8 cno             # Carrier to Noise Ratio (Signal Strength) [dBHz]~%int8 elev             # Elevation in integer degrees [deg]~%int16 azim            # Azimuth in integer degrees [deg]~%int32 prRes           # Pseudo range residual in centimetres [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSVINFO_SV>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSVINFO_SV>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSVINFO_SV
    (cl:cons ':chn (chn msg))
    (cl:cons ':svid (svid msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':cno (cno msg))
    (cl:cons ':elev (elev msg))
    (cl:cons ':azim (azim msg))
    (cl:cons ':prRes (prRes msg))
))
