;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavPOSECEF)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavPOSECEF (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVPOSECEF")
  (make-package "UBLOX_MSGS::NAVPOSECEF"))

(in-package "ROS")
;;//! \htmlinclude NavPOSECEF.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVPOSECEF"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVPOSECEF"))
(defconstant ublox_msgs::NavPOSECEF::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVPOSECEF"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVPOSECEF"))
(defconstant ublox_msgs::NavPOSECEF::*MESSAGE_ID* 1)
(defclass ublox_msgs::NavPOSECEF
  :super ros::object
  :slots (_iTOW _ecefX _ecefY _ecefZ _pAcc ))

(defmethod ublox_msgs::NavPOSECEF
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:ecefX __ecefX) 0)
    ((:ecefY __ecefY) 0)
    ((:ecefZ __ecefZ) 0)
    ((:pAcc __pAcc) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _ecefX (round __ecefX))
   (setq _ecefY (round __ecefY))
   (setq _ecefZ (round __ecefZ))
   (setq _pAcc (round __pAcc))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:ecefX
   (&optional __ecefX)
   (if __ecefX (setq _ecefX __ecefX)) _ecefX)
  (:ecefY
   (&optional __ecefY)
   (if __ecefY (setq _ecefY __ecefY)) _ecefY)
  (:ecefZ
   (&optional __ecefZ)
   (if __ecefZ (setq _ecefZ __ecefZ)) _ecefZ)
  (:pAcc
   (&optional __pAcc)
   (if __pAcc (setq _pAcc __pAcc)) _pAcc)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; int32 _ecefX
    4
    ;; int32 _ecefY
    4
    ;; int32 _ecefZ
    4
    ;; uint32 _pAcc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _ecefX
       (write-long _ecefX s)
     ;; int32 _ecefY
       (write-long _ecefY s)
     ;; int32 _ecefZ
       (write-long _ecefZ s)
     ;; uint32 _pAcc
       (write-long _pAcc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefX
     (setq _ecefX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefY
     (setq _ecefY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefZ
     (setq _ecefZ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pAcc
     (setq _pAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavPOSECEF :md5sum-) "6f1f4f9473d5586f7fa1427a3c53cee9")
(setf (get ublox_msgs::NavPOSECEF :datatype-) "ublox_msgs/NavPOSECEF")
(setf (get ublox_msgs::NavPOSECEF :definition-)
      "# NAV-POSECEF (0x01 0x01)
# Position Solution in ECEF
#
# See important comments concerning validity of position given in section
# Navigation Output Filters.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 1

uint32 iTOW             # GPS Millisecond Time of Week [ms]

int32 ecefX             # ECEF X coordinate [cm]
int32 ecefY             # ECEF Y coordinate [cm]
int32 ecefZ             # ECEF Z coordinate [cm]
uint32 pAcc             # Position Accuracy Estimate [cm]

")



(provide :ublox_msgs/NavPOSECEF "6f1f4f9473d5586f7fa1427a3c53cee9")


