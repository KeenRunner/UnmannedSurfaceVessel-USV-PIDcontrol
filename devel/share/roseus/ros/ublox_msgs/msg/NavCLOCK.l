;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavCLOCK)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavCLOCK (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVCLOCK")
  (make-package "UBLOX_MSGS::NAVCLOCK"))

(in-package "ROS")
;;//! \htmlinclude NavCLOCK.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVCLOCK"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVCLOCK"))
(defconstant ublox_msgs::NavCLOCK::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVCLOCK"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVCLOCK"))
(defconstant ublox_msgs::NavCLOCK::*MESSAGE_ID* 34)
(defclass ublox_msgs::NavCLOCK
  :super ros::object
  :slots (_iTOW _clkB _clkD _tAcc _fAcc ))

(defmethod ublox_msgs::NavCLOCK
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:clkB __clkB) 0)
    ((:clkD __clkD) 0)
    ((:tAcc __tAcc) 0)
    ((:fAcc __fAcc) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _clkB (round __clkB))
   (setq _clkD (round __clkD))
   (setq _tAcc (round __tAcc))
   (setq _fAcc (round __fAcc))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:clkB
   (&optional __clkB)
   (if __clkB (setq _clkB __clkB)) _clkB)
  (:clkD
   (&optional __clkD)
   (if __clkD (setq _clkD __clkD)) _clkD)
  (:tAcc
   (&optional __tAcc)
   (if __tAcc (setq _tAcc __tAcc)) _tAcc)
  (:fAcc
   (&optional __fAcc)
   (if __fAcc (setq _fAcc __fAcc)) _fAcc)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; int32 _clkB
    4
    ;; int32 _clkD
    4
    ;; uint32 _tAcc
    4
    ;; uint32 _fAcc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _clkB
       (write-long _clkB s)
     ;; int32 _clkD
       (write-long _clkD s)
     ;; uint32 _tAcc
       (write-long _tAcc s)
     ;; uint32 _fAcc
       (write-long _fAcc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _clkB
     (setq _clkB (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _clkD
     (setq _clkD (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _tAcc
     (setq _tAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fAcc
     (setq _fAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavCLOCK :md5sum-) "a9acfdf2e7ac2bf086926ae4e6a182a0")
(setf (get ublox_msgs::NavCLOCK :datatype-) "ublox_msgs/NavCLOCK")
(setf (get ublox_msgs::NavCLOCK :definition-)
      "# NAV-CLOCK (0x01 0x22)
# Clock Solution
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 34

uint32 iTOW             # GPS Millisecond Time of week [ms]

int32 clkB              # Clock bias in nanoseconds [ns]
int32 clkD              # Clock drift in nanoseconds per second [ns/s]
uint32 tAcc             # Time Accuracy Estimate [ns]
uint32 fAcc             # Frequency Accuracy Estimate [ps/s]

")



(provide :ublox_msgs/NavCLOCK "a9acfdf2e7ac2bf086926ae4e6a182a0")


