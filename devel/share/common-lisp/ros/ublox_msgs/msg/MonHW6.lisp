; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude MonHW6.msg.html

(cl:defclass <MonHW6> (roslisp-msg-protocol:ros-message)
  ((pinSel
    :reader pinSel
    :initarg :pinSel
    :type cl:integer
    :initform 0)
   (pinBank
    :reader pinBank
    :initarg :pinBank
    :type cl:integer
    :initform 0)
   (pinDir
    :reader pinDir
    :initarg :pinDir
    :type cl:integer
    :initform 0)
   (pinVal
    :reader pinVal
    :initarg :pinVal
    :type cl:integer
    :initform 0)
   (noisePerMS
    :reader noisePerMS
    :initarg :noisePerMS
    :type cl:fixnum
    :initform 0)
   (agcCnt
    :reader agcCnt
    :initarg :agcCnt
    :type cl:fixnum
    :initform 0)
   (aStatus
    :reader aStatus
    :initarg :aStatus
    :type cl:fixnum
    :initform 0)
   (aPower
    :reader aPower
    :initarg :aPower
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type cl:fixnum
    :initform 0)
   (usedMask
    :reader usedMask
    :initarg :usedMask
    :type cl:integer
    :initform 0)
   (VP
    :reader VP
    :initarg :VP
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 25 :element-type 'cl:fixnum :initial-element 0))
   (jamInd
    :reader jamInd
    :initarg :jamInd
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (pinIrq
    :reader pinIrq
    :initarg :pinIrq
    :type cl:integer
    :initform 0)
   (pullH
    :reader pullH
    :initarg :pullH
    :type cl:integer
    :initform 0)
   (pullL
    :reader pullL
    :initarg :pullL
    :type cl:integer
    :initform 0))
)

(cl:defclass MonHW6 (<MonHW6>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonHW6>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonHW6)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<MonHW6> is deprecated: use ublox_msgs-msg:MonHW6 instead.")))

(cl:ensure-generic-function 'pinSel-val :lambda-list '(m))
(cl:defmethod pinSel-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pinSel-val is deprecated.  Use ublox_msgs-msg:pinSel instead.")
  (pinSel m))

(cl:ensure-generic-function 'pinBank-val :lambda-list '(m))
(cl:defmethod pinBank-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pinBank-val is deprecated.  Use ublox_msgs-msg:pinBank instead.")
  (pinBank m))

(cl:ensure-generic-function 'pinDir-val :lambda-list '(m))
(cl:defmethod pinDir-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pinDir-val is deprecated.  Use ublox_msgs-msg:pinDir instead.")
  (pinDir m))

(cl:ensure-generic-function 'pinVal-val :lambda-list '(m))
(cl:defmethod pinVal-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pinVal-val is deprecated.  Use ublox_msgs-msg:pinVal instead.")
  (pinVal m))

(cl:ensure-generic-function 'noisePerMS-val :lambda-list '(m))
(cl:defmethod noisePerMS-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:noisePerMS-val is deprecated.  Use ublox_msgs-msg:noisePerMS instead.")
  (noisePerMS m))

(cl:ensure-generic-function 'agcCnt-val :lambda-list '(m))
(cl:defmethod agcCnt-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:agcCnt-val is deprecated.  Use ublox_msgs-msg:agcCnt instead.")
  (agcCnt m))

(cl:ensure-generic-function 'aStatus-val :lambda-list '(m))
(cl:defmethod aStatus-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:aStatus-val is deprecated.  Use ublox_msgs-msg:aStatus instead.")
  (aStatus m))

(cl:ensure-generic-function 'aPower-val :lambda-list '(m))
(cl:defmethod aPower-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:aPower-val is deprecated.  Use ublox_msgs-msg:aPower instead.")
  (aPower m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'usedMask-val :lambda-list '(m))
(cl:defmethod usedMask-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:usedMask-val is deprecated.  Use ublox_msgs-msg:usedMask instead.")
  (usedMask m))

(cl:ensure-generic-function 'VP-val :lambda-list '(m))
(cl:defmethod VP-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:VP-val is deprecated.  Use ublox_msgs-msg:VP instead.")
  (VP m))

(cl:ensure-generic-function 'jamInd-val :lambda-list '(m))
(cl:defmethod jamInd-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:jamInd-val is deprecated.  Use ublox_msgs-msg:jamInd instead.")
  (jamInd m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'pinIrq-val :lambda-list '(m))
(cl:defmethod pinIrq-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pinIrq-val is deprecated.  Use ublox_msgs-msg:pinIrq instead.")
  (pinIrq m))

(cl:ensure-generic-function 'pullH-val :lambda-list '(m))
(cl:defmethod pullH-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pullH-val is deprecated.  Use ublox_msgs-msg:pullH instead.")
  (pullH m))

(cl:ensure-generic-function 'pullL-val :lambda-list '(m))
(cl:defmethod pullL-val ((m <MonHW6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pullL-val is deprecated.  Use ublox_msgs-msg:pullL instead.")
  (pullL m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MonHW6>)))
    "Constants for message type '<MonHW6>"
  '((:CLASS_ID . 10)
    (:MESSAGE_ID . 9)
    (:A_STATUS_INIT . 0)
    (:A_STATUS_UNKNOWN . 1)
    (:A_STATUS_OK . 2)
    (:A_STATUS_SHORT . 3)
    (:A_STATUS_OPEN . 4)
    (:A_POWER_OFF . 0)
    (:A_POWER_ON . 1)
    (:A_POWER_UNKNOWN . 2)
    (:FLAGS_RTC_CALIB . 1)
    (:FLAGS_SAFE_BOOT . 2)
    (:FLAGS_JAMMING_STATE_MASK . 12)
    (:JAMMING_STATE_UNKNOWN_OR_DISABLED . 0)
    (:JAMMING_STATE_OK . 4)
    (:JAMMING_STATE_WARNING . 8)
    (:JAMMING_STATE_CRITICAL . 12)
    (:FLAGS_XTAL_ABSENT . 16)
    (:JAM_IND_NONE . 0)
    (:JAM_IND_STRONG . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MonHW6)))
    "Constants for message type 'MonHW6"
  '((:CLASS_ID . 10)
    (:MESSAGE_ID . 9)
    (:A_STATUS_INIT . 0)
    (:A_STATUS_UNKNOWN . 1)
    (:A_STATUS_OK . 2)
    (:A_STATUS_SHORT . 3)
    (:A_STATUS_OPEN . 4)
    (:A_POWER_OFF . 0)
    (:A_POWER_ON . 1)
    (:A_POWER_UNKNOWN . 2)
    (:FLAGS_RTC_CALIB . 1)
    (:FLAGS_SAFE_BOOT . 2)
    (:FLAGS_JAMMING_STATE_MASK . 12)
    (:JAMMING_STATE_UNKNOWN_OR_DISABLED . 0)
    (:JAMMING_STATE_OK . 4)
    (:JAMMING_STATE_WARNING . 8)
    (:JAMMING_STATE_CRITICAL . 12)
    (:FLAGS_XTAL_ABSENT . 16)
    (:JAM_IND_NONE . 0)
    (:JAM_IND_STRONG . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonHW6>) ostream)
  "Serializes a message object of type '<MonHW6>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinSel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinSel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinSel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinSel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinBank)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinBank)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinBank)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinBank)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinDir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinDir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinDir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinDir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinVal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinVal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinVal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinVal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePerMS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'noisePerMS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agcCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agcCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aPower)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'usedMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'usedMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'usedMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'usedMask)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'VP))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jamInd)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinIrq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinIrq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinIrq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinIrq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pullH)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pullH)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pullH)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pullH)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pullL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pullL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pullL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pullL)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonHW6>) istream)
  "Deserializes a message object of type '<MonHW6>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinSel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinSel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinSel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinSel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinBank)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinBank)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinBank)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinBank)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinDir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinDir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinDir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinDir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinVal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinVal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinVal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinVal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePerMS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'noisePerMS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agcCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agcCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aPower)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'usedMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'usedMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'usedMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'usedMask)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'VP) (cl:make-array 25))
  (cl:let ((vals (cl:slot-value msg 'VP)))
    (cl:dotimes (i 25)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'jamInd)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pinIrq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pinIrq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pinIrq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pinIrq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pullH)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pullH)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pullH)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pullH)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pullL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pullL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pullL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pullL)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonHW6>)))
  "Returns string type for a message object of type '<MonHW6>"
  "ublox_msgs/MonHW6")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonHW6)))
  "Returns string type for a message object of type 'MonHW6"
  "ublox_msgs/MonHW6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonHW6>)))
  "Returns md5sum for a message object of type '<MonHW6>"
  "c5d1657deaf0dff627f534f669249a58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonHW6)))
  "Returns md5sum for a message object of type 'MonHW6"
  "c5d1657deaf0dff627f534f669249a58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonHW6>)))
  "Returns full string definition for message of type '<MonHW6>"
  (cl:format cl:nil "# MON-HW (0x0A 0x09)~%# Hardware Status~%# Firmware 6~%#~%# Status of different aspect of the hardware, such as Antenna, PIO/Peripheral ~%# Pins, Noise Level, Automatic Gain Control (AGC)~%#~%# WARNING: this message is a different length than the MonHW message for~%# firmware version 7 & 8~%~%uint8 CLASS_ID = 10~%uint8 MESSAGE_ID = 9~%~%uint32 pinSel                 # Mask of Pins Set as Peripheral/PIO~%uint32 pinBank                # Mask of Pins Set as Bank A/B~%uint32 pinDir                 # Mask of Pins Set as Input/Output~%uint32 pinVal                 # Mask of Pins Value Low/High~%uint16 noisePerMS             # Noise Level as measured by the GPS Core~%uint16 agcCnt                 # AGC Monitor (counts SIGHI xor SIGLO, ~%                              # range 0 to 8191)~%uint8 aStatus                 # Status of the Antenna Supervisor State Machine ~%uint8 A_STATUS_INIT = 0~%uint8 A_STATUS_UNKNOWN = 1~%uint8 A_STATUS_OK = 2~%uint8 A_STATUS_SHORT = 3~%uint8 A_STATUS_OPEN = 4~%~%uint8 aPower                  # Current PowerStatus of Antenna ~%uint8 A_POWER_OFF = 0 ~%uint8 A_POWER_ON = 1~%uint8 A_POWER_UNKNOWN = 2~%~%uint8 flags                   # Flags:~%uint8 FLAGS_RTC_CALIB = 1            # RTC is calibrated~%uint8 FLAGS_SAFE_BOOT =  2           # Safe boot mode (0 = inactive, 1 = active)~%uint8 FLAGS_JAMMING_STATE_MASK = 12  # output from Jamming/Interference Monitor: ~%uint8 JAMMING_STATE_UNKNOWN_OR_DISABLED = 0   # unknown or feature disabled~%uint8 JAMMING_STATE_OK = 4                    # ok - no significant jamming~%uint8 JAMMING_STATE_WARNING = 8               # interference visible but fix OK~%uint8 JAMMING_STATE_CRITICAL = 12             # interference visible and no fix~%uint8 FLAGS_XTAL_ABSENT =  16        # RTC XTAL is absent~%                                     # (not supported in protocol versions < 18)~%uint8 reserved0               # Reserved~%uint32 usedMask               # Mask of Pins that are used by the Virtual Pin ~%                              # Manager~%uint8[25] VP                  # Array of Pin Mappings for each of the 25  ~%                              # Physical Pins~%uint8 jamInd                  # CW Jamming indicator, scaled:~%uint8 JAM_IND_NONE = 0          # No CW Jamming~%uint8 JAM_IND_STRONG = 255      # Strong CW Jamming    ~%~%uint8[2] reserved1            # Reserved~%~%uint32 pinIrq                 # Mask of Pins Value using the PIO Irq~%uint32 pullH                  # Mask of Pins Value using the PIO Pull High ~%                              # Resistor~%uint32 pullL                  # Mask of Pins Value using the PIO Pull Low ~%                              # Resistor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonHW6)))
  "Returns full string definition for message of type 'MonHW6"
  (cl:format cl:nil "# MON-HW (0x0A 0x09)~%# Hardware Status~%# Firmware 6~%#~%# Status of different aspect of the hardware, such as Antenna, PIO/Peripheral ~%# Pins, Noise Level, Automatic Gain Control (AGC)~%#~%# WARNING: this message is a different length than the MonHW message for~%# firmware version 7 & 8~%~%uint8 CLASS_ID = 10~%uint8 MESSAGE_ID = 9~%~%uint32 pinSel                 # Mask of Pins Set as Peripheral/PIO~%uint32 pinBank                # Mask of Pins Set as Bank A/B~%uint32 pinDir                 # Mask of Pins Set as Input/Output~%uint32 pinVal                 # Mask of Pins Value Low/High~%uint16 noisePerMS             # Noise Level as measured by the GPS Core~%uint16 agcCnt                 # AGC Monitor (counts SIGHI xor SIGLO, ~%                              # range 0 to 8191)~%uint8 aStatus                 # Status of the Antenna Supervisor State Machine ~%uint8 A_STATUS_INIT = 0~%uint8 A_STATUS_UNKNOWN = 1~%uint8 A_STATUS_OK = 2~%uint8 A_STATUS_SHORT = 3~%uint8 A_STATUS_OPEN = 4~%~%uint8 aPower                  # Current PowerStatus of Antenna ~%uint8 A_POWER_OFF = 0 ~%uint8 A_POWER_ON = 1~%uint8 A_POWER_UNKNOWN = 2~%~%uint8 flags                   # Flags:~%uint8 FLAGS_RTC_CALIB = 1            # RTC is calibrated~%uint8 FLAGS_SAFE_BOOT =  2           # Safe boot mode (0 = inactive, 1 = active)~%uint8 FLAGS_JAMMING_STATE_MASK = 12  # output from Jamming/Interference Monitor: ~%uint8 JAMMING_STATE_UNKNOWN_OR_DISABLED = 0   # unknown or feature disabled~%uint8 JAMMING_STATE_OK = 4                    # ok - no significant jamming~%uint8 JAMMING_STATE_WARNING = 8               # interference visible but fix OK~%uint8 JAMMING_STATE_CRITICAL = 12             # interference visible and no fix~%uint8 FLAGS_XTAL_ABSENT =  16        # RTC XTAL is absent~%                                     # (not supported in protocol versions < 18)~%uint8 reserved0               # Reserved~%uint32 usedMask               # Mask of Pins that are used by the Virtual Pin ~%                              # Manager~%uint8[25] VP                  # Array of Pin Mappings for each of the 25  ~%                              # Physical Pins~%uint8 jamInd                  # CW Jamming indicator, scaled:~%uint8 JAM_IND_NONE = 0          # No CW Jamming~%uint8 JAM_IND_STRONG = 255      # Strong CW Jamming    ~%~%uint8[2] reserved1            # Reserved~%~%uint32 pinIrq                 # Mask of Pins Value using the PIO Irq~%uint32 pullH                  # Mask of Pins Value using the PIO Pull High ~%                              # Resistor~%uint32 pullL                  # Mask of Pins Value using the PIO Pull Low ~%                              # Resistor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonHW6>))
  (cl:+ 0
     4
     4
     4
     4
     2
     2
     1
     1
     1
     1
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'VP) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonHW6>))
  "Converts a ROS message object to a list"
  (cl:list 'MonHW6
    (cl:cons ':pinSel (pinSel msg))
    (cl:cons ':pinBank (pinBank msg))
    (cl:cons ':pinDir (pinDir msg))
    (cl:cons ':pinVal (pinVal msg))
    (cl:cons ':noisePerMS (noisePerMS msg))
    (cl:cons ':agcCnt (agcCnt msg))
    (cl:cons ':aStatus (aStatus msg))
    (cl:cons ':aPower (aPower msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':usedMask (usedMask msg))
    (cl:cons ':VP (VP msg))
    (cl:cons ':jamInd (jamInd msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':pinIrq (pinIrq msg))
    (cl:cons ':pullH (pullH msg))
    (cl:cons ':pullL (pullL msg))
))
