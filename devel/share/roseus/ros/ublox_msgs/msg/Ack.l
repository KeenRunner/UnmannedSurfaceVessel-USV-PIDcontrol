;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::Ack)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'Ack (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::ACK")
  (make-package "UBLOX_MSGS::ACK"))

(in-package "ROS")
;;//! \htmlinclude Ack.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::ACK"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::ACK"))
(defconstant ublox_msgs::Ack::*CLASS_ID* 5)
(intern "*NACK_MESSAGE_ID*" (find-package "UBLOX_MSGS::ACK"))
(shadow '*NACK_MESSAGE_ID* (find-package "UBLOX_MSGS::ACK"))
(defconstant ublox_msgs::Ack::*NACK_MESSAGE_ID* 0)
(intern "*ACK_MESSAGE_ID*" (find-package "UBLOX_MSGS::ACK"))
(shadow '*ACK_MESSAGE_ID* (find-package "UBLOX_MSGS::ACK"))
(defconstant ublox_msgs::Ack::*ACK_MESSAGE_ID* 1)
(defclass ublox_msgs::Ack
  :super ros::object
  :slots (_clsID _msgID ))

(defmethod ublox_msgs::Ack
  (:init
   (&key
    ((:clsID __clsID) 0)
    ((:msgID __msgID) 0)
    )
   (send-super :init)
   (setq _clsID (round __clsID))
   (setq _msgID (round __msgID))
   self)
  (:clsID
   (&optional __clsID)
   (if __clsID (setq _clsID __clsID)) _clsID)
  (:msgID
   (&optional __msgID)
   (if __msgID (setq _msgID __msgID)) _msgID)
  (:serialization-length
   ()
   (+
    ;; uint8 _clsID
    1
    ;; uint8 _msgID
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _clsID
       (write-byte _clsID s)
     ;; uint8 _msgID
       (write-byte _msgID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _clsID
     (setq _clsID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msgID
     (setq _msgID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::Ack :md5sum-) "fc3270816d86d7c962dbc4b52a6c5386")
(setf (get ublox_msgs::Ack :datatype-) "ublox_msgs/Ack")
(setf (get ublox_msgs::Ack :definition-)
      "# ACK (0x05)
# Message Acknowledged / Not-Acknowledged
#
# Output upon processing of an input message
#

uint8 CLASS_ID = 5
uint8 NACK_MESSAGE_ID = 0
uint8 ACK_MESSAGE_ID = 1

uint8 clsID   # Class ID of the (Not-)Acknowledged Message
uint8 msgID   # Message ID of the (Not-)Acknowledged Message
")



(provide :ublox_msgs/Ack "fc3270816d86d7c962dbc4b52a6c5386")


