;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgDGNSS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgDGNSS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGDGNSS")
  (make-package "UBLOX_MSGS::CFGDGNSS"))

(in-package "ROS")
;;//! \htmlinclude CfgDGNSS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGDGNSS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGDGNSS"))
(defconstant ublox_msgs::CfgDGNSS::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGDGNSS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGDGNSS"))
(defconstant ublox_msgs::CfgDGNSS::*MESSAGE_ID* 112)
(intern "*DGNSS_MODE_RTK_FLOAT*" (find-package "UBLOX_MSGS::CFGDGNSS"))
(shadow '*DGNSS_MODE_RTK_FLOAT* (find-package "UBLOX_MSGS::CFGDGNSS"))
(defconstant ublox_msgs::CfgDGNSS::*DGNSS_MODE_RTK_FLOAT* 2)
(intern "*DGNSS_MODE_RTK_FIXED*" (find-package "UBLOX_MSGS::CFGDGNSS"))
(shadow '*DGNSS_MODE_RTK_FIXED* (find-package "UBLOX_MSGS::CFGDGNSS"))
(defconstant ublox_msgs::CfgDGNSS::*DGNSS_MODE_RTK_FIXED* 3)
(defclass ublox_msgs::CfgDGNSS
  :super ros::object
  :slots (_dgnssMode _reserved0 ))

(defmethod ublox_msgs::CfgDGNSS
  (:init
   (&key
    ((:dgnssMode __dgnssMode) 0)
    ((:reserved0 __reserved0) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _dgnssMode (round __dgnssMode))
   (setq _reserved0 __reserved0)
   self)
  (:dgnssMode
   (&optional __dgnssMode)
   (if __dgnssMode (setq _dgnssMode __dgnssMode)) _dgnssMode)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:serialization-length
   ()
   (+
    ;; uint8 _dgnssMode
    1
    ;; uint8[3] _reserved0
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _dgnssMode
       (write-byte _dgnssMode s)
     ;; uint8[3] _reserved0
     (princ _reserved0 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _dgnssMode
     (setq _dgnssMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved0
   (setq _reserved0 (make-array 3 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgDGNSS :md5sum-) "2ec4391f93581f9db720bbc0af2b613e")
(setf (get ublox_msgs::CfgDGNSS :datatype-) "ublox_msgs/CfgDGNSS")
(setf (get ublox_msgs::CfgDGNSS :definition-)
      "# CFG-DGNSS (0x06 0x70)
# DGNSS configuration
#
# This message allows the user to configure the DGNSS configuration of the 
# receiver.
# Supported on:
#  - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01 (only
#    with High Precision GNSS products)

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 112

uint8 dgnssMode                 # Specifies differential mode:
uint8 DGNSS_MODE_RTK_FLOAT = 2    # RTK float: No attempts are made to fix
                                  # ambiguities.
uint8 DGNSS_MODE_RTK_FIXED = 3    # RTK fixed: Ambiguities are fixed whenever
                                  # possible.
uint8[3] reserved0              # Reserved
")



(provide :ublox_msgs/CfgDGNSS "2ec4391f93581f9db720bbc0af2b613e")


