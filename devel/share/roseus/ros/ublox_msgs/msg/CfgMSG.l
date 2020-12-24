;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgMSG)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgMSG (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGMSG")
  (make-package "UBLOX_MSGS::CFGMSG"))

(in-package "ROS")
;;//! \htmlinclude CfgMSG.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGMSG"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGMSG"))
(defconstant ublox_msgs::CfgMSG::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGMSG"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGMSG"))
(defconstant ublox_msgs::CfgMSG::*MESSAGE_ID* 1)
(defclass ublox_msgs::CfgMSG
  :super ros::object
  :slots (_msgClass _msgID _rate ))

(defmethod ublox_msgs::CfgMSG
  (:init
   (&key
    ((:msgClass __msgClass) 0)
    ((:msgID __msgID) 0)
    ((:rate __rate) 0)
    )
   (send-super :init)
   (setq _msgClass (round __msgClass))
   (setq _msgID (round __msgID))
   (setq _rate (round __rate))
   self)
  (:msgClass
   (&optional __msgClass)
   (if __msgClass (setq _msgClass __msgClass)) _msgClass)
  (:msgID
   (&optional __msgID)
   (if __msgID (setq _msgID __msgID)) _msgID)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:serialization-length
   ()
   (+
    ;; uint8 _msgClass
    1
    ;; uint8 _msgID
    1
    ;; uint8 _rate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _msgClass
       (write-byte _msgClass s)
     ;; uint8 _msgID
       (write-byte _msgID s)
     ;; uint8 _rate
       (write-byte _rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _msgClass
     (setq _msgClass (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msgID
     (setq _msgID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rate
     (setq _rate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgMSG :md5sum-) "9f2fcd2333c19c76cbfdf6a57fc64a9d")
(setf (get ublox_msgs::CfgMSG :datatype-) "ublox_msgs/CfgMSG")
(setf (get ublox_msgs::CfgMSG :definition-)
      "# CFG-MSG (0x06 0x01)
# Message Rate(s)
# 
# Set message rate for the current port

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 1

uint8 msgClass            # Message Class
uint8 msgID               # Message Identifier
uint8 rate                # Send rate on current port 
                          # [number of navigation solutions]

")



(provide :ublox_msgs/CfgMSG "9f2fcd2333c19c76cbfdf6a57fc64a9d")


