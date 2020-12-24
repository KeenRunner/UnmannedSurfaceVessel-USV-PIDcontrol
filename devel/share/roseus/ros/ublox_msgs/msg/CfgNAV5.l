;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgNAV5)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgNAV5 (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGNAV5")
  (make-package "UBLOX_MSGS::CFGNAV5"))

(in-package "ROS")
;;//! \htmlinclude CfgNAV5.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MESSAGE_ID* 36)
(intern "*MASK_DYN*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_DYN* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_DYN* 1)
(intern "*MASK_MIN_EL*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_MIN_EL* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_MIN_EL* 2)
(intern "*MASK_FIX_MODE*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_FIX_MODE* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_FIX_MODE* 4)
(intern "*MASK_DR_LIM*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_DR_LIM* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_DR_LIM* 8)
(intern "*MASK_POS_MASK*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_POS_MASK* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_POS_MASK* 16)
(intern "*MASK_TIME_MASK*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_TIME_MASK* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_TIME_MASK* 32)
(intern "*MASK_STATIC_HOLD_MASK*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_STATIC_HOLD_MASK* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_STATIC_HOLD_MASK* 64)
(intern "*MASK_DGPS_MASK*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_DGPS_MASK* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_DGPS_MASK* 128)
(intern "*MASK_CNO*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_CNO* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_CNO* 256)
(intern "*MASK_UTC*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*MASK_UTC* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*MASK_UTC* 1024)
(intern "*DYN_MODEL_PORTABLE*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_PORTABLE* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_PORTABLE* 0)
(intern "*DYN_MODEL_STATIONARY*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_STATIONARY* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_STATIONARY* 2)
(intern "*DYN_MODEL_PEDESTRIAN*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_PEDESTRIAN* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_PEDESTRIAN* 3)
(intern "*DYN_MODEL_AUTOMOTIVE*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_AUTOMOTIVE* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_AUTOMOTIVE* 4)
(intern "*DYN_MODEL_SEA*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_SEA* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_SEA* 5)
(intern "*DYN_MODEL_AIRBORNE_1G*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_AIRBORNE_1G* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_AIRBORNE_1G* 6)
(intern "*DYN_MODEL_AIRBORNE_2G*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_AIRBORNE_2G* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_AIRBORNE_2G* 7)
(intern "*DYN_MODEL_AIRBORNE_4G*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_AIRBORNE_4G* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_AIRBORNE_4G* 8)
(intern "*DYN_MODEL_WRIST_WATCH*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*DYN_MODEL_WRIST_WATCH* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*DYN_MODEL_WRIST_WATCH* 9)
(intern "*FIX_MODE_2D_ONLY*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*FIX_MODE_2D_ONLY* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*FIX_MODE_2D_ONLY* 1)
(intern "*FIX_MODE_3D_ONLY*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*FIX_MODE_3D_ONLY* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*FIX_MODE_3D_ONLY* 2)
(intern "*FIX_MODE_AUTO*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*FIX_MODE_AUTO* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*FIX_MODE_AUTO* 3)
(intern "*UTC_STANDARD_AUTOMATIC*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*UTC_STANDARD_AUTOMATIC* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*UTC_STANDARD_AUTOMATIC* 0)
(intern "*UTC_STANDARD_GPS*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*UTC_STANDARD_GPS* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*UTC_STANDARD_GPS* 3)
(intern "*UTC_STANDARD_GLONASS*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*UTC_STANDARD_GLONASS* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*UTC_STANDARD_GLONASS* 6)
(intern "*UTC_STANDARD_BEIDOU*" (find-package "UBLOX_MSGS::CFGNAV5"))
(shadow '*UTC_STANDARD_BEIDOU* (find-package "UBLOX_MSGS::CFGNAV5"))
(defconstant ublox_msgs::CfgNAV5::*UTC_STANDARD_BEIDOU* 7)
(defclass ublox_msgs::CfgNAV5
  :super ros::object
  :slots (_mask _dynModel _fixMode _fixedAlt _fixedAltVar _minElev _drLimit _pDop _tDop _pAcc _tAcc _staticHoldThresh _dgnssTimeOut _cnoThreshNumSvs _cnoThresh _reserved1 _staticHoldMaxDist _utcStandard _reserved2 ))

(defmethod ublox_msgs::CfgNAV5
  (:init
   (&key
    ((:mask __mask) 0)
    ((:dynModel __dynModel) 0)
    ((:fixMode __fixMode) 0)
    ((:fixedAlt __fixedAlt) 0)
    ((:fixedAltVar __fixedAltVar) 0)
    ((:minElev __minElev) 0)
    ((:drLimit __drLimit) 0)
    ((:pDop __pDop) 0)
    ((:tDop __tDop) 0)
    ((:pAcc __pAcc) 0)
    ((:tAcc __tAcc) 0)
    ((:staticHoldThresh __staticHoldThresh) 0)
    ((:dgnssTimeOut __dgnssTimeOut) 0)
    ((:cnoThreshNumSvs __cnoThreshNumSvs) 0)
    ((:cnoThresh __cnoThresh) 0)
    ((:reserved1 __reserved1) (make-array 2 :initial-element 0 :element-type :char))
    ((:staticHoldMaxDist __staticHoldMaxDist) 0)
    ((:utcStandard __utcStandard) 0)
    ((:reserved2 __reserved2) (make-array 5 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _mask (round __mask))
   (setq _dynModel (round __dynModel))
   (setq _fixMode (round __fixMode))
   (setq _fixedAlt (round __fixedAlt))
   (setq _fixedAltVar (round __fixedAltVar))
   (setq _minElev (round __minElev))
   (setq _drLimit (round __drLimit))
   (setq _pDop (round __pDop))
   (setq _tDop (round __tDop))
   (setq _pAcc (round __pAcc))
   (setq _tAcc (round __tAcc))
   (setq _staticHoldThresh (round __staticHoldThresh))
   (setq _dgnssTimeOut (round __dgnssTimeOut))
   (setq _cnoThreshNumSvs (round __cnoThreshNumSvs))
   (setq _cnoThresh (round __cnoThresh))
   (setq _reserved1 __reserved1)
   (setq _staticHoldMaxDist (round __staticHoldMaxDist))
   (setq _utcStandard (round __utcStandard))
   (setq _reserved2 __reserved2)
   self)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:dynModel
   (&optional __dynModel)
   (if __dynModel (setq _dynModel __dynModel)) _dynModel)
  (:fixMode
   (&optional __fixMode)
   (if __fixMode (setq _fixMode __fixMode)) _fixMode)
  (:fixedAlt
   (&optional __fixedAlt)
   (if __fixedAlt (setq _fixedAlt __fixedAlt)) _fixedAlt)
  (:fixedAltVar
   (&optional __fixedAltVar)
   (if __fixedAltVar (setq _fixedAltVar __fixedAltVar)) _fixedAltVar)
  (:minElev
   (&optional __minElev)
   (if __minElev (setq _minElev __minElev)) _minElev)
  (:drLimit
   (&optional __drLimit)
   (if __drLimit (setq _drLimit __drLimit)) _drLimit)
  (:pDop
   (&optional __pDop)
   (if __pDop (setq _pDop __pDop)) _pDop)
  (:tDop
   (&optional __tDop)
   (if __tDop (setq _tDop __tDop)) _tDop)
  (:pAcc
   (&optional __pAcc)
   (if __pAcc (setq _pAcc __pAcc)) _pAcc)
  (:tAcc
   (&optional __tAcc)
   (if __tAcc (setq _tAcc __tAcc)) _tAcc)
  (:staticHoldThresh
   (&optional __staticHoldThresh)
   (if __staticHoldThresh (setq _staticHoldThresh __staticHoldThresh)) _staticHoldThresh)
  (:dgnssTimeOut
   (&optional __dgnssTimeOut)
   (if __dgnssTimeOut (setq _dgnssTimeOut __dgnssTimeOut)) _dgnssTimeOut)
  (:cnoThreshNumSvs
   (&optional __cnoThreshNumSvs)
   (if __cnoThreshNumSvs (setq _cnoThreshNumSvs __cnoThreshNumSvs)) _cnoThreshNumSvs)
  (:cnoThresh
   (&optional __cnoThresh)
   (if __cnoThresh (setq _cnoThresh __cnoThresh)) _cnoThresh)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:staticHoldMaxDist
   (&optional __staticHoldMaxDist)
   (if __staticHoldMaxDist (setq _staticHoldMaxDist __staticHoldMaxDist)) _staticHoldMaxDist)
  (:utcStandard
   (&optional __utcStandard)
   (if __utcStandard (setq _utcStandard __utcStandard)) _utcStandard)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint16 _mask
    2
    ;; uint8 _dynModel
    1
    ;; uint8 _fixMode
    1
    ;; int32 _fixedAlt
    4
    ;; uint32 _fixedAltVar
    4
    ;; int8 _minElev
    1
    ;; uint8 _drLimit
    1
    ;; uint16 _pDop
    2
    ;; uint16 _tDop
    2
    ;; uint16 _pAcc
    2
    ;; uint16 _tAcc
    2
    ;; uint8 _staticHoldThresh
    1
    ;; uint8 _dgnssTimeOut
    1
    ;; uint8 _cnoThreshNumSvs
    1
    ;; uint8 _cnoThresh
    1
    ;; uint8[2] _reserved1
    (* 1    2)
    ;; uint16 _staticHoldMaxDist
    2
    ;; uint8 _utcStandard
    1
    ;; uint8[5] _reserved2
    (* 1    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _mask
       (write-word _mask s)
     ;; uint8 _dynModel
       (write-byte _dynModel s)
     ;; uint8 _fixMode
       (write-byte _fixMode s)
     ;; int32 _fixedAlt
       (write-long _fixedAlt s)
     ;; uint32 _fixedAltVar
       (write-long _fixedAltVar s)
     ;; int8 _minElev
       (write-byte _minElev s)
     ;; uint8 _drLimit
       (write-byte _drLimit s)
     ;; uint16 _pDop
       (write-word _pDop s)
     ;; uint16 _tDop
       (write-word _tDop s)
     ;; uint16 _pAcc
       (write-word _pAcc s)
     ;; uint16 _tAcc
       (write-word _tAcc s)
     ;; uint8 _staticHoldThresh
       (write-byte _staticHoldThresh s)
     ;; uint8 _dgnssTimeOut
       (write-byte _dgnssTimeOut s)
     ;; uint8 _cnoThreshNumSvs
       (write-byte _cnoThreshNumSvs s)
     ;; uint8 _cnoThresh
       (write-byte _cnoThresh s)
     ;; uint8[2] _reserved1
     (princ _reserved1 s)
     ;; uint16 _staticHoldMaxDist
       (write-word _staticHoldMaxDist s)
     ;; uint8 _utcStandard
       (write-byte _utcStandard s)
     ;; uint8[5] _reserved2
     (princ _reserved2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _mask
     (setq _mask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _dynModel
     (setq _dynModel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fixMode
     (setq _fixMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _fixedAlt
     (setq _fixedAlt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fixedAltVar
     (setq _fixedAltVar (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _minElev
     (setq _minElev (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _minElev 127) (setq _minElev (- _minElev 256)))
   ;; uint8 _drLimit
     (setq _drLimit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _pDop
     (setq _pDop (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _tDop
     (setq _tDop (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pAcc
     (setq _pAcc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _tAcc
     (setq _tAcc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _staticHoldThresh
     (setq _staticHoldThresh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dgnssTimeOut
     (setq _dgnssTimeOut (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cnoThreshNumSvs
     (setq _cnoThreshNumSvs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cnoThresh
     (setq _cnoThresh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved1
   (setq _reserved1 (make-array 2 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 2)
   ;; uint16 _staticHoldMaxDist
     (setq _staticHoldMaxDist (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _utcStandard
     (setq _utcStandard (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[5] _reserved2
   (setq _reserved2 (make-array 5 :element-type :char))
   (replace _reserved2 buf :start2 ptr-) (incf ptr- 5)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgNAV5 :md5sum-) "30ca0eca946e4bd96bf9f8a145f7b72c")
(setf (get ublox_msgs::CfgNAV5 :datatype-) "ublox_msgs/CfgNAV5")
(setf (get ublox_msgs::CfgNAV5 :definition-)
      "# CFG-NAV5 (0x06 0x24)
# Navigation Engine Settings

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 36

uint16 mask             # Parameters Bitmask. Only the masked
                        # parameters will be applied.
uint16 MASK_DYN = 1                 # Apply dynamic model settings
uint16 MASK_MIN_EL = 2              # Apply minimum elevation settings
uint16 MASK_FIX_MODE = 4            # Apply fix mode settings
uint16 MASK_DR_LIM = 8              # Apply DR limit settings
uint16 MASK_POS_MASK = 16           # Apply position mask settings
uint16 MASK_TIME_MASK = 32          # Apply time mask settings
uint16 MASK_STATIC_HOLD_MASK = 64   # Apply static hold settings
uint16 MASK_DGPS_MASK = 128         # Apply DGPS settings, firmware >= 7 only
uint16 MASK_CNO = 256               # Apply CNO threshold settings
uint16 MASK_UTC = 1024              # Apply UTC settings, protocol >= 16 only

uint8 dynModel          # Dynamic Platform model:
uint8 DYN_MODEL_PORTABLE = 0        # Portable
uint8 DYN_MODEL_STATIONARY = 2      # Stationary
uint8 DYN_MODEL_PEDESTRIAN = 3      # Pedestrian
uint8 DYN_MODEL_AUTOMOTIVE = 4      # Automotive
uint8 DYN_MODEL_SEA = 5             # Sea
uint8 DYN_MODEL_AIRBORNE_1G = 6     # Airborne with <1g Acceleration
uint8 DYN_MODEL_AIRBORNE_2G = 7     # Airborne with <2g Acceleration
uint8 DYN_MODEL_AIRBORNE_4G = 8     # Airborne with <4g Acceleration
uint8 DYN_MODEL_WRIST_WATCH = 9     # Wrist watch, protocol >= 18

uint8 fixMode           # Position Fixing Mode.
uint8 FIX_MODE_2D_ONLY = 1          # 2D only
uint8 FIX_MODE_3D_ONLY = 2          # 3D only
uint8 FIX_MODE_AUTO = 3             # Auto 2D/3D

int32 fixedAlt          # Fixed altitude (mean sea level) for 2D fix mode. 
                        # [m / 0.01]
uint32 fixedAltVar      # Fixed altitude variance for 2D mode. [m^2 / 0.0001]
int8 minElev            # Minimum Elevation for a GNSS satellite to be used in 
                        # NAV [deg]
uint8 drLimit           # Maximum time to perform dead reckoning [s]
                        # (linear extrapolation) in case of GPS signal loss
uint16 pDop             # Position DOP Mask to use [1 / 0.1]
uint16 tDop             # Time DOP Mask to use [1 / 0.1]
uint16 pAcc             # Position Accuracy Mask [m]
uint16 tAcc             # Time Accuracy Mask [m]
uint8 staticHoldThresh  # Static hold threshold [cm/s]
uint8 dgnssTimeOut      # DGNSS timeout, firmware 7 and newer only [s]

uint8 cnoThreshNumSvs   # Number of satellites required to have C/N0 above 
                        # cnoThresh for a fix to be attempted
uint8 cnoThresh         # C/N0 threshold for deciding whether to attempt a fix
                        # [dBHz]
uint8[2] reserved1      # Reserved

uint16 staticHoldMaxDist  # Static hold distance threshold (before quitting 
                          # static hold) [m]
uint8 utcStandard       # UTC standard to be used:
uint8 UTC_STANDARD_AUTOMATIC = 0 # receiver selects based on GNSS configuration
uint8 UTC_STANDARD_GPS = 3       # UTC as operated by the U.S. Naval Observatory 
                                 # (USNO); derived from GPS time
uint8 UTC_STANDARD_GLONASS = 6   # UTC as operated by the former Soviet Union;
                                 # derived from GLONASS time
uint8 UTC_STANDARD_BEIDOU = 7    # UTC as operated by the National Time Service
                                 # Center, China; derived from BeiDou time
uint8[5] reserved2      # Reserved
")



(provide :ublox_msgs/CfgNAV5 "30ca0eca946e4bd96bf9f8a145f7b72c")


