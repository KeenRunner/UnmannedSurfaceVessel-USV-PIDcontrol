; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSAT_SV.msg.html

(cl:defclass <NavSAT_SV> (roslisp-msg-protocol:ros-message)
  ((gnssId
    :reader gnssId
    :initarg :gnssId
    :type cl:fixnum
    :initform 0)
   (svId
    :reader svId
    :initarg :svId
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
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:integer
    :initform 0))
)

(cl:defclass NavSAT_SV (<NavSAT_SV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSAT_SV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSAT_SV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSAT_SV> is deprecated: use ublox_msgs-msg:NavSAT_SV instead.")))

(cl:ensure-generic-function 'gnssId-val :lambda-list '(m))
(cl:defmethod gnssId-val ((m <NavSAT_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gnssId-val is deprecated.  Use ublox_msgs-msg:gnssId instead.")
  (gnssId m))

(cl:ensure-generic-function 'svId-val :lambda-list '(m))
(cl:defmethod svId-val ((m <NavSAT_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svId-val is deprecated.  Use ublox_msgs-msg:svId instead.")
  (svId m))

(cl:ensure-generic-function 'cno-val :lambda-list '(m))
(cl:defmethod cno-val ((m <NavSAT_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cno-val is deprecated.  Use ublox_msgs-msg:cno instead.")
  (cno m))

(cl:ensure-generic-function 'elev-val :lambda-list '(m))
(cl:defmethod elev-val ((m <NavSAT_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:elev-val is deprecated.  Use ublox_msgs-msg:elev instead.")
  (elev m))

(cl:ensure-generic-function 'azim-val :lambda-list '(m))
(cl:defmethod azim-val ((m <NavSAT_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:azim-val is deprecated.  Use ublox_msgs-msg:azim instead.")
  (azim m))

(cl:ensure-generic-function 'prRes-val :lambda-list '(m))
(cl:defmethod prRes-val ((m <NavSAT_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prRes-val is deprecated.  Use ublox_msgs-msg:prRes instead.")
  (prRes m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <NavSAT_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSAT_SV>)))
    "Constants for message type '<NavSAT_SV>"
  '((:FLAGS_QUALITY_IND_MASK . 7)
    (:QUALITY_IND_NO_SIGNAL . 0)
    (:QUALITY_IND_SEARCHING_SIGNAL . 1)
    (:QUALITY_IND_SIGNAL_ACQUIRED . 2)
    (:QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE . 3)
    (:QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC . 4)
    (:QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 . 5)
    (:QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 . 6)
    (:QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 . 7)
    (:FLAGS_SV_USED . 8)
    (:FLAGS_HEALTH_MASK . 48)
    (:HEALTH_UNKNOWN . 0)
    (:HEALTH_HEALTHY . 1)
    (:HEALTH_UNHEALTHY . 2)
    (:FLAGS_DIFF_CORR . 64)
    (:FLAGS_SMOOTHED . 128)
    (:FLAGS_ORBIT_SOURCE_MASK . 1792)
    (:ORBIT_SOURCE_UNAVAILABLE . 0)
    (:ORBIT_SOURCE_EPH . 256)
    (:ORBIT_SOURCE_ALM . 512)
    (:ORBIT_SOURCE_ASSIST_OFFLINE . 768)
    (:ORBIT_SOURCE_ASSIST_AUTONOMOUS . 1024)
    (:ORBIT_SOURCE_OTHER1 . 1280)
    (:ORBIT_SOURCE_OTHER2 . 1536)
    (:ORBIT_SOURCE_OTHER3 . 1792)
    (:FLAGS_EPH_AVAIL . 2048)
    (:FLAGS_ALM_AVAIL . 4096)
    (:FLAGS_ANO_AVAIL . 8192)
    (:FLAGS_AOP_AVAIL . 16384)
    (:FLAGS_SBAS_CORR_USED . 65536)
    (:FLAGS_RTCM_CORR_USED . 131072)
    (:FLAGS_PR_CORR_USED . 1048576)
    (:FLAGS_CR_CORR_USED . 2097152)
    (:FLAGS_DO_CORR_USED . 4194304))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSAT_SV)))
    "Constants for message type 'NavSAT_SV"
  '((:FLAGS_QUALITY_IND_MASK . 7)
    (:QUALITY_IND_NO_SIGNAL . 0)
    (:QUALITY_IND_SEARCHING_SIGNAL . 1)
    (:QUALITY_IND_SIGNAL_ACQUIRED . 2)
    (:QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE . 3)
    (:QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC . 4)
    (:QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 . 5)
    (:QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 . 6)
    (:QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 . 7)
    (:FLAGS_SV_USED . 8)
    (:FLAGS_HEALTH_MASK . 48)
    (:HEALTH_UNKNOWN . 0)
    (:HEALTH_HEALTHY . 1)
    (:HEALTH_UNHEALTHY . 2)
    (:FLAGS_DIFF_CORR . 64)
    (:FLAGS_SMOOTHED . 128)
    (:FLAGS_ORBIT_SOURCE_MASK . 1792)
    (:ORBIT_SOURCE_UNAVAILABLE . 0)
    (:ORBIT_SOURCE_EPH . 256)
    (:ORBIT_SOURCE_ALM . 512)
    (:ORBIT_SOURCE_ASSIST_OFFLINE . 768)
    (:ORBIT_SOURCE_ASSIST_AUTONOMOUS . 1024)
    (:ORBIT_SOURCE_OTHER1 . 1280)
    (:ORBIT_SOURCE_OTHER2 . 1536)
    (:ORBIT_SOURCE_OTHER3 . 1792)
    (:FLAGS_EPH_AVAIL . 2048)
    (:FLAGS_ALM_AVAIL . 4096)
    (:FLAGS_ANO_AVAIL . 8192)
    (:FLAGS_AOP_AVAIL . 16384)
    (:FLAGS_SBAS_CORR_USED . 65536)
    (:FLAGS_RTCM_CORR_USED . 131072)
    (:FLAGS_PR_CORR_USED . 1048576)
    (:FLAGS_CR_CORR_USED . 2097152)
    (:FLAGS_DO_CORR_USED . 4194304))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSAT_SV>) ostream)
  "Serializes a message object of type '<NavSAT_SV>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cno)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'elev)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'azim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'prRes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSAT_SV>) istream)
  "Deserializes a message object of type '<NavSAT_SV>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) (cl:read-byte istream))
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
      (cl:setf (cl:slot-value msg 'prRes) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSAT_SV>)))
  "Returns string type for a message object of type '<NavSAT_SV>"
  "ublox_msgs/NavSAT_SV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSAT_SV)))
  "Returns string type for a message object of type 'NavSAT_SV"
  "ublox_msgs/NavSAT_SV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSAT_SV>)))
  "Returns md5sum for a message object of type '<NavSAT_SV>"
  "902ea92ca9ebf53188dcf1cdef64a9a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSAT_SV)))
  "Returns md5sum for a message object of type 'NavSAT_SV"
  "902ea92ca9ebf53188dcf1cdef64a9a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSAT_SV>)))
  "Returns full string definition for message of type '<NavSAT_SV>"
  (cl:format cl:nil "# see NAV-SAT message~%#~%~%uint8 gnssId      # GNSS identifier~%uint8 svId        # Satellite identifier~%~%uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz~%int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]~%int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range ~%                  # [deg]~%int16 prRes       # Pseudo range residual [0.1 m]~%~%uint32 flags      # Bitmask~%uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:~%uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal~%uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal~%uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired~%uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but ~%                                                    # unusable~%uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time ~%                                                    # synchronized~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 1~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 2~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 3~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES ~%# signal can never reach a quality indicator value of higher than 3.~%uint32 FLAGS_SV_USED = 8                      # whether SV is currently being ~%                                              # used for navigation~%uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:~%uint32 HEALTH_UNKNOWN = 0                       # unknown~%uint32 HEALTH_HEALTHY = 1                       # healthy~%uint32 HEALTH_UNHEALTHY = 2                     # unhealthy~%uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction ~%                                              # data is available for this SV~%uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed ~%                                              # pseudorange used~%uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:~%uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is ~%                                              # available for this SV~%uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used~%uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used~%uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is ~%                                                # used~%uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available ~%                                              # for this SV~%uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for ~%                                              # this SV~%uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data ~%                                              # is available for this SV~%uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous ~%                                              # data is available for this SV~%uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have ~%                                              # been used for this SV~%uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have ~%                                              # been used for this SV~%uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections ~%                                              # have been used for this SV~%uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range ~%                                              # corrections have been used for ~%                                              # this SV~%uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) ~%                                              # corrections have been used for ~%                                              # this SV~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSAT_SV)))
  "Returns full string definition for message of type 'NavSAT_SV"
  (cl:format cl:nil "# see NAV-SAT message~%#~%~%uint8 gnssId      # GNSS identifier~%uint8 svId        # Satellite identifier~%~%uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz~%int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]~%int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range ~%                  # [deg]~%int16 prRes       # Pseudo range residual [0.1 m]~%~%uint32 flags      # Bitmask~%uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:~%uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal~%uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal~%uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired~%uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but ~%                                                    # unusable~%uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time ~%                                                    # synchronized~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 1~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 2~%uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier ~%                                                        # locked and time ~%                                                        # synchronized, ~%                                                        # quality = 3~%# Note: Since IMES signals are not time synchronized, a channel tracking an IMES ~%# signal can never reach a quality indicator value of higher than 3.~%uint32 FLAGS_SV_USED = 8                      # whether SV is currently being ~%                                              # used for navigation~%uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:~%uint32 HEALTH_UNKNOWN = 0                       # unknown~%uint32 HEALTH_HEALTHY = 1                       # healthy~%uint32 HEALTH_UNHEALTHY = 2                     # unhealthy~%uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction ~%                                              # data is available for this SV~%uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed ~%                                              # pseudorange used~%uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:~%uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is ~%                                              # available for this SV~%uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used~%uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used~%uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is ~%                                                # used~%uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is ~%                                                # used~%uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available ~%                                              # for this SV~%uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for ~%                                              # this SV~%uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data ~%                                              # is available for this SV~%uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous ~%                                              # data is available for this SV~%uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have ~%                                              # been used for this SV~%uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have ~%                                              # been used for this SV~%uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections ~%                                              # have been used for this SV~%uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range ~%                                              # corrections have been used for ~%                                              # this SV~%uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) ~%                                              # corrections have been used for ~%                                              # this SV~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSAT_SV>))
  (cl:+ 0
     1
     1
     1
     1
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSAT_SV>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSAT_SV
    (cl:cons ':gnssId (gnssId msg))
    (cl:cons ':svId (svId msg))
    (cl:cons ':cno (cno msg))
    (cl:cons ':elev (elev msg))
    (cl:cons ':azim (azim msg))
    (cl:cons ':prRes (prRes msg))
    (cl:cons ':flags (flags msg))
))
