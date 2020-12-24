;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgINF_Block)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgINF_Block (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGINF_BLOCK")
  (make-package "UBLOX_MSGS::CFGINF_BLOCK"))

(in-package "ROS")
;;//! \htmlinclude CfgINF_Block.msg.html


(intern "*PROTOCOL_ID_UBX*" (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(shadow '*PROTOCOL_ID_UBX* (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(defconstant ublox_msgs::CfgINF_Block::*PROTOCOL_ID_UBX* 0)
(intern "*PROTOCOL_ID_NMEA*" (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(shadow '*PROTOCOL_ID_NMEA* (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(defconstant ublox_msgs::CfgINF_Block::*PROTOCOL_ID_NMEA* 1)
(intern "*INF_MSG_ERROR*" (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(shadow '*INF_MSG_ERROR* (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(defconstant ublox_msgs::CfgINF_Block::*INF_MSG_ERROR* 1)
(intern "*INF_MSG_WARNING*" (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(shadow '*INF_MSG_WARNING* (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(defconstant ublox_msgs::CfgINF_Block::*INF_MSG_WARNING* 2)
(intern "*INF_MSG_NOTICE*" (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(shadow '*INF_MSG_NOTICE* (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(defconstant ublox_msgs::CfgINF_Block::*INF_MSG_NOTICE* 4)
(intern "*INF_MSG_TEST*" (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(shadow '*INF_MSG_TEST* (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(defconstant ublox_msgs::CfgINF_Block::*INF_MSG_TEST* 8)
(intern "*INF_MSG_DEBUG*" (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(shadow '*INF_MSG_DEBUG* (find-package "UBLOX_MSGS::CFGINF_BLOCK"))
(defconstant ublox_msgs::CfgINF_Block::*INF_MSG_DEBUG* 16)
(defclass ublox_msgs::CfgINF_Block
  :super ros::object
  :slots (_protocolID _reserved1 _infMsgMask ))

(defmethod ublox_msgs::CfgINF_Block
  (:init
   (&key
    ((:protocolID __protocolID) 0)
    ((:reserved1 __reserved1) (make-array 3 :initial-element 0 :element-type :char))
    ((:infMsgMask __infMsgMask) (make-array 6 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _protocolID (round __protocolID))
   (setq _reserved1 __reserved1)
   (setq _infMsgMask __infMsgMask)
   self)
  (:protocolID
   (&optional __protocolID)
   (if __protocolID (setq _protocolID __protocolID)) _protocolID)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:infMsgMask
   (&optional __infMsgMask)
   (if __infMsgMask (setq _infMsgMask __infMsgMask)) _infMsgMask)
  (:serialization-length
   ()
   (+
    ;; uint8 _protocolID
    1
    ;; uint8[3] _reserved1
    (* 1    3)
    ;; uint8[6] _infMsgMask
    (* 1    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _protocolID
       (write-byte _protocolID s)
     ;; uint8[3] _reserved1
     (princ _reserved1 s)
     ;; uint8[6] _infMsgMask
     (princ _infMsgMask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _protocolID
     (setq _protocolID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved1
   (setq _reserved1 (make-array 3 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 3)
   ;; uint8[6] _infMsgMask
   (setq _infMsgMask (make-array 6 :element-type :char))
   (replace _infMsgMask buf :start2 ptr-) (incf ptr- 6)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgINF_Block :md5sum-) "71c7fcecf939acbf06ee4e1259793fce")
(setf (get ublox_msgs::CfgINF_Block :datatype-) "ublox_msgs/CfgINF_Block")
(setf (get ublox_msgs::CfgINF_Block :definition-)
      "# See CfgINF message
#

uint8 protocolID          # Protocol Identifier, identifying for which
                          # protocol the configuration is set/get. The
                          # following are valid Protocol Identifiers:
                          # 0: UBX Protocol
                          # 1: NMEA Protocol
                          # 2-255: Reserved
uint8 PROTOCOL_ID_UBX = 0
uint8 PROTOCOL_ID_NMEA = 1

uint8[3] reserved1        # Reserved

uint8[6] infMsgMask       # A bit mask, saying which information messages
                          # are enabled on each I/O port
uint8 INF_MSG_ERROR = 1              # enable ERROR
uint8 INF_MSG_WARNING = 2            # enable WARNING
uint8 INF_MSG_NOTICE = 4             # enable NOTICE
uint8 INF_MSG_TEST = 8               # enable TEST
uint8 INF_MSG_DEBUG = 16             # enable DEBUG
")



(provide :ublox_msgs/CfgINF_Block "71c7fcecf939acbf06ee4e1259793fce")


