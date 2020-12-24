;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavVELECEF)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavVELECEF (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVVELECEF")
  (make-package "UBLOX_MSGS::NAVVELECEF"))

(in-package "ROS")
;;//! \htmlinclude NavVELECEF.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVVELECEF"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVVELECEF"))
(defconstant ublox_msgs::NavVELECEF::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVVELECEF"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVVELECEF"))
(defconstant ublox_msgs::NavVELECEF::*MESSAGE_ID* 17)
(defclass ublox_msgs::NavVELECEF
  :super ros::object
  :slots (_iTOW _ecefVX _ecefVY _ecefVZ _sAcc ))

(defmethod ublox_msgs::NavVELECEF
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:ecefVX __ecefVX) 0)
    ((:ecefVY __ecefVY) 0)
    ((:ecefVZ __ecefVZ) 0)
    ((:sAcc __sAcc) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _ecefVX (round __ecefVX))
   (setq _ecefVY (round __ecefVY))
   (setq _ecefVZ (round __ecefVZ))
   (setq _sAcc (round __sAcc))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:ecefVX
   (&optional __ecefVX)
   (if __ecefVX (setq _ecefVX __ecefVX)) _ecefVX)
  (:ecefVY
   (&optional __ecefVY)
   (if __ecefVY (setq _ecefVY __ecefVY)) _ecefVY)
  (:ecefVZ
   (&optional __ecefVZ)
   (if __ecefVZ (setq _ecefVZ __ecefVZ)) _ecefVZ)
  (:sAcc
   (&optional __sAcc)
   (if __sAcc (setq _sAcc __sAcc)) _sAcc)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; int32 _ecefVX
    4
    ;; int32 _ecefVY
    4
    ;; int32 _ecefVZ
    4
    ;; uint32 _sAcc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _ecefVX
       (write-long _ecefVX s)
     ;; int32 _ecefVY
       (write-long _ecefVY s)
     ;; int32 _ecefVZ
       (write-long _ecefVZ s)
     ;; uint32 _sAcc
       (write-long _sAcc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefVX
     (setq _ecefVX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefVY
     (setq _ecefVY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefVZ
     (setq _ecefVZ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sAcc
     (setq _sAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavVELECEF :md5sum-) "97299f597364a39a6c0e96ed2ee4e702")
(setf (get ublox_msgs::NavVELECEF :datatype-) "ublox_msgs/NavVELECEF")
(setf (get ublox_msgs::NavVELECEF :definition-)
      "# NAV-VELECEF (0x01 0x11)
# Velocity Solution in ECEF
#
# See important comments concerning validity of velocity given in section
# Navigation Output Filters.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 17

uint32 iTOW             # GPS Millisecond time of week [ms]

int32 ecefVX            # ECEF X velocity [cm/s]
int32 ecefVY            # ECEF Y velocity [cm/s]
int32 ecefVZ            # ECEF Z velocity [cm/s]
uint32 sAcc             # Speed Accuracy Estimate [cm/s]

")



(provide :ublox_msgs/NavVELECEF "97299f597364a39a6c0e96ed2ee4e702")


