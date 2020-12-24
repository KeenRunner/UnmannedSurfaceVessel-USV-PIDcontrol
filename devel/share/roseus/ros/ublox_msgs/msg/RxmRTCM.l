;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmRTCM)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmRTCM (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMRTCM")
  (make-package "UBLOX_MSGS::RXMRTCM"))

(in-package "ROS")
;;//! \htmlinclude RxmRTCM.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::RXMRTCM"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::RXMRTCM"))
(defconstant ublox_msgs::RxmRTCM::*CLASS_ID* 2)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::RXMRTCM"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::RXMRTCM"))
(defconstant ublox_msgs::RxmRTCM::*MESSAGE_ID* 50)
(intern "*FLAGS_CRC_FAILED*" (find-package "UBLOX_MSGS::RXMRTCM"))
(shadow '*FLAGS_CRC_FAILED* (find-package "UBLOX_MSGS::RXMRTCM"))
(defconstant ublox_msgs::RxmRTCM::*FLAGS_CRC_FAILED* 1)
(defclass ublox_msgs::RxmRTCM
  :super ros::object
  :slots (_version _flags _reserved0 _refStation _msgType ))

(defmethod ublox_msgs::RxmRTCM
  (:init
   (&key
    ((:version __version) 0)
    ((:flags __flags) 0)
    ((:reserved0 __reserved0) (make-array 2 :initial-element 0 :element-type :char))
    ((:refStation __refStation) 0)
    ((:msgType __msgType) 0)
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _flags (round __flags))
   (setq _reserved0 __reserved0)
   (setq _refStation (round __refStation))
   (setq _msgType (round __msgType))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:refStation
   (&optional __refStation)
   (if __refStation (setq _refStation __refStation)) _refStation)
  (:msgType
   (&optional __msgType)
   (if __msgType (setq _msgType __msgType)) _msgType)
  (:serialization-length
   ()
   (+
    ;; uint8 _version
    1
    ;; uint8 _flags
    1
    ;; uint8[2] _reserved0
    (* 1    2)
    ;; uint16 _refStation
    2
    ;; uint16 _msgType
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint8[2] _reserved0
     (princ _reserved0 s)
     ;; uint16 _refStation
       (write-word _refStation s)
     ;; uint16 _msgType
       (write-word _msgType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved0
   (setq _reserved0 (make-array 2 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 2)
   ;; uint16 _refStation
     (setq _refStation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _msgType
     (setq _msgType (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ublox_msgs::RxmRTCM :md5sum-) "86ca768ef7c0009454812a5f8c6badfc")
(setf (get ublox_msgs::RxmRTCM :datatype-) "ublox_msgs/RxmRTCM")
(setf (get ublox_msgs::RxmRTCM :definition-)
      "# RXM-RTCM (0x02 0x32)
# RTCM input status
#
# Output upon processing of an RTCM input message
# Supported on:
# - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01
# 

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 50

uint8 version                 # Message version (0x02 for this version)
uint8 flags                   # RTCM input status flags
uint8 FLAGS_CRC_FAILED = 1    # 0 when RTCM message received and passed CRC 
                              # check, 1 when failed in which case refStation
                              # and msgType might be corrupted and misleading

uint8[2] reserved0            # Reserved

uint16 refStation             # Reference station ID
uint16 msgType                # Message type

")



(provide :ublox_msgs/RxmRTCM "86ca768ef7c0009454812a5f8c6badfc")


