;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::MonHW6)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'MonHW6 (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::MONHW6")
  (make-package "UBLOX_MSGS::MONHW6"))

(in-package "ROS")
;;//! \htmlinclude MonHW6.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*CLASS_ID* 10)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*MESSAGE_ID* 9)
(intern "*A_STATUS_INIT*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_STATUS_INIT* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_STATUS_INIT* 0)
(intern "*A_STATUS_UNKNOWN*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_STATUS_UNKNOWN* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_STATUS_UNKNOWN* 1)
(intern "*A_STATUS_OK*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_STATUS_OK* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_STATUS_OK* 2)
(intern "*A_STATUS_SHORT*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_STATUS_SHORT* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_STATUS_SHORT* 3)
(intern "*A_STATUS_OPEN*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_STATUS_OPEN* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_STATUS_OPEN* 4)
(intern "*A_POWER_OFF*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_POWER_OFF* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_POWER_OFF* 0)
(intern "*A_POWER_ON*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_POWER_ON* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_POWER_ON* 1)
(intern "*A_POWER_UNKNOWN*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*A_POWER_UNKNOWN* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*A_POWER_UNKNOWN* 2)
(intern "*FLAGS_RTC_CALIB*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*FLAGS_RTC_CALIB* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*FLAGS_RTC_CALIB* 1)
(intern "*FLAGS_SAFE_BOOT*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*FLAGS_SAFE_BOOT* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*FLAGS_SAFE_BOOT* 2)
(intern "*FLAGS_JAMMING_STATE_MASK*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*FLAGS_JAMMING_STATE_MASK* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*FLAGS_JAMMING_STATE_MASK* 12)
(intern "*JAMMING_STATE_UNKNOWN_OR_DISABLED*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*JAMMING_STATE_UNKNOWN_OR_DISABLED* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*JAMMING_STATE_UNKNOWN_OR_DISABLED* 0)
(intern "*JAMMING_STATE_OK*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*JAMMING_STATE_OK* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*JAMMING_STATE_OK* 4)
(intern "*JAMMING_STATE_WARNING*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*JAMMING_STATE_WARNING* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*JAMMING_STATE_WARNING* 8)
(intern "*JAMMING_STATE_CRITICAL*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*JAMMING_STATE_CRITICAL* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*JAMMING_STATE_CRITICAL* 12)
(intern "*FLAGS_XTAL_ABSENT*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*FLAGS_XTAL_ABSENT* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*FLAGS_XTAL_ABSENT* 16)
(intern "*JAM_IND_NONE*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*JAM_IND_NONE* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*JAM_IND_NONE* 0)
(intern "*JAM_IND_STRONG*" (find-package "UBLOX_MSGS::MONHW6"))
(shadow '*JAM_IND_STRONG* (find-package "UBLOX_MSGS::MONHW6"))
(defconstant ublox_msgs::MonHW6::*JAM_IND_STRONG* 255)
(defclass ublox_msgs::MonHW6
  :super ros::object
  :slots (_pinSel _pinBank _pinDir _pinVal _noisePerMS _agcCnt _aStatus _aPower _flags _reserved0 _usedMask _VP _jamInd _reserved1 _pinIrq _pullH _pullL ))

(defmethod ublox_msgs::MonHW6
  (:init
   (&key
    ((:pinSel __pinSel) 0)
    ((:pinBank __pinBank) 0)
    ((:pinDir __pinDir) 0)
    ((:pinVal __pinVal) 0)
    ((:noisePerMS __noisePerMS) 0)
    ((:agcCnt __agcCnt) 0)
    ((:aStatus __aStatus) 0)
    ((:aPower __aPower) 0)
    ((:flags __flags) 0)
    ((:reserved0 __reserved0) 0)
    ((:usedMask __usedMask) 0)
    ((:VP __VP) (make-array 25 :initial-element 0 :element-type :char))
    ((:jamInd __jamInd) 0)
    ((:reserved1 __reserved1) (make-array 2 :initial-element 0 :element-type :char))
    ((:pinIrq __pinIrq) 0)
    ((:pullH __pullH) 0)
    ((:pullL __pullL) 0)
    )
   (send-super :init)
   (setq _pinSel (round __pinSel))
   (setq _pinBank (round __pinBank))
   (setq _pinDir (round __pinDir))
   (setq _pinVal (round __pinVal))
   (setq _noisePerMS (round __noisePerMS))
   (setq _agcCnt (round __agcCnt))
   (setq _aStatus (round __aStatus))
   (setq _aPower (round __aPower))
   (setq _flags (round __flags))
   (setq _reserved0 (round __reserved0))
   (setq _usedMask (round __usedMask))
   (setq _VP __VP)
   (setq _jamInd (round __jamInd))
   (setq _reserved1 __reserved1)
   (setq _pinIrq (round __pinIrq))
   (setq _pullH (round __pullH))
   (setq _pullL (round __pullL))
   self)
  (:pinSel
   (&optional __pinSel)
   (if __pinSel (setq _pinSel __pinSel)) _pinSel)
  (:pinBank
   (&optional __pinBank)
   (if __pinBank (setq _pinBank __pinBank)) _pinBank)
  (:pinDir
   (&optional __pinDir)
   (if __pinDir (setq _pinDir __pinDir)) _pinDir)
  (:pinVal
   (&optional __pinVal)
   (if __pinVal (setq _pinVal __pinVal)) _pinVal)
  (:noisePerMS
   (&optional __noisePerMS)
   (if __noisePerMS (setq _noisePerMS __noisePerMS)) _noisePerMS)
  (:agcCnt
   (&optional __agcCnt)
   (if __agcCnt (setq _agcCnt __agcCnt)) _agcCnt)
  (:aStatus
   (&optional __aStatus)
   (if __aStatus (setq _aStatus __aStatus)) _aStatus)
  (:aPower
   (&optional __aPower)
   (if __aPower (setq _aPower __aPower)) _aPower)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:usedMask
   (&optional __usedMask)
   (if __usedMask (setq _usedMask __usedMask)) _usedMask)
  (:VP
   (&optional __VP)
   (if __VP (setq _VP __VP)) _VP)
  (:jamInd
   (&optional __jamInd)
   (if __jamInd (setq _jamInd __jamInd)) _jamInd)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:pinIrq
   (&optional __pinIrq)
   (if __pinIrq (setq _pinIrq __pinIrq)) _pinIrq)
  (:pullH
   (&optional __pullH)
   (if __pullH (setq _pullH __pullH)) _pullH)
  (:pullL
   (&optional __pullL)
   (if __pullL (setq _pullL __pullL)) _pullL)
  (:serialization-length
   ()
   (+
    ;; uint32 _pinSel
    4
    ;; uint32 _pinBank
    4
    ;; uint32 _pinDir
    4
    ;; uint32 _pinVal
    4
    ;; uint16 _noisePerMS
    2
    ;; uint16 _agcCnt
    2
    ;; uint8 _aStatus
    1
    ;; uint8 _aPower
    1
    ;; uint8 _flags
    1
    ;; uint8 _reserved0
    1
    ;; uint32 _usedMask
    4
    ;; uint8[25] _VP
    (* 1    25)
    ;; uint8 _jamInd
    1
    ;; uint8[2] _reserved1
    (* 1    2)
    ;; uint32 _pinIrq
    4
    ;; uint32 _pullH
    4
    ;; uint32 _pullL
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _pinSel
       (write-long _pinSel s)
     ;; uint32 _pinBank
       (write-long _pinBank s)
     ;; uint32 _pinDir
       (write-long _pinDir s)
     ;; uint32 _pinVal
       (write-long _pinVal s)
     ;; uint16 _noisePerMS
       (write-word _noisePerMS s)
     ;; uint16 _agcCnt
       (write-word _agcCnt s)
     ;; uint8 _aStatus
       (write-byte _aStatus s)
     ;; uint8 _aPower
       (write-byte _aPower s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint32 _usedMask
       (write-long _usedMask s)
     ;; uint8[25] _VP
     (princ _VP s)
     ;; uint8 _jamInd
       (write-byte _jamInd s)
     ;; uint8[2] _reserved1
     (princ _reserved1 s)
     ;; uint32 _pinIrq
       (write-long _pinIrq s)
     ;; uint32 _pullH
       (write-long _pullH s)
     ;; uint32 _pullL
       (write-long _pullL s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _pinSel
     (setq _pinSel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pinBank
     (setq _pinBank (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pinDir
     (setq _pinDir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pinVal
     (setq _pinVal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _noisePerMS
     (setq _noisePerMS (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _agcCnt
     (setq _agcCnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _aStatus
     (setq _aStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _aPower
     (setq _aPower (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _usedMask
     (setq _usedMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[25] _VP
   (setq _VP (make-array 25 :element-type :char))
   (replace _VP buf :start2 ptr-) (incf ptr- 25)
   ;; uint8 _jamInd
     (setq _jamInd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved1
   (setq _reserved1 (make-array 2 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 2)
   ;; uint32 _pinIrq
     (setq _pinIrq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pullH
     (setq _pullH (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pullL
     (setq _pullL (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::MonHW6 :md5sum-) "c5d1657deaf0dff627f534f669249a58")
(setf (get ublox_msgs::MonHW6 :datatype-) "ublox_msgs/MonHW6")
(setf (get ublox_msgs::MonHW6 :definition-)
      "# MON-HW (0x0A 0x09)
# Hardware Status
# Firmware 6
#
# Status of different aspect of the hardware, such as Antenna, PIO/Peripheral 
# Pins, Noise Level, Automatic Gain Control (AGC)
#
# WARNING: this message is a different length than the MonHW message for
# firmware version 7 & 8

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 9

uint32 pinSel                 # Mask of Pins Set as Peripheral/PIO
uint32 pinBank                # Mask of Pins Set as Bank A/B
uint32 pinDir                 # Mask of Pins Set as Input/Output
uint32 pinVal                 # Mask of Pins Value Low/High
uint16 noisePerMS             # Noise Level as measured by the GPS Core
uint16 agcCnt                 # AGC Monitor (counts SIGHI xor SIGLO, 
                              # range 0 to 8191)
uint8 aStatus                 # Status of the Antenna Supervisor State Machine 
uint8 A_STATUS_INIT = 0
uint8 A_STATUS_UNKNOWN = 1
uint8 A_STATUS_OK = 2
uint8 A_STATUS_SHORT = 3
uint8 A_STATUS_OPEN = 4

uint8 aPower                  # Current PowerStatus of Antenna 
uint8 A_POWER_OFF = 0 
uint8 A_POWER_ON = 1
uint8 A_POWER_UNKNOWN = 2

uint8 flags                   # Flags:
uint8 FLAGS_RTC_CALIB = 1            # RTC is calibrated
uint8 FLAGS_SAFE_BOOT =  2           # Safe boot mode (0 = inactive, 1 = active)
uint8 FLAGS_JAMMING_STATE_MASK = 12  # output from Jamming/Interference Monitor: 
uint8 JAMMING_STATE_UNKNOWN_OR_DISABLED = 0   # unknown or feature disabled
uint8 JAMMING_STATE_OK = 4                    # ok - no significant jamming
uint8 JAMMING_STATE_WARNING = 8               # interference visible but fix OK
uint8 JAMMING_STATE_CRITICAL = 12             # interference visible and no fix
uint8 FLAGS_XTAL_ABSENT =  16        # RTC XTAL is absent
                                     # (not supported in protocol versions < 18)
uint8 reserved0               # Reserved
uint32 usedMask               # Mask of Pins that are used by the Virtual Pin 
                              # Manager
uint8[25] VP                  # Array of Pin Mappings for each of the 25  
                              # Physical Pins
uint8 jamInd                  # CW Jamming indicator, scaled:
uint8 JAM_IND_NONE = 0          # No CW Jamming
uint8 JAM_IND_STRONG = 255      # Strong CW Jamming    

uint8[2] reserved1            # Reserved

uint32 pinIrq                 # Mask of Pins Value using the PIO Irq
uint32 pullH                  # Mask of Pins Value using the PIO Pull High 
                              # Resistor
uint32 pullL                  # Mask of Pins Value using the PIO Pull Low 
                              # Resistor
")



(provide :ublox_msgs/MonHW6 "c5d1657deaf0dff627f534f669249a58")


