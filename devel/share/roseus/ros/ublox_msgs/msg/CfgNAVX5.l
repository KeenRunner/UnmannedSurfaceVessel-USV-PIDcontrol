;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgNAVX5)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgNAVX5 (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGNAVX5")
  (make-package "UBLOX_MSGS::CFGNAVX5"))

(in-package "ROS")
;;//! \htmlinclude CfgNAVX5.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MESSAGE_ID* 35)
(intern "*MASK1_MIN_MAX*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK1_MIN_MAX* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK1_MIN_MAX* 4)
(intern "*MASK1_MIN_CNO*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK1_MIN_CNO* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK1_MIN_CNO* 8)
(intern "*MASK1_INITIAL_FIX_3D*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK1_INITIAL_FIX_3D* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK1_INITIAL_FIX_3D* 64)
(intern "*MASK1_WKN_ROLL*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK1_WKN_ROLL* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK1_WKN_ROLL* 512)
(intern "*MASK1_ACK_AID*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK1_ACK_AID* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK1_ACK_AID* 1024)
(intern "*MASK1_PPP*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK1_PPP* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK1_PPP* 8192)
(intern "*MASK1_AOP*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK1_AOP* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK1_AOP* 16384)
(intern "*MASK2_ADR*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK2_ADR* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK2_ADR* 64)
(intern "*MASK2_SIG_ATTEN_COMP_MODE*" (find-package "UBLOX_MSGS::CFGNAVX5"))
(shadow '*MASK2_SIG_ATTEN_COMP_MODE* (find-package "UBLOX_MSGS::CFGNAVX5"))
(defconstant ublox_msgs::CfgNAVX5::*MASK2_SIG_ATTEN_COMP_MODE* 128)
(defclass ublox_msgs::CfgNAVX5
  :super ros::object
  :slots (_version _mask1 _mask2 _reserved1 _minSVs _maxSVs _minCNO _reserved2 _iniFix3D _reserved3 _ackAiding _wknRollover _sigAttenCompMode _reserved4 _usePPP _aopCfg _reserved5 _aopOrbMaxErr _reserved6 _useAdr ))

(defmethod ublox_msgs::CfgNAVX5
  (:init
   (&key
    ((:version __version) 0)
    ((:mask1 __mask1) 0)
    ((:mask2 __mask2) 0)
    ((:reserved1 __reserved1) (make-array 2 :initial-element 0 :element-type :char))
    ((:minSVs __minSVs) 0)
    ((:maxSVs __maxSVs) 0)
    ((:minCNO __minCNO) 0)
    ((:reserved2 __reserved2) 0)
    ((:iniFix3D __iniFix3D) 0)
    ((:reserved3 __reserved3) (make-array 2 :initial-element 0 :element-type :char))
    ((:ackAiding __ackAiding) 0)
    ((:wknRollover __wknRollover) 0)
    ((:sigAttenCompMode __sigAttenCompMode) 0)
    ((:reserved4 __reserved4) (make-array 5 :initial-element 0 :element-type :char))
    ((:usePPP __usePPP) 0)
    ((:aopCfg __aopCfg) 0)
    ((:reserved5 __reserved5) (make-array 2 :initial-element 0 :element-type :char))
    ((:aopOrbMaxErr __aopOrbMaxErr) 0)
    ((:reserved6 __reserved6) (make-array 7 :initial-element 0 :element-type :char))
    ((:useAdr __useAdr) 0)
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _mask1 (round __mask1))
   (setq _mask2 (round __mask2))
   (setq _reserved1 __reserved1)
   (setq _minSVs (round __minSVs))
   (setq _maxSVs (round __maxSVs))
   (setq _minCNO (round __minCNO))
   (setq _reserved2 (round __reserved2))
   (setq _iniFix3D (round __iniFix3D))
   (setq _reserved3 __reserved3)
   (setq _ackAiding (round __ackAiding))
   (setq _wknRollover (round __wknRollover))
   (setq _sigAttenCompMode (round __sigAttenCompMode))
   (setq _reserved4 __reserved4)
   (setq _usePPP (round __usePPP))
   (setq _aopCfg (round __aopCfg))
   (setq _reserved5 __reserved5)
   (setq _aopOrbMaxErr (round __aopOrbMaxErr))
   (setq _reserved6 __reserved6)
   (setq _useAdr (round __useAdr))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:mask1
   (&optional __mask1)
   (if __mask1 (setq _mask1 __mask1)) _mask1)
  (:mask2
   (&optional __mask2)
   (if __mask2 (setq _mask2 __mask2)) _mask2)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:minSVs
   (&optional __minSVs)
   (if __minSVs (setq _minSVs __minSVs)) _minSVs)
  (:maxSVs
   (&optional __maxSVs)
   (if __maxSVs (setq _maxSVs __maxSVs)) _maxSVs)
  (:minCNO
   (&optional __minCNO)
   (if __minCNO (setq _minCNO __minCNO)) _minCNO)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:iniFix3D
   (&optional __iniFix3D)
   (if __iniFix3D (setq _iniFix3D __iniFix3D)) _iniFix3D)
  (:reserved3
   (&optional __reserved3)
   (if __reserved3 (setq _reserved3 __reserved3)) _reserved3)
  (:ackAiding
   (&optional __ackAiding)
   (if __ackAiding (setq _ackAiding __ackAiding)) _ackAiding)
  (:wknRollover
   (&optional __wknRollover)
   (if __wknRollover (setq _wknRollover __wknRollover)) _wknRollover)
  (:sigAttenCompMode
   (&optional __sigAttenCompMode)
   (if __sigAttenCompMode (setq _sigAttenCompMode __sigAttenCompMode)) _sigAttenCompMode)
  (:reserved4
   (&optional __reserved4)
   (if __reserved4 (setq _reserved4 __reserved4)) _reserved4)
  (:usePPP
   (&optional __usePPP)
   (if __usePPP (setq _usePPP __usePPP)) _usePPP)
  (:aopCfg
   (&optional __aopCfg)
   (if __aopCfg (setq _aopCfg __aopCfg)) _aopCfg)
  (:reserved5
   (&optional __reserved5)
   (if __reserved5 (setq _reserved5 __reserved5)) _reserved5)
  (:aopOrbMaxErr
   (&optional __aopOrbMaxErr)
   (if __aopOrbMaxErr (setq _aopOrbMaxErr __aopOrbMaxErr)) _aopOrbMaxErr)
  (:reserved6
   (&optional __reserved6)
   (if __reserved6 (setq _reserved6 __reserved6)) _reserved6)
  (:useAdr
   (&optional __useAdr)
   (if __useAdr (setq _useAdr __useAdr)) _useAdr)
  (:serialization-length
   ()
   (+
    ;; uint16 _version
    2
    ;; uint16 _mask1
    2
    ;; uint32 _mask2
    4
    ;; uint8[2] _reserved1
    (* 1    2)
    ;; uint8 _minSVs
    1
    ;; uint8 _maxSVs
    1
    ;; uint8 _minCNO
    1
    ;; uint8 _reserved2
    1
    ;; uint8 _iniFix3D
    1
    ;; uint8[2] _reserved3
    (* 1    2)
    ;; uint8 _ackAiding
    1
    ;; uint16 _wknRollover
    2
    ;; uint8 _sigAttenCompMode
    1
    ;; uint8[5] _reserved4
    (* 1    5)
    ;; uint8 _usePPP
    1
    ;; uint8 _aopCfg
    1
    ;; uint8[2] _reserved5
    (* 1    2)
    ;; uint16 _aopOrbMaxErr
    2
    ;; uint8[7] _reserved6
    (* 1    7)
    ;; uint8 _useAdr
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _version
       (write-word _version s)
     ;; uint16 _mask1
       (write-word _mask1 s)
     ;; uint32 _mask2
       (write-long _mask2 s)
     ;; uint8[2] _reserved1
     (princ _reserved1 s)
     ;; uint8 _minSVs
       (write-byte _minSVs s)
     ;; uint8 _maxSVs
       (write-byte _maxSVs s)
     ;; uint8 _minCNO
       (write-byte _minCNO s)
     ;; uint8 _reserved2
       (write-byte _reserved2 s)
     ;; uint8 _iniFix3D
       (write-byte _iniFix3D s)
     ;; uint8[2] _reserved3
     (princ _reserved3 s)
     ;; uint8 _ackAiding
       (write-byte _ackAiding s)
     ;; uint16 _wknRollover
       (write-word _wknRollover s)
     ;; uint8 _sigAttenCompMode
       (write-byte _sigAttenCompMode s)
     ;; uint8[5] _reserved4
     (princ _reserved4 s)
     ;; uint8 _usePPP
       (write-byte _usePPP s)
     ;; uint8 _aopCfg
       (write-byte _aopCfg s)
     ;; uint8[2] _reserved5
     (princ _reserved5 s)
     ;; uint16 _aopOrbMaxErr
       (write-word _aopOrbMaxErr s)
     ;; uint8[7] _reserved6
     (princ _reserved6 s)
     ;; uint8 _useAdr
       (write-byte _useAdr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _version
     (setq _version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _mask1
     (setq _mask1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _mask2
     (setq _mask2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[2] _reserved1
   (setq _reserved1 (make-array 2 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 2)
   ;; uint8 _minSVs
     (setq _minSVs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _maxSVs
     (setq _maxSVs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minCNO
     (setq _minCNO (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _iniFix3D
     (setq _iniFix3D (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved3
   (setq _reserved3 (make-array 2 :element-type :char))
   (replace _reserved3 buf :start2 ptr-) (incf ptr- 2)
   ;; uint8 _ackAiding
     (setq _ackAiding (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _wknRollover
     (setq _wknRollover (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sigAttenCompMode
     (setq _sigAttenCompMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[5] _reserved4
   (setq _reserved4 (make-array 5 :element-type :char))
   (replace _reserved4 buf :start2 ptr-) (incf ptr- 5)
   ;; uint8 _usePPP
     (setq _usePPP (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _aopCfg
     (setq _aopCfg (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved5
   (setq _reserved5 (make-array 2 :element-type :char))
   (replace _reserved5 buf :start2 ptr-) (incf ptr- 2)
   ;; uint16 _aopOrbMaxErr
     (setq _aopOrbMaxErr (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[7] _reserved6
   (setq _reserved6 (make-array 7 :element-type :char))
   (replace _reserved6 buf :start2 ptr-) (incf ptr- 7)
   ;; uint8 _useAdr
     (setq _useAdr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgNAVX5 :md5sum-) "10b967e4bf2a0c03e74705b79c79a211")
(setf (get ublox_msgs::CfgNAVX5 :datatype-) "ublox_msgs/CfgNAVX5")
(setf (get ublox_msgs::CfgNAVX5 :definition-)
      "# CFG-NAVX5 (0x06 0x23)
# Navigation Engine Expert Settings
#
# Warning: Refer to u-blox protocol spec before changing these settings.

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 35

uint16 version        # Message version (set to 0)

uint16 mask1          # First parameters bitmask (possible values below)
uint16 MASK1_MIN_MAX        = 4        # apply min/max SVs settings
uint16 MASK1_MIN_CNO        = 8        # apply minimum C/N0 setting
uint16 MASK1_INITIAL_FIX_3D = 64       # apply initial 3D fix settings
uint16 MASK1_WKN_ROLL       = 512      # apply GPS week number rollover settings
uint16 MASK1_ACK_AID        = 1024     # apply assistance acknowledgment 
                                       # settings
uint16 MASK1_PPP            = 8192     # apply usePPP flag
uint16 MASK1_AOP            = 16384    # apply aopCfg (useAOP flag) and 
                                       # aopOrbMaxErr settings
                                       # (AssistNow Autonomous)

uint32 mask2          # Second parameters bitmask (possible values below)
                      # Firmware >=8 only
uint32 MASK2_ADR = 64                    # Apply ADR sensor fusion on/off 
                                         # setting
uint32 MASK2_SIG_ATTEN_COMP_MODE = 128   # Apply signal attenuation 
                                         # compensation feature settings

uint8[2] reserved1      # Always set to zero

uint8 minSVs            # Minimum number of satellites for navigation
uint8 maxSVs            # Maximum number of satellites for navigation
uint8 minCNO            # Minimum satellite signal level for navigation [dBHz]

uint8 reserved2         # Always set to zero

uint8 iniFix3D          # If set to 1, initial fix must be 3D

uint8[2] reserved3      # Always set to zero

uint8 ackAiding         # If set to 1, issue acknowledgments for assistance
uint16 wknRollover      # GPS week rollover number, GPS week numbers will be set 
                        # correctly from this week up to 1024 weeks after this 
                        # week
uint8 sigAttenCompMode  # Permanently attenuated signal compensation [dBHz]
                        # 0 = disabled, 255 = automatic
                        # 1..63 = maximum expected C/N0 value
                        # Firmware 8 only

uint8[5] reserved4      # Always set to zero

uint8 usePPP            # Enable/disable PPP (on supported units)
uint8 aopCfg            # AssistNow Autonomous configuration, 1: enabled

uint8[2] reserved5      # Always set to zero

uint16 aopOrbMaxErr     # Maximum acceptable (modeled) autonomous orbit 
                        # error [m]
                        # valid range = 5..1000
                        # 0 = reset to firmware default

uint8[7] reserved6      # Always set to zero

uint8 useAdr            # Enable/disable ADR sensor fusion 
                        # 1: enabled, 0: disabled
                        # Only supported on certain products 

")



(provide :ublox_msgs/CfgNAVX5 "10b967e4bf2a0c03e74705b79c79a211")


