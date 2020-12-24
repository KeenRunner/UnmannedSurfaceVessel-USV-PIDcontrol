; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSVINFO.msg.html

(cl:defclass <NavSVINFO> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (numCh
    :reader numCh
    :initarg :numCh
    :type cl:fixnum
    :initform 0)
   (globalFlags
    :reader globalFlags
    :initarg :globalFlags
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:fixnum
    :initform 0)
   (sv
    :reader sv
    :initarg :sv
    :type (cl:vector ublox_msgs-msg:NavSVINFO_SV)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:NavSVINFO_SV :initial-element (cl:make-instance 'ublox_msgs-msg:NavSVINFO_SV))))
)

(cl:defclass NavSVINFO (<NavSVINFO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSVINFO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSVINFO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSVINFO> is deprecated: use ublox_msgs-msg:NavSVINFO instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavSVINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'numCh-val :lambda-list '(m))
(cl:defmethod numCh-val ((m <NavSVINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numCh-val is deprecated.  Use ublox_msgs-msg:numCh instead.")
  (numCh m))

(cl:ensure-generic-function 'globalFlags-val :lambda-list '(m))
(cl:defmethod globalFlags-val ((m <NavSVINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:globalFlags-val is deprecated.  Use ublox_msgs-msg:globalFlags instead.")
  (globalFlags m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <NavSVINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'sv-val :lambda-list '(m))
(cl:defmethod sv-val ((m <NavSVINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sv-val is deprecated.  Use ublox_msgs-msg:sv instead.")
  (sv m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSVINFO>)))
    "Constants for message type '<NavSVINFO>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 48)
    (:CHIPGEN_ANTARIS . 0)
    (:CHIPGEN_UBLOX5 . 1)
    (:CHIPGEN_UBLOX6 . 2)
    (:CHIPGEN_UBLOX7 . 3)
    (:CHIPGEN_UBLOX8 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSVINFO)))
    "Constants for message type 'NavSVINFO"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 48)
    (:CHIPGEN_ANTARIS . 0)
    (:CHIPGEN_UBLOX5 . 1)
    (:CHIPGEN_UBLOX6 . 2)
    (:CHIPGEN_UBLOX7 . 3)
    (:CHIPGEN_UBLOX8 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSVINFO>) ostream)
  "Serializes a message object of type '<NavSVINFO>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numCh)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'globalFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSVINFO>) istream)
  "Deserializes a message object of type '<NavSVINFO>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numCh)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'globalFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:NavSVINFO_SV))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSVINFO>)))
  "Returns string type for a message object of type '<NavSVINFO>"
  "ublox_msgs/NavSVINFO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSVINFO)))
  "Returns string type for a message object of type 'NavSVINFO"
  "ublox_msgs/NavSVINFO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSVINFO>)))
  "Returns md5sum for a message object of type '<NavSVINFO>"
  "869d73cea8ef4943b3f757dcb81282ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSVINFO)))
  "Returns md5sum for a message object of type 'NavSVINFO"
  "869d73cea8ef4943b3f757dcb81282ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSVINFO>)))
  "Returns full string definition for message of type '<NavSVINFO>"
  (cl:format cl:nil "# NAV-SVINFO (0x01 0x30)~%# Space Vehicle Information~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 48~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%uint8 numCh             # Number of channels~%~%uint8 globalFlags       # Bitmask~%# Chip Hardware generation flags~%uint8 CHIPGEN_ANTARIS = 0   # Antaris, Antaris 4~%uint8 CHIPGEN_UBLOX5 = 1    # u-blox 5~%uint8 CHIPGEN_UBLOX6 = 2    # u-blox 6~%uint8 CHIPGEN_UBLOX7 = 3    # u-blox 7~%uint8 CHIPGEN_UBLOX8 = 4    # u-blox 8 / u-blox M8~%~%uint16 reserved2        # Reserved~%~%NavSVINFO_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/NavSVINFO_SV~%# see message NavSVINFO~%#~%~%uint8 chn             # Channel number, 255 for SVs not assigned to a channel~%uint8 svid            # Satellite ID~%~%uint8 flags           # Bitmask~%uint8 FLAGS_SV_USED = 1                     # SV is used for navigation~%uint8 FLAGS_DIFF_CORR = 2                   # Differential correction data ~%                                            # is available for this SV~%uint8 FLAGS_ORBIT_AVAIL = 4                 # Orbit information is available for ~%                                            # this SV (Ephemeris or Almanach)~%uint8 FLAGS_ORBIT_EPH = 8                   # Orbit information is Ephemeris~%uint8 FLAGS_UNHEALTHY = 16                  # SV is unhealthy / shall not be ~%                                            # used~%uint8 FLAGS_ORBIT_ALM = 32                  # Orbit information is Almanac Plus~%uint8 FLAGS_ORBIT_AOP = 64                  # Orbit information is AssistNow ~%                                            # Autonomous~%uint8 FLAGS_SMOOTHED = 128                  # Carrier smoothed pseudorange used~%~%uint8 quality         # Bitfield~%# qualityInd: Signal Quality indicator (range 0..7). The following list shows ~%# the meaning of the different QI values:~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES~%# signal can never reach a quality indicator value of higher than 3.~%uint8 QUALITY_IDLE = 0                      # This channel is idle~%uint8 QUALITY_SEARCHING = 1                 # Channel is searching~%uint8 QUALITY_ACQUIRED = 2                   # Signal acquired~%uint8 QUALITY_DETECTED = 3                  # Signal detected but unusable~%uint8 QUALITY_CODE_LOCK = 4                 # Code Lock on Signal~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED1 = 5  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED2 = 6  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED3 = 7  # Code and Carrier locked ~%                                            # and time synchronized~%~%uint8 cno             # Carrier to Noise Ratio (Signal Strength) [dBHz]~%int8 elev             # Elevation in integer degrees [deg]~%int16 azim            # Azimuth in integer degrees [deg]~%int32 prRes           # Pseudo range residual in centimetres [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSVINFO)))
  "Returns full string definition for message of type 'NavSVINFO"
  (cl:format cl:nil "# NAV-SVINFO (0x01 0x30)~%# Space Vehicle Information~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 48~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%~%uint8 numCh             # Number of channels~%~%uint8 globalFlags       # Bitmask~%# Chip Hardware generation flags~%uint8 CHIPGEN_ANTARIS = 0   # Antaris, Antaris 4~%uint8 CHIPGEN_UBLOX5 = 1    # u-blox 5~%uint8 CHIPGEN_UBLOX6 = 2    # u-blox 6~%uint8 CHIPGEN_UBLOX7 = 3    # u-blox 7~%uint8 CHIPGEN_UBLOX8 = 4    # u-blox 8 / u-blox M8~%~%uint16 reserved2        # Reserved~%~%NavSVINFO_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/NavSVINFO_SV~%# see message NavSVINFO~%#~%~%uint8 chn             # Channel number, 255 for SVs not assigned to a channel~%uint8 svid            # Satellite ID~%~%uint8 flags           # Bitmask~%uint8 FLAGS_SV_USED = 1                     # SV is used for navigation~%uint8 FLAGS_DIFF_CORR = 2                   # Differential correction data ~%                                            # is available for this SV~%uint8 FLAGS_ORBIT_AVAIL = 4                 # Orbit information is available for ~%                                            # this SV (Ephemeris or Almanach)~%uint8 FLAGS_ORBIT_EPH = 8                   # Orbit information is Ephemeris~%uint8 FLAGS_UNHEALTHY = 16                  # SV is unhealthy / shall not be ~%                                            # used~%uint8 FLAGS_ORBIT_ALM = 32                  # Orbit information is Almanac Plus~%uint8 FLAGS_ORBIT_AOP = 64                  # Orbit information is AssistNow ~%                                            # Autonomous~%uint8 FLAGS_SMOOTHED = 128                  # Carrier smoothed pseudorange used~%~%uint8 quality         # Bitfield~%# qualityInd: Signal Quality indicator (range 0..7). The following list shows ~%# the meaning of the different QI values:~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES~%# signal can never reach a quality indicator value of higher than 3.~%uint8 QUALITY_IDLE = 0                      # This channel is idle~%uint8 QUALITY_SEARCHING = 1                 # Channel is searching~%uint8 QUALITY_ACQUIRED = 2                   # Signal acquired~%uint8 QUALITY_DETECTED = 3                  # Signal detected but unusable~%uint8 QUALITY_CODE_LOCK = 4                 # Code Lock on Signal~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED1 = 5  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED2 = 6  # Code and Carrier locked ~%                                            # and time synchronized~%uint8 QUALITY_CODE_AND_CARRIER_LOCKED3 = 7  # Code and Carrier locked ~%                                            # and time synchronized~%~%uint8 cno             # Carrier to Noise Ratio (Signal Strength) [dBHz]~%int8 elev             # Elevation in integer degrees [deg]~%int16 azim            # Azimuth in integer degrees [deg]~%int32 prRes           # Pseudo range residual in centimetres [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSVINFO>))
  (cl:+ 0
     4
     1
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSVINFO>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSVINFO
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':numCh (numCh msg))
    (cl:cons ':globalFlags (globalFlags msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':sv (sv msg))
))
