; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmRAWX_Meas.msg.html

(cl:defclass <RxmRAWX_Meas> (roslisp-msg-protocol:ros-message)
  ((prMes
    :reader prMes
    :initarg :prMes
    :type cl:float
    :initform 0.0)
   (cpMes
    :reader cpMes
    :initarg :cpMes
    :type cl:float
    :initform 0.0)
   (doMes
    :reader doMes
    :initarg :doMes
    :type cl:float
    :initform 0.0)
   (gnssId
    :reader gnssId
    :initarg :gnssId
    :type cl:fixnum
    :initform 0)
   (svId
    :reader svId
    :initarg :svId
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type cl:fixnum
    :initform 0)
   (freqId
    :reader freqId
    :initarg :freqId
    :type cl:fixnum
    :initform 0)
   (locktime
    :reader locktime
    :initarg :locktime
    :type cl:fixnum
    :initform 0)
   (cno
    :reader cno
    :initarg :cno
    :type cl:fixnum
    :initform 0)
   (prStdev
    :reader prStdev
    :initarg :prStdev
    :type cl:fixnum
    :initform 0)
   (cpStdev
    :reader cpStdev
    :initarg :cpStdev
    :type cl:fixnum
    :initform 0)
   (doStdev
    :reader doStdev
    :initarg :doStdev
    :type cl:fixnum
    :initform 0)
   (trkStat
    :reader trkStat
    :initarg :trkStat
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxmRAWX_Meas (<RxmRAWX_Meas>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmRAWX_Meas>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmRAWX_Meas)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmRAWX_Meas> is deprecated: use ublox_msgs-msg:RxmRAWX_Meas instead.")))

(cl:ensure-generic-function 'prMes-val :lambda-list '(m))
(cl:defmethod prMes-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prMes-val is deprecated.  Use ublox_msgs-msg:prMes instead.")
  (prMes m))

(cl:ensure-generic-function 'cpMes-val :lambda-list '(m))
(cl:defmethod cpMes-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cpMes-val is deprecated.  Use ublox_msgs-msg:cpMes instead.")
  (cpMes m))

(cl:ensure-generic-function 'doMes-val :lambda-list '(m))
(cl:defmethod doMes-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:doMes-val is deprecated.  Use ublox_msgs-msg:doMes instead.")
  (doMes m))

(cl:ensure-generic-function 'gnssId-val :lambda-list '(m))
(cl:defmethod gnssId-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gnssId-val is deprecated.  Use ublox_msgs-msg:gnssId instead.")
  (gnssId m))

(cl:ensure-generic-function 'svId-val :lambda-list '(m))
(cl:defmethod svId-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svId-val is deprecated.  Use ublox_msgs-msg:svId instead.")
  (svId m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'freqId-val :lambda-list '(m))
(cl:defmethod freqId-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:freqId-val is deprecated.  Use ublox_msgs-msg:freqId instead.")
  (freqId m))

(cl:ensure-generic-function 'locktime-val :lambda-list '(m))
(cl:defmethod locktime-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:locktime-val is deprecated.  Use ublox_msgs-msg:locktime instead.")
  (locktime m))

(cl:ensure-generic-function 'cno-val :lambda-list '(m))
(cl:defmethod cno-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cno-val is deprecated.  Use ublox_msgs-msg:cno instead.")
  (cno m))

(cl:ensure-generic-function 'prStdev-val :lambda-list '(m))
(cl:defmethod prStdev-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prStdev-val is deprecated.  Use ublox_msgs-msg:prStdev instead.")
  (prStdev m))

(cl:ensure-generic-function 'cpStdev-val :lambda-list '(m))
(cl:defmethod cpStdev-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cpStdev-val is deprecated.  Use ublox_msgs-msg:cpStdev instead.")
  (cpStdev m))

(cl:ensure-generic-function 'doStdev-val :lambda-list '(m))
(cl:defmethod doStdev-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:doStdev-val is deprecated.  Use ublox_msgs-msg:doStdev instead.")
  (doStdev m))

(cl:ensure-generic-function 'trkStat-val :lambda-list '(m))
(cl:defmethod trkStat-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:trkStat-val is deprecated.  Use ublox_msgs-msg:trkStat instead.")
  (trkStat m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RxmRAWX_Meas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmRAWX_Meas>)))
    "Constants for message type '<RxmRAWX_Meas>"
  '((:TRK_STAT_PR_VALID . 1)
    (:TRK_STAT_CP_VALID . 2)
    (:TRK_STAT_HALF_CYC . 4)
    (:TRK_STAT_SUB_HALF_CYC . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmRAWX_Meas)))
    "Constants for message type 'RxmRAWX_Meas"
  '((:TRK_STAT_PR_VALID . 1)
    (:TRK_STAT_CP_VALID . 2)
    (:TRK_STAT_HALF_CYC . 4)
    (:TRK_STAT_SUB_HALF_CYC . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmRAWX_Meas>) ostream)
  "Serializes a message object of type '<RxmRAWX_Meas>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prMes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cpMes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doMes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'locktime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'locktime)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prStdev)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cpStdev)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'doStdev)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trkStat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmRAWX_Meas>) istream)
  "Deserializes a message object of type '<RxmRAWX_Meas>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prMes) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpMes) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doMes) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'locktime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'locktime)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cno) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prStdev)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cpStdev)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'doStdev)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trkStat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmRAWX_Meas>)))
  "Returns string type for a message object of type '<RxmRAWX_Meas>"
  "ublox_msgs/RxmRAWX_Meas")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmRAWX_Meas)))
  "Returns string type for a message object of type 'RxmRAWX_Meas"
  "ublox_msgs/RxmRAWX_Meas")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmRAWX_Meas>)))
  "Returns md5sum for a message object of type '<RxmRAWX_Meas>"
  "d6a580262875bf83a377ba14dcdd659f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmRAWX_Meas)))
  "Returns md5sum for a message object of type 'RxmRAWX_Meas"
  "d6a580262875bf83a377ba14dcdd659f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmRAWX_Meas>)))
  "Returns full string definition for message of type '<RxmRAWX_Meas>"
  (cl:format cl:nil "# see message RxmRAWX~%#~%~%float64 prMes             # Pseudorange measurement [m]. GLONASS inter frequency~%                          # channel delays are compensated with an internal~%                          # calibration table.~%float64 cpMes             # Carrier phase measurement [L1 cycles]. The carrier~%                          # phase initial ambiguity is initialized using an~%                          # approximate value to make the magnitude of~%                          # the phase close to the pseudorange~%                          # measurement. Clock resets are applied to both~%                          # phase and code measurements in accordance~%                          # with the RINEX specification.~%float32 doMes             # Doppler measurement [Hz] (positive sign for~%                          # approaching satellites)~%uint8 gnssId              # GNSS identifier (see CfgGNSS for constants)~%~%uint8 svId                # Satellite identifier (see Satellite Numbering)~%~%uint8 reserved0           # Reserved~%~%uint8 freqId              # Only used for GLONASS: This is the frequency~%                          # slot + 7 (range from 0 to 13)~%uint16 locktime           # Carrier phase locktime counter [ms] ~%                          # (maximum 64500 ms)~%int8 cno                  # Carrier-to-noise density ratio (signal strength) ~%                          # [dB-Hz]~%uint8 prStdev             # Estimated pseudorange measurement standard~%                          # deviation [m / 0.01*2^n]~%uint8 cpStdev             # Estimated carrier phase measurement standard~%                          # deviation (note a raw value of 0x0F indicates the~%                          # value is invalid) [cycles / 0.004]~%uint8 doStdev             # Estimated Doppler measurement standard deviation ~%                          # [Hz / 0.002*2^n]~%~%uint8 trkStat             # Tracking status bitfield~%uint8 TRK_STAT_PR_VALID = 1       # Pseudorange valid~%uint8 TRK_STAT_CP_VALID = 2       # Carrier phase valid~%uint8 TRK_STAT_HALF_CYC = 4       # Half cycle valid~%uint8 TRK_STAT_SUB_HALF_CYC = 8   # Half cycle subtracted from phase~%~%uint8 reserved1           # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmRAWX_Meas)))
  "Returns full string definition for message of type 'RxmRAWX_Meas"
  (cl:format cl:nil "# see message RxmRAWX~%#~%~%float64 prMes             # Pseudorange measurement [m]. GLONASS inter frequency~%                          # channel delays are compensated with an internal~%                          # calibration table.~%float64 cpMes             # Carrier phase measurement [L1 cycles]. The carrier~%                          # phase initial ambiguity is initialized using an~%                          # approximate value to make the magnitude of~%                          # the phase close to the pseudorange~%                          # measurement. Clock resets are applied to both~%                          # phase and code measurements in accordance~%                          # with the RINEX specification.~%float32 doMes             # Doppler measurement [Hz] (positive sign for~%                          # approaching satellites)~%uint8 gnssId              # GNSS identifier (see CfgGNSS for constants)~%~%uint8 svId                # Satellite identifier (see Satellite Numbering)~%~%uint8 reserved0           # Reserved~%~%uint8 freqId              # Only used for GLONASS: This is the frequency~%                          # slot + 7 (range from 0 to 13)~%uint16 locktime           # Carrier phase locktime counter [ms] ~%                          # (maximum 64500 ms)~%int8 cno                  # Carrier-to-noise density ratio (signal strength) ~%                          # [dB-Hz]~%uint8 prStdev             # Estimated pseudorange measurement standard~%                          # deviation [m / 0.01*2^n]~%uint8 cpStdev             # Estimated carrier phase measurement standard~%                          # deviation (note a raw value of 0x0F indicates the~%                          # value is invalid) [cycles / 0.004]~%uint8 doStdev             # Estimated Doppler measurement standard deviation ~%                          # [Hz / 0.002*2^n]~%~%uint8 trkStat             # Tracking status bitfield~%uint8 TRK_STAT_PR_VALID = 1       # Pseudorange valid~%uint8 TRK_STAT_CP_VALID = 2       # Carrier phase valid~%uint8 TRK_STAT_HALF_CYC = 4       # Half cycle valid~%uint8 TRK_STAT_SUB_HALF_CYC = 8   # Half cycle subtracted from phase~%~%uint8 reserved1           # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmRAWX_Meas>))
  (cl:+ 0
     8
     8
     4
     1
     1
     1
     1
     2
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmRAWX_Meas>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmRAWX_Meas
    (cl:cons ':prMes (prMes msg))
    (cl:cons ':cpMes (cpMes msg))
    (cl:cons ':doMes (doMes msg))
    (cl:cons ':gnssId (gnssId msg))
    (cl:cons ':svId (svId msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':freqId (freqId msg))
    (cl:cons ':locktime (locktime msg))
    (cl:cons ':cno (cno msg))
    (cl:cons ':prStdev (prStdev msg))
    (cl:cons ':cpStdev (cpStdev msg))
    (cl:cons ':doStdev (doStdev msg))
    (cl:cons ':trkStat (trkStat msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
