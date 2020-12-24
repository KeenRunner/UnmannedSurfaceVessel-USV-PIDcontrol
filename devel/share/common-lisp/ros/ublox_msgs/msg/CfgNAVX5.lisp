; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgNAVX5.msg.html

(cl:defclass <CfgNAVX5> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (mask1
    :reader mask1
    :initarg :mask1
    :type cl:fixnum
    :initform 0)
   (mask2
    :reader mask2
    :initarg :mask2
    :type cl:integer
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (minSVs
    :reader minSVs
    :initarg :minSVs
    :type cl:fixnum
    :initform 0)
   (maxSVs
    :reader maxSVs
    :initarg :maxSVs
    :type cl:fixnum
    :initform 0)
   (minCNO
    :reader minCNO
    :initarg :minCNO
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:fixnum
    :initform 0)
   (iniFix3D
    :reader iniFix3D
    :initarg :iniFix3D
    :type cl:fixnum
    :initform 0)
   (reserved3
    :reader reserved3
    :initarg :reserved3
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (ackAiding
    :reader ackAiding
    :initarg :ackAiding
    :type cl:fixnum
    :initform 0)
   (wknRollover
    :reader wknRollover
    :initarg :wknRollover
    :type cl:fixnum
    :initform 0)
   (sigAttenCompMode
    :reader sigAttenCompMode
    :initarg :sigAttenCompMode
    :type cl:fixnum
    :initform 0)
   (reserved4
    :reader reserved4
    :initarg :reserved4
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 5 :element-type 'cl:fixnum :initial-element 0))
   (usePPP
    :reader usePPP
    :initarg :usePPP
    :type cl:fixnum
    :initform 0)
   (aopCfg
    :reader aopCfg
    :initarg :aopCfg
    :type cl:fixnum
    :initform 0)
   (reserved5
    :reader reserved5
    :initarg :reserved5
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (aopOrbMaxErr
    :reader aopOrbMaxErr
    :initarg :aopOrbMaxErr
    :type cl:fixnum
    :initform 0)
   (reserved6
    :reader reserved6
    :initarg :reserved6
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 7 :element-type 'cl:fixnum :initial-element 0))
   (useAdr
    :reader useAdr
    :initarg :useAdr
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CfgNAVX5 (<CfgNAVX5>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgNAVX5>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgNAVX5)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgNAVX5> is deprecated: use ublox_msgs-msg:CfgNAVX5 instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'mask1-val :lambda-list '(m))
(cl:defmethod mask1-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:mask1-val is deprecated.  Use ublox_msgs-msg:mask1 instead.")
  (mask1 m))

(cl:ensure-generic-function 'mask2-val :lambda-list '(m))
(cl:defmethod mask2-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:mask2-val is deprecated.  Use ublox_msgs-msg:mask2 instead.")
  (mask2 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'minSVs-val :lambda-list '(m))
(cl:defmethod minSVs-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:minSVs-val is deprecated.  Use ublox_msgs-msg:minSVs instead.")
  (minSVs m))

(cl:ensure-generic-function 'maxSVs-val :lambda-list '(m))
(cl:defmethod maxSVs-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:maxSVs-val is deprecated.  Use ublox_msgs-msg:maxSVs instead.")
  (maxSVs m))

(cl:ensure-generic-function 'minCNO-val :lambda-list '(m))
(cl:defmethod minCNO-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:minCNO-val is deprecated.  Use ublox_msgs-msg:minCNO instead.")
  (minCNO m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'iniFix3D-val :lambda-list '(m))
(cl:defmethod iniFix3D-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iniFix3D-val is deprecated.  Use ublox_msgs-msg:iniFix3D instead.")
  (iniFix3D m))

(cl:ensure-generic-function 'reserved3-val :lambda-list '(m))
(cl:defmethod reserved3-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved3-val is deprecated.  Use ublox_msgs-msg:reserved3 instead.")
  (reserved3 m))

(cl:ensure-generic-function 'ackAiding-val :lambda-list '(m))
(cl:defmethod ackAiding-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ackAiding-val is deprecated.  Use ublox_msgs-msg:ackAiding instead.")
  (ackAiding m))

(cl:ensure-generic-function 'wknRollover-val :lambda-list '(m))
(cl:defmethod wknRollover-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:wknRollover-val is deprecated.  Use ublox_msgs-msg:wknRollover instead.")
  (wknRollover m))

(cl:ensure-generic-function 'sigAttenCompMode-val :lambda-list '(m))
(cl:defmethod sigAttenCompMode-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sigAttenCompMode-val is deprecated.  Use ublox_msgs-msg:sigAttenCompMode instead.")
  (sigAttenCompMode m))

(cl:ensure-generic-function 'reserved4-val :lambda-list '(m))
(cl:defmethod reserved4-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved4-val is deprecated.  Use ublox_msgs-msg:reserved4 instead.")
  (reserved4 m))

(cl:ensure-generic-function 'usePPP-val :lambda-list '(m))
(cl:defmethod usePPP-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:usePPP-val is deprecated.  Use ublox_msgs-msg:usePPP instead.")
  (usePPP m))

(cl:ensure-generic-function 'aopCfg-val :lambda-list '(m))
(cl:defmethod aopCfg-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:aopCfg-val is deprecated.  Use ublox_msgs-msg:aopCfg instead.")
  (aopCfg m))

(cl:ensure-generic-function 'reserved5-val :lambda-list '(m))
(cl:defmethod reserved5-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved5-val is deprecated.  Use ublox_msgs-msg:reserved5 instead.")
  (reserved5 m))

(cl:ensure-generic-function 'aopOrbMaxErr-val :lambda-list '(m))
(cl:defmethod aopOrbMaxErr-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:aopOrbMaxErr-val is deprecated.  Use ublox_msgs-msg:aopOrbMaxErr instead.")
  (aopOrbMaxErr m))

(cl:ensure-generic-function 'reserved6-val :lambda-list '(m))
(cl:defmethod reserved6-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved6-val is deprecated.  Use ublox_msgs-msg:reserved6 instead.")
  (reserved6 m))

(cl:ensure-generic-function 'useAdr-val :lambda-list '(m))
(cl:defmethod useAdr-val ((m <CfgNAVX5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:useAdr-val is deprecated.  Use ublox_msgs-msg:useAdr instead.")
  (useAdr m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgNAVX5>)))
    "Constants for message type '<CfgNAVX5>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 35)
    (:MASK1_MIN_MAX . 4)
    (:MASK1_MIN_CNO . 8)
    (:MASK1_INITIAL_FIX_3D . 64)
    (:MASK1_WKN_ROLL . 512)
    (:MASK1_ACK_AID . 1024)
    (:MASK1_PPP . 8192)
    (:MASK1_AOP . 16384)
    (:MASK2_ADR . 64)
    (:MASK2_SIG_ATTEN_COMP_MODE . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgNAVX5)))
    "Constants for message type 'CfgNAVX5"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 35)
    (:MASK1_MIN_MAX . 4)
    (:MASK1_MIN_CNO . 8)
    (:MASK1_INITIAL_FIX_3D . 64)
    (:MASK1_WKN_ROLL . 512)
    (:MASK1_ACK_AID . 1024)
    (:MASK1_PPP . 8192)
    (:MASK1_AOP . 16384)
    (:MASK2_ADR . 64)
    (:MASK2_SIG_ATTEN_COMP_MODE . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgNAVX5>) ostream)
  "Serializes a message object of type '<CfgNAVX5>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask2)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minSVs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxSVs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minCNO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iniFix3D)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved3))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ackAiding)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wknRollover)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wknRollover)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sigAttenCompMode)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved4))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'usePPP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aopCfg)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved5))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aopOrbMaxErr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'aopOrbMaxErr)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved6))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'useAdr)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgNAVX5>) istream)
  "Deserializes a message object of type '<CfgNAVX5>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask2)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minSVs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxSVs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minCNO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iniFix3D)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved3) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved3)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ackAiding)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wknRollover)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wknRollover)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sigAttenCompMode)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved4) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'reserved4)))
    (cl:dotimes (i 5)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'usePPP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aopCfg)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved5) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved5)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aopOrbMaxErr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'aopOrbMaxErr)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved6) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'reserved6)))
    (cl:dotimes (i 7)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'useAdr)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgNAVX5>)))
  "Returns string type for a message object of type '<CfgNAVX5>"
  "ublox_msgs/CfgNAVX5")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgNAVX5)))
  "Returns string type for a message object of type 'CfgNAVX5"
  "ublox_msgs/CfgNAVX5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgNAVX5>)))
  "Returns md5sum for a message object of type '<CfgNAVX5>"
  "10b967e4bf2a0c03e74705b79c79a211")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgNAVX5)))
  "Returns md5sum for a message object of type 'CfgNAVX5"
  "10b967e4bf2a0c03e74705b79c79a211")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgNAVX5>)))
  "Returns full string definition for message of type '<CfgNAVX5>"
  (cl:format cl:nil "# CFG-NAVX5 (0x06 0x23)~%# Navigation Engine Expert Settings~%#~%# Warning: Refer to u-blox protocol spec before changing these settings.~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 35~%~%uint16 version        # Message version (set to 0)~%~%uint16 mask1          # First parameters bitmask (possible values below)~%uint16 MASK1_MIN_MAX        = 4        # apply min/max SVs settings~%uint16 MASK1_MIN_CNO        = 8        # apply minimum C/N0 setting~%uint16 MASK1_INITIAL_FIX_3D = 64       # apply initial 3D fix settings~%uint16 MASK1_WKN_ROLL       = 512      # apply GPS week number rollover settings~%uint16 MASK1_ACK_AID        = 1024     # apply assistance acknowledgment ~%                                       # settings~%uint16 MASK1_PPP            = 8192     # apply usePPP flag~%uint16 MASK1_AOP            = 16384    # apply aopCfg (useAOP flag) and ~%                                       # aopOrbMaxErr settings~%                                       # (AssistNow Autonomous)~%~%uint32 mask2          # Second parameters bitmask (possible values below)~%                      # Firmware >=8 only~%uint32 MASK2_ADR = 64                    # Apply ADR sensor fusion on/off ~%                                         # setting~%uint32 MASK2_SIG_ATTEN_COMP_MODE = 128   # Apply signal attenuation ~%                                         # compensation feature settings~%~%uint8[2] reserved1      # Always set to zero~%~%uint8 minSVs            # Minimum number of satellites for navigation~%uint8 maxSVs            # Maximum number of satellites for navigation~%uint8 minCNO            # Minimum satellite signal level for navigation [dBHz]~%~%uint8 reserved2         # Always set to zero~%~%uint8 iniFix3D          # If set to 1, initial fix must be 3D~%~%uint8[2] reserved3      # Always set to zero~%~%uint8 ackAiding         # If set to 1, issue acknowledgments for assistance~%uint16 wknRollover      # GPS week rollover number, GPS week numbers will be set ~%                        # correctly from this week up to 1024 weeks after this ~%                        # week~%uint8 sigAttenCompMode  # Permanently attenuated signal compensation [dBHz]~%                        # 0 = disabled, 255 = automatic~%                        # 1..63 = maximum expected C/N0 value~%                        # Firmware 8 only~%~%uint8[5] reserved4      # Always set to zero~%~%uint8 usePPP            # Enable/disable PPP (on supported units)~%uint8 aopCfg            # AssistNow Autonomous configuration, 1: enabled~%~%uint8[2] reserved5      # Always set to zero~%~%uint16 aopOrbMaxErr     # Maximum acceptable (modeled) autonomous orbit ~%                        # error [m]~%                        # valid range = 5..1000~%                        # 0 = reset to firmware default~%~%uint8[7] reserved6      # Always set to zero~%~%uint8 useAdr            # Enable/disable ADR sensor fusion ~%                        # 1: enabled, 0: disabled~%                        # Only supported on certain products ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgNAVX5)))
  "Returns full string definition for message of type 'CfgNAVX5"
  (cl:format cl:nil "# CFG-NAVX5 (0x06 0x23)~%# Navigation Engine Expert Settings~%#~%# Warning: Refer to u-blox protocol spec before changing these settings.~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 35~%~%uint16 version        # Message version (set to 0)~%~%uint16 mask1          # First parameters bitmask (possible values below)~%uint16 MASK1_MIN_MAX        = 4        # apply min/max SVs settings~%uint16 MASK1_MIN_CNO        = 8        # apply minimum C/N0 setting~%uint16 MASK1_INITIAL_FIX_3D = 64       # apply initial 3D fix settings~%uint16 MASK1_WKN_ROLL       = 512      # apply GPS week number rollover settings~%uint16 MASK1_ACK_AID        = 1024     # apply assistance acknowledgment ~%                                       # settings~%uint16 MASK1_PPP            = 8192     # apply usePPP flag~%uint16 MASK1_AOP            = 16384    # apply aopCfg (useAOP flag) and ~%                                       # aopOrbMaxErr settings~%                                       # (AssistNow Autonomous)~%~%uint32 mask2          # Second parameters bitmask (possible values below)~%                      # Firmware >=8 only~%uint32 MASK2_ADR = 64                    # Apply ADR sensor fusion on/off ~%                                         # setting~%uint32 MASK2_SIG_ATTEN_COMP_MODE = 128   # Apply signal attenuation ~%                                         # compensation feature settings~%~%uint8[2] reserved1      # Always set to zero~%~%uint8 minSVs            # Minimum number of satellites for navigation~%uint8 maxSVs            # Maximum number of satellites for navigation~%uint8 minCNO            # Minimum satellite signal level for navigation [dBHz]~%~%uint8 reserved2         # Always set to zero~%~%uint8 iniFix3D          # If set to 1, initial fix must be 3D~%~%uint8[2] reserved3      # Always set to zero~%~%uint8 ackAiding         # If set to 1, issue acknowledgments for assistance~%uint16 wknRollover      # GPS week rollover number, GPS week numbers will be set ~%                        # correctly from this week up to 1024 weeks after this ~%                        # week~%uint8 sigAttenCompMode  # Permanently attenuated signal compensation [dBHz]~%                        # 0 = disabled, 255 = automatic~%                        # 1..63 = maximum expected C/N0 value~%                        # Firmware 8 only~%~%uint8[5] reserved4      # Always set to zero~%~%uint8 usePPP            # Enable/disable PPP (on supported units)~%uint8 aopCfg            # AssistNow Autonomous configuration, 1: enabled~%~%uint8[2] reserved5      # Always set to zero~%~%uint16 aopOrbMaxErr     # Maximum acceptable (modeled) autonomous orbit ~%                        # error [m]~%                        # valid range = 5..1000~%                        # 0 = reset to firmware default~%~%uint8[7] reserved6      # Always set to zero~%~%uint8 useAdr            # Enable/disable ADR sensor fusion ~%                        # 1: enabled, 0: disabled~%                        # Only supported on certain products ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgNAVX5>))
  (cl:+ 0
     2
     2
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     2
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved4) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved5) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved6) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgNAVX5>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgNAVX5
    (cl:cons ':version (version msg))
    (cl:cons ':mask1 (mask1 msg))
    (cl:cons ':mask2 (mask2 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':minSVs (minSVs msg))
    (cl:cons ':maxSVs (maxSVs msg))
    (cl:cons ':minCNO (minCNO msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':iniFix3D (iniFix3D msg))
    (cl:cons ':reserved3 (reserved3 msg))
    (cl:cons ':ackAiding (ackAiding msg))
    (cl:cons ':wknRollover (wknRollover msg))
    (cl:cons ':sigAttenCompMode (sigAttenCompMode msg))
    (cl:cons ':reserved4 (reserved4 msg))
    (cl:cons ':usePPP (usePPP msg))
    (cl:cons ':aopCfg (aopCfg msg))
    (cl:cons ':reserved5 (reserved5 msg))
    (cl:cons ':aopOrbMaxErr (aopOrbMaxErr msg))
    (cl:cons ':reserved6 (reserved6 msg))
    (cl:cons ':useAdr (useAdr msg))
))
