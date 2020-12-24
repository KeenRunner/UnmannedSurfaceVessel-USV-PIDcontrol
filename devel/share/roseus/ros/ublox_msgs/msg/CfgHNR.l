;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgHNR)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgHNR (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGHNR")
  (make-package "UBLOX_MSGS::CFGHNR"))

(in-package "ROS")
;;//! \htmlinclude CfgHNR.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGHNR"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGHNR"))
(defconstant ublox_msgs::CfgHNR::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGHNR"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGHNR"))
(defconstant ublox_msgs::CfgHNR::*MESSAGE_ID* 92)
(defclass ublox_msgs::CfgHNR
  :super ros::object
  :slots (_highNavRate _reserved0 ))

(defmethod ublox_msgs::CfgHNR
  (:init
   (&key
    ((:highNavRate __highNavRate) 0)
    ((:reserved0 __reserved0) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _highNavRate (round __highNavRate))
   (setq _reserved0 __reserved0)
   self)
  (:highNavRate
   (&optional __highNavRate)
   (if __highNavRate (setq _highNavRate __highNavRate)) _highNavRate)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:serialization-length
   ()
   (+
    ;; uint8 _highNavRate
    1
    ;; uint8[3] _reserved0
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _highNavRate
       (write-byte _highNavRate s)
     ;; uint8[3] _reserved0
     (princ _reserved0 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _highNavRate
     (setq _highNavRate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved0
   (setq _reserved0 (make-array 3 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgHNR :md5sum-) "9398ae76435d6cc9cd4bf6ee2c626072")
(setf (get ublox_msgs::CfgHNR :datatype-) "ublox_msgs/CfgHNR")
(setf (get ublox_msgs::CfgHNR :definition-)
      "# CFG-HNR (0x06 0x5C)
# High Navigation Rate Settings
#
# The u-blox receivers support high rates of navigation update up to 30 Hz. 
# The navigation solution output (NAV-HNR) will not be aligned to the top of a
# second.
# The update rate has a direct influence on the power consumption. The more
# fixes that are required, the more CPU power and communication resources are 
# required.
# For most applications a 1 Hz update rate would be sufficient.
#
# (only with ADR or UDR products)
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 92

uint8 highNavRate     # Rate of navigation solution output [Hz]
uint8[3] reserved0    # Reserved
")



(provide :ublox_msgs/CfgHNR "9398ae76435d6cc9cd4bf6ee2c626072")


