;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::AidHUI)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'AidHUI (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::AIDHUI")
  (make-package "UBLOX_MSGS::AIDHUI"))

(in-package "ROS")
;;//! \htmlinclude AidHUI.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::AIDHUI"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::AIDHUI"))
(defconstant ublox_msgs::AidHUI::*CLASS_ID* 11)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::AIDHUI"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::AIDHUI"))
(defconstant ublox_msgs::AidHUI::*MESSAGE_ID* 2)
(intern "*FLAGS_HEALTH*" (find-package "UBLOX_MSGS::AIDHUI"))
(shadow '*FLAGS_HEALTH* (find-package "UBLOX_MSGS::AIDHUI"))
(defconstant ublox_msgs::AidHUI::*FLAGS_HEALTH* 1)
(intern "*FLAGS_UTC*" (find-package "UBLOX_MSGS::AIDHUI"))
(shadow '*FLAGS_UTC* (find-package "UBLOX_MSGS::AIDHUI"))
(defconstant ublox_msgs::AidHUI::*FLAGS_UTC* 2)
(intern "*FLAGS_KLOB*" (find-package "UBLOX_MSGS::AIDHUI"))
(shadow '*FLAGS_KLOB* (find-package "UBLOX_MSGS::AIDHUI"))
(defconstant ublox_msgs::AidHUI::*FLAGS_KLOB* 4)
(defclass ublox_msgs::AidHUI
  :super ros::object
  :slots (_health _utcA0 _utcA1 _utcTOW _utcWNT _utcLS _utcWNF _utcDN _utcLSF _utcSpare _klobA0 _klobA1 _klobA2 _klobA3 _klobB0 _klobB1 _klobB2 _klobB3 _flags ))

(defmethod ublox_msgs::AidHUI
  (:init
   (&key
    ((:health __health) 0)
    ((:utcA0 __utcA0) 0.0)
    ((:utcA1 __utcA1) 0.0)
    ((:utcTOW __utcTOW) 0)
    ((:utcWNT __utcWNT) 0)
    ((:utcLS __utcLS) 0)
    ((:utcWNF __utcWNF) 0)
    ((:utcDN __utcDN) 0)
    ((:utcLSF __utcLSF) 0)
    ((:utcSpare __utcSpare) 0)
    ((:klobA0 __klobA0) 0.0)
    ((:klobA1 __klobA1) 0.0)
    ((:klobA2 __klobA2) 0.0)
    ((:klobA3 __klobA3) 0.0)
    ((:klobB0 __klobB0) 0.0)
    ((:klobB1 __klobB1) 0.0)
    ((:klobB2 __klobB2) 0.0)
    ((:klobB3 __klobB3) 0.0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _health (round __health))
   (setq _utcA0 (float __utcA0))
   (setq _utcA1 (float __utcA1))
   (setq _utcTOW (round __utcTOW))
   (setq _utcWNT (round __utcWNT))
   (setq _utcLS (round __utcLS))
   (setq _utcWNF (round __utcWNF))
   (setq _utcDN (round __utcDN))
   (setq _utcLSF (round __utcLSF))
   (setq _utcSpare (round __utcSpare))
   (setq _klobA0 (float __klobA0))
   (setq _klobA1 (float __klobA1))
   (setq _klobA2 (float __klobA2))
   (setq _klobA3 (float __klobA3))
   (setq _klobB0 (float __klobB0))
   (setq _klobB1 (float __klobB1))
   (setq _klobB2 (float __klobB2))
   (setq _klobB3 (float __klobB3))
   (setq _flags (round __flags))
   self)
  (:health
   (&optional __health)
   (if __health (setq _health __health)) _health)
  (:utcA0
   (&optional __utcA0)
   (if __utcA0 (setq _utcA0 __utcA0)) _utcA0)
  (:utcA1
   (&optional __utcA1)
   (if __utcA1 (setq _utcA1 __utcA1)) _utcA1)
  (:utcTOW
   (&optional __utcTOW)
   (if __utcTOW (setq _utcTOW __utcTOW)) _utcTOW)
  (:utcWNT
   (&optional __utcWNT)
   (if __utcWNT (setq _utcWNT __utcWNT)) _utcWNT)
  (:utcLS
   (&optional __utcLS)
   (if __utcLS (setq _utcLS __utcLS)) _utcLS)
  (:utcWNF
   (&optional __utcWNF)
   (if __utcWNF (setq _utcWNF __utcWNF)) _utcWNF)
  (:utcDN
   (&optional __utcDN)
   (if __utcDN (setq _utcDN __utcDN)) _utcDN)
  (:utcLSF
   (&optional __utcLSF)
   (if __utcLSF (setq _utcLSF __utcLSF)) _utcLSF)
  (:utcSpare
   (&optional __utcSpare)
   (if __utcSpare (setq _utcSpare __utcSpare)) _utcSpare)
  (:klobA0
   (&optional __klobA0)
   (if __klobA0 (setq _klobA0 __klobA0)) _klobA0)
  (:klobA1
   (&optional __klobA1)
   (if __klobA1 (setq _klobA1 __klobA1)) _klobA1)
  (:klobA2
   (&optional __klobA2)
   (if __klobA2 (setq _klobA2 __klobA2)) _klobA2)
  (:klobA3
   (&optional __klobA3)
   (if __klobA3 (setq _klobA3 __klobA3)) _klobA3)
  (:klobB0
   (&optional __klobB0)
   (if __klobB0 (setq _klobB0 __klobB0)) _klobB0)
  (:klobB1
   (&optional __klobB1)
   (if __klobB1 (setq _klobB1 __klobB1)) _klobB1)
  (:klobB2
   (&optional __klobB2)
   (if __klobB2 (setq _klobB2 __klobB2)) _klobB2)
  (:klobB3
   (&optional __klobB3)
   (if __klobB3 (setq _klobB3 __klobB3)) _klobB3)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; uint32 _health
    4
    ;; float64 _utcA0
    8
    ;; float64 _utcA1
    8
    ;; int32 _utcTOW
    4
    ;; int16 _utcWNT
    2
    ;; int16 _utcLS
    2
    ;; int16 _utcWNF
    2
    ;; int16 _utcDN
    2
    ;; int16 _utcLSF
    2
    ;; int16 _utcSpare
    2
    ;; float32 _klobA0
    4
    ;; float32 _klobA1
    4
    ;; float32 _klobA2
    4
    ;; float32 _klobA3
    4
    ;; float32 _klobB0
    4
    ;; float32 _klobB1
    4
    ;; float32 _klobB2
    4
    ;; float32 _klobB3
    4
    ;; uint32 _flags
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _health
       (write-long _health s)
     ;; float64 _utcA0
       (sys::poke _utcA0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utcA1
       (sys::poke _utcA1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _utcTOW
       (write-long _utcTOW s)
     ;; int16 _utcWNT
       (write-word _utcWNT s)
     ;; int16 _utcLS
       (write-word _utcLS s)
     ;; int16 _utcWNF
       (write-word _utcWNF s)
     ;; int16 _utcDN
       (write-word _utcDN s)
     ;; int16 _utcLSF
       (write-word _utcLSF s)
     ;; int16 _utcSpare
       (write-word _utcSpare s)
     ;; float32 _klobA0
       (sys::poke _klobA0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _klobA1
       (sys::poke _klobA1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _klobA2
       (sys::poke _klobA2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _klobA3
       (sys::poke _klobA3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _klobB0
       (sys::poke _klobB0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _klobB1
       (sys::poke _klobB1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _klobB2
       (sys::poke _klobB2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _klobB3
       (sys::poke _klobB3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _flags
       (write-long _flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _health
     (setq _health (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _utcA0
     (setq _utcA0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utcA1
     (setq _utcA1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _utcTOW
     (setq _utcTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _utcWNT
     (setq _utcWNT (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _utcLS
     (setq _utcLS (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _utcWNF
     (setq _utcWNF (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _utcDN
     (setq _utcDN (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _utcLSF
     (setq _utcLSF (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _utcSpare
     (setq _utcSpare (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _klobA0
     (setq _klobA0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _klobA1
     (setq _klobA1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _klobA2
     (setq _klobA2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _klobA3
     (setq _klobA3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _klobB0
     (setq _klobB0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _klobB1
     (setq _klobB1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _klobB2
     (setq _klobB2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _klobB3
     (setq _klobB3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _flags
     (setq _flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::AidHUI :md5sum-) "60cd4ce940333cb9b38edd447085ce5c")
(setf (get ublox_msgs::AidHUI :datatype-) "ublox_msgs/AidHUI")
(setf (get ublox_msgs::AidHUI :definition-)
      "# AID-HUI (0x0B 0x02)
# GPS Health, UTC and ionosphere parameters
#
# All UBX-AID messages are deprecated; use UBX-MGA messages instead.
# This message contains a health bit mask, UTC time and Klobuchar parameters. For more
# information on these parameters, please see the ICD-GPS-200 documentation.

uint8 CLASS_ID = 11
uint8 MESSAGE_ID = 2

uint32  health          # Bitmask, every bit represents a GPS SV (1-32). 
                        # If the bit is set the SV is healthy.
float64 utcA0           # UTC - parameter A0
float64 utcA1           # UTC - parameter A1
int32   utcTOW          # UTC - reference time of week
int16   utcWNT          # UTC - reference week number
int16   utcLS           # UTC - time difference due to leap seconds before event
int16   utcWNF          # UTC - week number when next leap second event occurs
int16   utcDN           # UTC - day of week when next leap second event occurs
int16   utcLSF          # UTC - time difference due to leap seconds after event
int16   utcSpare        # UTC - Spare to ensure structure is a multiple of 4 
                        # bytes
float32 klobA0          # Klobuchar - alpha 0 [s]
float32 klobA1          # Klobuchar - alpha 1 [s/semicircle]
float32 klobA2          # Klobuchar - alpha 2 [s/semicircle^2]
float32 klobA3          # Klobuchar - alpha 3 [s/semicircle^3]
float32 klobB0          # Klobuchar - beta 0  [s]
float32 klobB1          # Klobuchar - beta 1  [s/semicircle]
float32 klobB2          # Klobuchar - beta 2  [s/semicircle^2]
float32 klobB3          # Klobuchar - beta 3  [s/semicircle^3]
uint32 flags            # flags
uint32 FLAGS_HEALTH = 1     # Healthmask field in this message is valid
uint32 FLAGS_UTC = 2        # UTC parameter fields in this message are valid
uint32 FLAGS_KLOB = 4       # Klobuchar parameter fields in this message are 
                            # valid

")



(provide :ublox_msgs/AidHUI "60cd4ce940333cb9b38edd447085ce5c")


