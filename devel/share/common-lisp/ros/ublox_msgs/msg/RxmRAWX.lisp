; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmRAWX.msg.html

(cl:defclass <RxmRAWX> (roslisp-msg-protocol:ros-message)
  ((rcvTOW
    :reader rcvTOW
    :initarg :rcvTOW
    :type cl:float
    :initform 0.0)
   (week
    :reader week
    :initarg :week
    :type cl:fixnum
    :initform 0)
   (leapS
    :reader leapS
    :initarg :leapS
    :type cl:fixnum
    :initform 0)
   (numMeas
    :reader numMeas
    :initarg :numMeas
    :type cl:fixnum
    :initform 0)
   (recStat
    :reader recStat
    :initarg :recStat
    :type cl:fixnum
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (meas
    :reader meas
    :initarg :meas
    :type (cl:vector ublox_msgs-msg:RxmRAWX_Meas)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:RxmRAWX_Meas :initial-element (cl:make-instance 'ublox_msgs-msg:RxmRAWX_Meas))))
)

(cl:defclass RxmRAWX (<RxmRAWX>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmRAWX>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmRAWX)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmRAWX> is deprecated: use ublox_msgs-msg:RxmRAWX instead.")))

(cl:ensure-generic-function 'rcvTOW-val :lambda-list '(m))
(cl:defmethod rcvTOW-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:rcvTOW-val is deprecated.  Use ublox_msgs-msg:rcvTOW instead.")
  (rcvTOW m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:week-val is deprecated.  Use ublox_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'leapS-val :lambda-list '(m))
(cl:defmethod leapS-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:leapS-val is deprecated.  Use ublox_msgs-msg:leapS instead.")
  (leapS m))

(cl:ensure-generic-function 'numMeas-val :lambda-list '(m))
(cl:defmethod numMeas-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numMeas-val is deprecated.  Use ublox_msgs-msg:numMeas instead.")
  (numMeas m))

(cl:ensure-generic-function 'recStat-val :lambda-list '(m))
(cl:defmethod recStat-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:recStat-val is deprecated.  Use ublox_msgs-msg:recStat instead.")
  (recStat m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'meas-val :lambda-list '(m))
(cl:defmethod meas-val ((m <RxmRAWX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:meas-val is deprecated.  Use ublox_msgs-msg:meas instead.")
  (meas m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmRAWX>)))
    "Constants for message type '<RxmRAWX>"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 21)
    (:REC_STAT_LEAP_SEC . 1)
    (:REC_STAT_CLK_RESET . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmRAWX)))
    "Constants for message type 'RxmRAWX"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 21)
    (:REC_STAT_LEAP_SEC . 1)
    (:REC_STAT_CLK_RESET . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmRAWX>) ostream)
  "Serializes a message object of type '<RxmRAWX>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rcvTOW))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'leapS)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numMeas)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recStat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'meas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'meas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmRAWX>) istream)
  "Deserializes a message object of type '<RxmRAWX>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcvTOW) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leapS) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numMeas)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recStat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'meas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'meas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:RxmRAWX_Meas))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmRAWX>)))
  "Returns string type for a message object of type '<RxmRAWX>"
  "ublox_msgs/RxmRAWX")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmRAWX)))
  "Returns string type for a message object of type 'RxmRAWX"
  "ublox_msgs/RxmRAWX")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmRAWX>)))
  "Returns md5sum for a message object of type '<RxmRAWX>"
  "a2df4b27b6a2a1565e42f5669dbb11b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmRAWX)))
  "Returns md5sum for a message object of type 'RxmRAWX"
  "a2df4b27b6a2a1565e42f5669dbb11b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmRAWX>)))
  "Returns full string definition for message of type '<RxmRAWX>"
  (cl:format cl:nil "# RXM-RAWX (0x02 0x15)~%# Multi-GNSS Raw Measurement Data~%#~%# This message contains the information needed to be able to generate a RINEX 3~%# multi-GNSS observation file.~%# This message contains pseudorange, Doppler, carrier phase, phase lock and~%# signal quality information for GNSS satellites once signals have been~%# synchronized. This message supports all active GNSS.~%# ~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 21~%~%float64 rcvTOW          # Measurement time of week in receiver local time [s]~%                        # approximately aligned to the GPS time system. The~%                        # receiver local time of week number and leap second~%                        # information can be used to translate the time to other ~%                        # time systems. More information about the difference in~%                        # time systems can be found in RINEX 3 documentation. ~%                        # For a receiver operating in GLONASS only mode, UTC~%                        # time can be determined by subtracting the leapS field ~%                        # from GPS time regardless of whether the GPS leap~%                        # seconds are valid. ~%uint16 week             # GPS week number in receiver local time. [weeks]~%int8 leapS              # GPS leap seconds (GPS-UTC). [s]~%                        # This field represents the receiver's best knowledge of~%                        # the leap seconds offset. A flag is given in the~%                        # recStat bitfield to indicate if the leap seconds ~%                        # are known.~%uint8 numMeas           # # of measurements to follow~%uint8 recStat           # Receiver tracking status bitfield~%uint8 REC_STAT_LEAP_SEC = 1   # Leap seconds have been determined~%uint8 REC_STAT_CLK_RESET = 2  # Clock reset applied. Typically the receiver  ~%                              # clock is changed in increments of integer~%                              # milliseconds.~%uint8 version           # Message version (0x01 for this version).~%uint8[2] reserved1      # Reserved~%~%RxmRAWX_Meas[] meas~%~%================================================================================~%MSG: ublox_msgs/RxmRAWX_Meas~%# see message RxmRAWX~%#~%~%float64 prMes             # Pseudorange measurement [m]. GLONASS inter frequency~%                          # channel delays are compensated with an internal~%                          # calibration table.~%float64 cpMes             # Carrier phase measurement [L1 cycles]. The carrier~%                          # phase initial ambiguity is initialized using an~%                          # approximate value to make the magnitude of~%                          # the phase close to the pseudorange~%                          # measurement. Clock resets are applied to both~%                          # phase and code measurements in accordance~%                          # with the RINEX specification.~%float32 doMes             # Doppler measurement [Hz] (positive sign for~%                          # approaching satellites)~%uint8 gnssId              # GNSS identifier (see CfgGNSS for constants)~%~%uint8 svId                # Satellite identifier (see Satellite Numbering)~%~%uint8 reserved0           # Reserved~%~%uint8 freqId              # Only used for GLONASS: This is the frequency~%                          # slot + 7 (range from 0 to 13)~%uint16 locktime           # Carrier phase locktime counter [ms] ~%                          # (maximum 64500 ms)~%int8 cno                  # Carrier-to-noise density ratio (signal strength) ~%                          # [dB-Hz]~%uint8 prStdev             # Estimated pseudorange measurement standard~%                          # deviation [m / 0.01*2^n]~%uint8 cpStdev             # Estimated carrier phase measurement standard~%                          # deviation (note a raw value of 0x0F indicates the~%                          # value is invalid) [cycles / 0.004]~%uint8 doStdev             # Estimated Doppler measurement standard deviation ~%                          # [Hz / 0.002*2^n]~%~%uint8 trkStat             # Tracking status bitfield~%uint8 TRK_STAT_PR_VALID = 1       # Pseudorange valid~%uint8 TRK_STAT_CP_VALID = 2       # Carrier phase valid~%uint8 TRK_STAT_HALF_CYC = 4       # Half cycle valid~%uint8 TRK_STAT_SUB_HALF_CYC = 8   # Half cycle subtracted from phase~%~%uint8 reserved1           # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmRAWX)))
  "Returns full string definition for message of type 'RxmRAWX"
  (cl:format cl:nil "# RXM-RAWX (0x02 0x15)~%# Multi-GNSS Raw Measurement Data~%#~%# This message contains the information needed to be able to generate a RINEX 3~%# multi-GNSS observation file.~%# This message contains pseudorange, Doppler, carrier phase, phase lock and~%# signal quality information for GNSS satellites once signals have been~%# synchronized. This message supports all active GNSS.~%# ~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 21~%~%float64 rcvTOW          # Measurement time of week in receiver local time [s]~%                        # approximately aligned to the GPS time system. The~%                        # receiver local time of week number and leap second~%                        # information can be used to translate the time to other ~%                        # time systems. More information about the difference in~%                        # time systems can be found in RINEX 3 documentation. ~%                        # For a receiver operating in GLONASS only mode, UTC~%                        # time can be determined by subtracting the leapS field ~%                        # from GPS time regardless of whether the GPS leap~%                        # seconds are valid. ~%uint16 week             # GPS week number in receiver local time. [weeks]~%int8 leapS              # GPS leap seconds (GPS-UTC). [s]~%                        # This field represents the receiver's best knowledge of~%                        # the leap seconds offset. A flag is given in the~%                        # recStat bitfield to indicate if the leap seconds ~%                        # are known.~%uint8 numMeas           # # of measurements to follow~%uint8 recStat           # Receiver tracking status bitfield~%uint8 REC_STAT_LEAP_SEC = 1   # Leap seconds have been determined~%uint8 REC_STAT_CLK_RESET = 2  # Clock reset applied. Typically the receiver  ~%                              # clock is changed in increments of integer~%                              # milliseconds.~%uint8 version           # Message version (0x01 for this version).~%uint8[2] reserved1      # Reserved~%~%RxmRAWX_Meas[] meas~%~%================================================================================~%MSG: ublox_msgs/RxmRAWX_Meas~%# see message RxmRAWX~%#~%~%float64 prMes             # Pseudorange measurement [m]. GLONASS inter frequency~%                          # channel delays are compensated with an internal~%                          # calibration table.~%float64 cpMes             # Carrier phase measurement [L1 cycles]. The carrier~%                          # phase initial ambiguity is initialized using an~%                          # approximate value to make the magnitude of~%                          # the phase close to the pseudorange~%                          # measurement. Clock resets are applied to both~%                          # phase and code measurements in accordance~%                          # with the RINEX specification.~%float32 doMes             # Doppler measurement [Hz] (positive sign for~%                          # approaching satellites)~%uint8 gnssId              # GNSS identifier (see CfgGNSS for constants)~%~%uint8 svId                # Satellite identifier (see Satellite Numbering)~%~%uint8 reserved0           # Reserved~%~%uint8 freqId              # Only used for GLONASS: This is the frequency~%                          # slot + 7 (range from 0 to 13)~%uint16 locktime           # Carrier phase locktime counter [ms] ~%                          # (maximum 64500 ms)~%int8 cno                  # Carrier-to-noise density ratio (signal strength) ~%                          # [dB-Hz]~%uint8 prStdev             # Estimated pseudorange measurement standard~%                          # deviation [m / 0.01*2^n]~%uint8 cpStdev             # Estimated carrier phase measurement standard~%                          # deviation (note a raw value of 0x0F indicates the~%                          # value is invalid) [cycles / 0.004]~%uint8 doStdev             # Estimated Doppler measurement standard deviation ~%                          # [Hz / 0.002*2^n]~%~%uint8 trkStat             # Tracking status bitfield~%uint8 TRK_STAT_PR_VALID = 1       # Pseudorange valid~%uint8 TRK_STAT_CP_VALID = 2       # Carrier phase valid~%uint8 TRK_STAT_HALF_CYC = 4       # Half cycle valid~%uint8 TRK_STAT_SUB_HALF_CYC = 8   # Half cycle subtracted from phase~%~%uint8 reserved1           # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmRAWX>))
  (cl:+ 0
     8
     2
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'meas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmRAWX>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmRAWX
    (cl:cons ':rcvTOW (rcvTOW msg))
    (cl:cons ':week (week msg))
    (cl:cons ':leapS (leapS msg))
    (cl:cons ':numMeas (numMeas msg))
    (cl:cons ':recStat (recStat msg))
    (cl:cons ':version (version msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':meas (meas msg))
))
