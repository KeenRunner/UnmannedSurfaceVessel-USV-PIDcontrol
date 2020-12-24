;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgRST)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgRST (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGRST")
  (make-package "UBLOX_MSGS::CFGRST"))

(in-package "ROS")
;;//! \htmlinclude CfgRST.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*MESSAGE_ID* 4)
(intern "*NAV_BBR_HOT_START*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_HOT_START* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_HOT_START* 0)
(intern "*NAV_BBR_WARM_START*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_WARM_START* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_WARM_START* 1)
(intern "*NAV_BBR_COLD_START*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_COLD_START* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_COLD_START* 65535)
(intern "*NAV_BBR_EPH*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_EPH* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_EPH* 1)
(intern "*NAV_BBR_ALM*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_ALM* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_ALM* 2)
(intern "*NAV_BBR_HEALTH*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_HEALTH* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_HEALTH* 4)
(intern "*NAV_BBR_KLOB*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_KLOB* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_KLOB* 8)
(intern "*NAV_BBR_POS*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_POS* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_POS* 16)
(intern "*NAV_BBR_CLKD*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_CLKD* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_CLKD* 32)
(intern "*NAV_BBR_OSC*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_OSC* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_OSC* 64)
(intern "*NAV_BBR_UTC*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_UTC* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_UTC* 128)
(intern "*NAV_BBR_RTC*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_RTC* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_RTC* 256)
(intern "*NAV_BBR_AOP*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*NAV_BBR_AOP* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*NAV_BBR_AOP* 32768)
(intern "*RESET_MODE_HW_IMMEDIATE*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*RESET_MODE_HW_IMMEDIATE* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*RESET_MODE_HW_IMMEDIATE* 0)
(intern "*RESET_MODE_SW*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*RESET_MODE_SW* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*RESET_MODE_SW* 1)
(intern "*RESET_MODE_GNSS*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*RESET_MODE_GNSS* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*RESET_MODE_GNSS* 2)
(intern "*RESET_MODE_HW_AFTER_SHUTDOWN*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*RESET_MODE_HW_AFTER_SHUTDOWN* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*RESET_MODE_HW_AFTER_SHUTDOWN* 4)
(intern "*RESET_MODE_GNSS_STOP*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*RESET_MODE_GNSS_STOP* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*RESET_MODE_GNSS_STOP* 8)
(intern "*RESET_MODE_GNSS_START*" (find-package "UBLOX_MSGS::CFGRST"))
(shadow '*RESET_MODE_GNSS_START* (find-package "UBLOX_MSGS::CFGRST"))
(defconstant ublox_msgs::CfgRST::*RESET_MODE_GNSS_START* 9)
(defclass ublox_msgs::CfgRST
  :super ros::object
  :slots (_navBbrMask _resetMode _reserved1 ))

(defmethod ublox_msgs::CfgRST
  (:init
   (&key
    ((:navBbrMask __navBbrMask) 0)
    ((:resetMode __resetMode) 0)
    ((:reserved1 __reserved1) 0)
    )
   (send-super :init)
   (setq _navBbrMask (round __navBbrMask))
   (setq _resetMode (round __resetMode))
   (setq _reserved1 (round __reserved1))
   self)
  (:navBbrMask
   (&optional __navBbrMask)
   (if __navBbrMask (setq _navBbrMask __navBbrMask)) _navBbrMask)
  (:resetMode
   (&optional __resetMode)
   (if __resetMode (setq _resetMode __resetMode)) _resetMode)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint16 _navBbrMask
    2
    ;; uint8 _resetMode
    1
    ;; uint8 _reserved1
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _navBbrMask
       (write-word _navBbrMask s)
     ;; uint8 _resetMode
       (write-byte _resetMode s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _navBbrMask
     (setq _navBbrMask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _resetMode
     (setq _resetMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgRST :md5sum-) "a1d02f583dd30373e526af3ea4137f5d")
(setf (get ublox_msgs::CfgRST :datatype-) "ublox_msgs/CfgRST")
(setf (get ublox_msgs::CfgRST :definition-)
      "# CFG-RST (0x06 0x04)
# Reset Receiver / Clear Backup Data Structures
#
# Don't expect this message to be acknowledged by the receiver.
#  - Newer FW version won't acknowledge this message at all.
#  - Older FW version will acknowledge this message but the acknowledge may not
#    be sent completely before the receiver is reset.
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 4 

uint16 navBbrMask # BBR Sections to clear. 
# The following Special Sets apply:
uint16 NAV_BBR_HOT_START = 0       # Hot start the device
uint16 NAV_BBR_WARM_START = 1      # Warm start the device
uint16 NAV_BBR_COLD_START = 65535  # Cold start the device
uint16 NAV_BBR_EPH = 1       # Ephemeris
uint16 NAV_BBR_ALM = 2       # Almanac
uint16 NAV_BBR_HEALTH = 4    # Health
uint16 NAV_BBR_KLOB = 8      # Klobuchar parameters
uint16 NAV_BBR_POS = 16      # Position
uint16 NAV_BBR_CLKD = 32     # Clock Drift
uint16 NAV_BBR_OSC = 64      # Oscillator Parameter
uint16 NAV_BBR_UTC = 128     # UTC Correction + GPS Leap Seconds Parameters
uint16 NAV_BBR_RTC = 256     # RTC
uint16 NAV_BBR_AOP = 32768   # Autonomous Orbit Parameters

uint8 resetMode              # Reset Type:
uint8 RESET_MODE_HW_IMMEDIATE = 0       # Hardware reset (Watchdog) immediately
uint8 RESET_MODE_SW = 1                 # Controlled Software reset
uint8 RESET_MODE_GNSS = 2               # Controlled Software reset (GNSS only)
uint8 RESET_MODE_HW_AFTER_SHUTDOWN = 4  # Hardware reset (Watchdog) after 
                                        # shutdown
uint8 RESET_MODE_GNSS_STOP = 8          # Controlled GNSS stop
uint8 RESET_MODE_GNSS_START = 9         # Controlled GNSS start

uint8 reserved1     # Reserved
")



(provide :ublox_msgs/CfgRST "a1d02f583dd30373e526af3ea4137f5d")


