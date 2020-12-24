;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavVELNED)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavVELNED (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVVELNED")
  (make-package "UBLOX_MSGS::NAVVELNED"))

(in-package "ROS")
;;//! \htmlinclude NavVELNED.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVVELNED"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVVELNED"))
(defconstant ublox_msgs::NavVELNED::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVVELNED"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVVELNED"))
(defconstant ublox_msgs::NavVELNED::*MESSAGE_ID* 18)
(defclass ublox_msgs::NavVELNED
  :super ros::object
  :slots (_iTOW _velN _velE _velD _speed _gSpeed _heading _sAcc _cAcc ))

(defmethod ublox_msgs::NavVELNED
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:velN __velN) 0)
    ((:velE __velE) 0)
    ((:velD __velD) 0)
    ((:speed __speed) 0)
    ((:gSpeed __gSpeed) 0)
    ((:heading __heading) 0)
    ((:sAcc __sAcc) 0)
    ((:cAcc __cAcc) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _velN (round __velN))
   (setq _velE (round __velE))
   (setq _velD (round __velD))
   (setq _speed (round __speed))
   (setq _gSpeed (round __gSpeed))
   (setq _heading (round __heading))
   (setq _sAcc (round __sAcc))
   (setq _cAcc (round __cAcc))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:velN
   (&optional __velN)
   (if __velN (setq _velN __velN)) _velN)
  (:velE
   (&optional __velE)
   (if __velE (setq _velE __velE)) _velE)
  (:velD
   (&optional __velD)
   (if __velD (setq _velD __velD)) _velD)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:gSpeed
   (&optional __gSpeed)
   (if __gSpeed (setq _gSpeed __gSpeed)) _gSpeed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:sAcc
   (&optional __sAcc)
   (if __sAcc (setq _sAcc __sAcc)) _sAcc)
  (:cAcc
   (&optional __cAcc)
   (if __cAcc (setq _cAcc __cAcc)) _cAcc)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; int32 _velN
    4
    ;; int32 _velE
    4
    ;; int32 _velD
    4
    ;; uint32 _speed
    4
    ;; uint32 _gSpeed
    4
    ;; int32 _heading
    4
    ;; uint32 _sAcc
    4
    ;; uint32 _cAcc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _velN
       (write-long _velN s)
     ;; int32 _velE
       (write-long _velE s)
     ;; int32 _velD
       (write-long _velD s)
     ;; uint32 _speed
       (write-long _speed s)
     ;; uint32 _gSpeed
       (write-long _gSpeed s)
     ;; int32 _heading
       (write-long _heading s)
     ;; uint32 _sAcc
       (write-long _sAcc s)
     ;; uint32 _cAcc
       (write-long _cAcc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _velN
     (setq _velN (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _velE
     (setq _velE (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _velD
     (setq _velD (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _gSpeed
     (setq _gSpeed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _heading
     (setq _heading (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sAcc
     (setq _sAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cAcc
     (setq _cAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavVELNED :md5sum-) "b03402bb86164e74f01e04bff1850150")
(setf (get ublox_msgs::NavVELNED :datatype-) "ublox_msgs/NavVELNED")
(setf (get ublox_msgs::NavVELNED :definition-)
      "# NAV-VELNED (0x01 0x12)
# Velocity Solution in NED
#
# See important comments concerning validity of velocity given in section
# Navigation Output Filters.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 18

uint32 iTOW             # GPS Millisecond time of week [ms]

int32 velN              # NED north velocity [cm/s]
int32 velE              # NED east velocity [cm/s]
int32 velD              # NED down velocity [cm/s]
uint32 speed            # Speed (3-D) [cm/s]
uint32 gSpeed           # Ground Speed (2-D) [cm/s]
int32 heading           # Heading of motion 2-D [deg / 1e-5]
uint32 sAcc             # Speed Accuracy Estimate [cm/s]
uint32 cAcc             # Course / Heading Accuracy Estimate [deg / 1e-5]

")



(provide :ublox_msgs/NavVELNED "b03402bb86164e74f01e04bff1850150")


