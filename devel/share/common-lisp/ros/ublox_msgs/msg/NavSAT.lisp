; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSAT.msg.html

(cl:defclass <NavSAT> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (numSvs
    :reader numSvs
    :initarg :numSvs
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (sv
    :reader sv
    :initarg :sv
    :type (cl:vector ublox_msgs-msg:NavSAT_SV)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:NavSAT_SV :initial-element (cl:make-instance 'ublox_msgs-msg:NavSAT_SV))))
)

(cl:defclass NavSAT (<NavSAT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSAT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSAT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSAT> is deprecated: use ublox_msgs-msg:NavSAT instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavSAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <NavSAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'numSvs-val :lambda-list '(m))
(cl:defmethod numSvs-val ((m <NavSAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numSvs-val is deprecated.  Use ublox_msgs-msg:numSvs instead.")
  (numSvs m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <NavSAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'sv-val :lambda-list '(m))
(cl:defmethod sv-val ((m <NavSAT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sv-val is deprecated.  Use ublox_msgs-msg:sv instead.")
  (sv m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSAT>)))
    "Constants for message type '<NavSAT>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 53))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSAT)))
    "Constants for message type 'NavSAT"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 53))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSAT>) ostream)
  "Serializes a message object of type '<NavSAT>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSvs)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSAT>) istream)
  "Deserializes a message object of type '<NavSAT>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSvs)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:NavSAT_SV))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSAT>)))
  "Returns string type for a message object of type '<NavSAT>"
  "ublox_msgs/NavSAT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSAT)))
  "Returns string type for a message object of type 'NavSAT"
  "ublox_msgs/NavSAT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSAT>)))
  "Returns md5sum for a message object of type '<NavSAT>"
  "e8ea6afd23cb79e7e7385313416d9c15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSAT)))
  "Returns md5sum for a message object of type 'NavSAT"
  "e8ea6afd23cb79e7e7385313416d9c15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSAT>)))
  "Returns full string definition for message of type '<NavSAT>"
  (cl:format cl:nil "# NAV-SAT (0x01 0x35)~%# Satellite Information~%#~%# This message displays information about SVs which are either known to be ~%# visible or currently tracked by the receiver.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 53~%~%uint32 iTOW                # GPS time of week of the navigation epoch. [ms]~%uint8 version              # Message version (1 for this version)~%uint8 numSvs               # Number of satellites~%uint8[2] reserved0         # Reserved ~%~%# start of repeated block (numSvs times)~%NavSAT_SV[]  sv~%# end of repeated block~%================================================================================~%MSG: ublox_msgs/NavSAT_SV~%# see NAV-SAT message~%#~%~%uint8 gnssId      # GNSS identifier~%uint8 svId        # Satellite identifier~%~%uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz~%int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]~%int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range ~%                  # [deg]~%int16 prRes       # Pseudo range residual [0.1 m]~%~%uint32 flags      # Bitmask~%uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:~%uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal~%uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal~%uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired~%uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but ~%                                                    # unusable~%uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time ~%                                                    # synchronized~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 1~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 2~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 3~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES ~%# signal can never reach a quality indicator value of higher than 3.~%uint32 FLAGS_SV_USED = 8                      # whether SV is currently being ~%                                              # used for navigation~%uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:~%uint32 HEALTH_UNKNOWN = 0                       # unknown~%uint32 HEALTH_HEALTHY = 1                       # healthy~%uint32 HEALTH_UNHEALTHY = 2                     # unhealthy~%uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction ~%                                              # data is available for this SV~%uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed ~%                                              # pseudorange used~%uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:~%uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is ~%                                              # available for this SV~%uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used~%uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used~%uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is ~%                                                # used~%uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available ~%                                              # for this SV~%uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for ~%                                              # this SV~%uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data ~%                                              # is available for this SV~%uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous ~%                                              # data is available for this SV~%uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have ~%                                              # been used for this SV~%uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have ~%                                              # been used for this SV~%uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections ~%                                              # have been used for this SV~%uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range ~%                                              # corrections have been used for ~%                                              # this SV~%uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) ~%                                              # corrections have been used for ~%                                              # this SV~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSAT)))
  "Returns full string definition for message of type 'NavSAT"
  (cl:format cl:nil "# NAV-SAT (0x01 0x35)~%# Satellite Information~%#~%# This message displays information about SVs which are either known to be ~%# visible or currently tracked by the receiver.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 53~%~%uint32 iTOW                # GPS time of week of the navigation epoch. [ms]~%uint8 version              # Message version (1 for this version)~%uint8 numSvs               # Number of satellites~%uint8[2] reserved0         # Reserved ~%~%# start of repeated block (numSvs times)~%NavSAT_SV[]  sv~%# end of repeated block~%================================================================================~%MSG: ublox_msgs/NavSAT_SV~%# see NAV-SAT message~%#~%~%uint8 gnssId      # GNSS identifier~%uint8 svId        # Satellite identifier~%~%uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz~%int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]~%int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range ~%                  # [deg]~%int16 prRes       # Pseudo range residual [0.1 m]~%~%uint32 flags      # Bitmask~%uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:~%uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal~%uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal~%uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired~%uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but ~%                                                    # unusable~%uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time ~%                                                    # synchronized~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 1~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 2~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 3~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES ~%# signal can never reach a quality indicator value of higher than 3.~%uint32 FLAGS_SV_USED = 8                      # whether SV is currently being ~%                                              # used for navigation~%uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:~%uint32 HEALTH_UNKNOWN = 0                       # unknown~%uint32 HEALTH_HEALTHY = 1                       # healthy~%uint32 HEALTH_UNHEALTHY = 2                     # unhealthy~%uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction ~%                                              # data is available for this SV~%uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed ~%                                              # pseudorange used~%uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:~%uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is ~%                                              # available for this SV~%uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used~%uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used~%uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is ~%                                                # used~%uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available ~%                                              # for this SV~%uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for ~%                                              # this SV~%uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data ~%                                              # is available for this SV~%uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous ~%                                              # data is available for this SV~%uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have ~%                                              # been used for this SV~%uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have ~%                                              # been used for this SV~%uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections ~%                                              # have been used for this SV~%uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range ~%                                              # corrections have been used for ~%                                              # this SV~%uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) ~%                                              # corrections have been used for ~%                                              # this SV~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSAT>))
  (cl:+ 0
     4
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSAT>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSAT
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':version (version msg))
    (cl:cons ':numSvs (numSvs msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':sv (sv msg))
))
