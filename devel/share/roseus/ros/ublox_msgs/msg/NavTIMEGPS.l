;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavTIMEGPS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavTIMEGPS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVTIMEGPS")
  (make-package "UBLOX_MSGS::NAVTIMEGPS"))

(in-package "ROS")
;;//! \htmlinclude NavTIMEGPS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(defconstant ublox_msgs::NavTIMEGPS::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(defconstant ublox_msgs::NavTIMEGPS::*MESSAGE_ID* 32)
(intern "*VALID_TOW*" (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(shadow '*VALID_TOW* (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(defconstant ublox_msgs::NavTIMEGPS::*VALID_TOW* 1)
(intern "*VALID_WEEK*" (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(shadow '*VALID_WEEK* (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(defconstant ublox_msgs::NavTIMEGPS::*VALID_WEEK* 2)
(intern "*VALID_LEAP_S*" (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(shadow '*VALID_LEAP_S* (find-package "UBLOX_MSGS::NAVTIMEGPS"))
(defconstant ublox_msgs::NavTIMEGPS::*VALID_LEAP_S* 4)
(defclass ublox_msgs::NavTIMEGPS
  :super ros::object
  :slots (_iTOW _fTOW _week _leapS _valid _tAcc ))

(defmethod ublox_msgs::NavTIMEGPS
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:fTOW __fTOW) 0)
    ((:week __week) 0)
    ((:leapS __leapS) 0)
    ((:valid __valid) 0)
    ((:tAcc __tAcc) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _fTOW (round __fTOW))
   (setq _week (round __week))
   (setq _leapS (round __leapS))
   (setq _valid (round __valid))
   (setq _tAcc (round __tAcc))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:fTOW
   (&optional __fTOW)
   (if __fTOW (setq _fTOW __fTOW)) _fTOW)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:leapS
   (&optional __leapS)
   (if __leapS (setq _leapS __leapS)) _leapS)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:tAcc
   (&optional __tAcc)
   (if __tAcc (setq _tAcc __tAcc)) _tAcc)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; int32 _fTOW
    4
    ;; int16 _week
    2
    ;; int8 _leapS
    1
    ;; uint8 _valid
    1
    ;; uint32 _tAcc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _fTOW
       (write-long _fTOW s)
     ;; int16 _week
       (write-word _week s)
     ;; int8 _leapS
       (write-byte _leapS s)
     ;; uint8 _valid
       (write-byte _valid s)
     ;; uint32 _tAcc
       (write-long _tAcc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fTOW
     (setq _fTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _leapS
     (setq _leapS (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _leapS 127) (setq _leapS (- _leapS 256)))
   ;; uint8 _valid
     (setq _valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _tAcc
     (setq _tAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavTIMEGPS :md5sum-) "94098180ac3e5e36144a6337c1462f46")
(setf (get ublox_msgs::NavTIMEGPS :datatype-) "ublox_msgs/NavTIMEGPS")
(setf (get ublox_msgs::NavTIMEGPS :definition-)
      "# NAV-TIMEGPS (0x01 0x20)
# GPS Time Solution
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 32

uint32 iTOW             # GPS Millisecond time of week [ms]
int32 fTOW              # Fractional Nanoseconds remainder of rounded
                        # ms above, range -500000 .. 500000 [ns]
int16 week              # GPS week (GPS time)

int8 leapS              # Leap Seconds (GPS-UTC) [s]

uint8 valid             # Validity Flags
uint8 VALID_TOW = 1        # Valid Time of Week
uint8 VALID_WEEK = 2       # Valid Week Number
uint8 VALID_LEAP_S = 4     # Valid Leap Seconds

uint32 tAcc             # Time Accuracy Estimate [ns]

")



(provide :ublox_msgs/NavTIMEGPS "94098180ac3e5e36144a6337c1462f46")


