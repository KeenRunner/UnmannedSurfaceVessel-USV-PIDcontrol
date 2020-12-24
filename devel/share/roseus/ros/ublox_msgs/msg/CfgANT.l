;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgANT)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgANT (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGANT")
  (make-package "UBLOX_MSGS::CFGANT"))

(in-package "ROS")
;;//! \htmlinclude CfgANT.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*MESSAGE_ID* 19)
(intern "*FLAGS_SVCS*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*FLAGS_SVCS* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*FLAGS_SVCS* 1)
(intern "*FLAGS_SCD*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*FLAGS_SCD* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*FLAGS_SCD* 2)
(intern "*FLAGS_OCD*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*FLAGS_OCD* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*FLAGS_OCD* 4)
(intern "*FLAGS_PDWN_ON_SCD*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*FLAGS_PDWN_ON_SCD* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*FLAGS_PDWN_ON_SCD* 8)
(intern "*FLAGS_RECOVERY*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*FLAGS_RECOVERY* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*FLAGS_RECOVERY* 16)
(intern "*PIN_SWITCH_MASK*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*PIN_SWITCH_MASK* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*PIN_SWITCH_MASK* 31)
(intern "*PIN_SCD_MASK*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*PIN_SCD_MASK* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*PIN_SCD_MASK* 992)
(intern "*PIN_OCD_MASK*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*PIN_OCD_MASK* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*PIN_OCD_MASK* 31744)
(intern "*PIN_RECONFIG*" (find-package "UBLOX_MSGS::CFGANT"))
(shadow '*PIN_RECONFIG* (find-package "UBLOX_MSGS::CFGANT"))
(defconstant ublox_msgs::CfgANT::*PIN_RECONFIG* 32678)
(defclass ublox_msgs::CfgANT
  :super ros::object
  :slots (_flags _pins ))

(defmethod ublox_msgs::CfgANT
  (:init
   (&key
    ((:flags __flags) 0)
    ((:pins __pins) 0)
    )
   (send-super :init)
   (setq _flags (round __flags))
   (setq _pins (round __pins))
   self)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:pins
   (&optional __pins)
   (if __pins (setq _pins __pins)) _pins)
  (:serialization-length
   ()
   (+
    ;; uint16 _flags
    2
    ;; uint16 _pins
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _flags
       (write-word _flags s)
     ;; uint16 _pins
       (write-word _pins s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pins
     (setq _pins (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgANT :md5sum-) "6c437e89b3ea397651d3a01434d681c7")
(setf (get ublox_msgs::CfgANT :datatype-) "ublox_msgs/CfgANT")
(setf (get ublox_msgs::CfgANT :definition-)
      "# CFG-ANT (0x06 0x13)
# Antenna Control Settings
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 19

uint16 flags            # Antenna Flag Mask
uint16 FLAGS_SVCS = 1         # Enable Antenna Supply Voltage Control Signal
uint16 FLAGS_SCD = 2          # Enable Short Circuit Detection
uint16 FLAGS_OCD = 4          # Enable Open Circuit Detection
uint16 FLAGS_PDWN_ON_SCD = 8  # Power Down Antenna supply if Short Circuit is 
                              # detected. (only in combination with Bit 1)
uint16 FLAGS_RECOVERY = 16    # Enable automatic recovery from short state

uint16 pins             # Antenna Pin Configuration
uint16 PIN_SWITCH_MASK = 31    # PIO-Pin used for switching antenna supply 
                               # (internal to TIM-LP/TIM-LF)
uint16 PIN_SCD_MASK = 992      # PIO-Pin used for detecting a short in the 
                               # antenna supply
uint16 PIN_OCD_MASK = 31744    # PIO-Pin used for detecting open/not connected 
                               # antenna
uint16 PIN_RECONFIG = 32678    # if set to one, and this command is sent to the 
                               # receiver, the receiver will reconfigure the 
                               # pins as specified.

")



(provide :ublox_msgs/CfgANT "6c437e89b3ea397651d3a01434d681c7")


