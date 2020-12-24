;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavPOSLLH)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavPOSLLH (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVPOSLLH")
  (make-package "UBLOX_MSGS::NAVPOSLLH"))

(in-package "ROS")
;;//! \htmlinclude NavPOSLLH.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVPOSLLH"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVPOSLLH"))
(defconstant ublox_msgs::NavPOSLLH::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVPOSLLH"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVPOSLLH"))
(defconstant ublox_msgs::NavPOSLLH::*MESSAGE_ID* 2)
(defclass ublox_msgs::NavPOSLLH
  :super ros::object
  :slots (_iTOW _lon _lat _height _hMSL _hAcc _vAcc ))

(defmethod ublox_msgs::NavPOSLLH
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:lon __lon) 0)
    ((:lat __lat) 0)
    ((:height __height) 0)
    ((:hMSL __hMSL) 0)
    ((:hAcc __hAcc) 0)
    ((:vAcc __vAcc) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _lon (round __lon))
   (setq _lat (round __lat))
   (setq _height (round __height))
   (setq _hMSL (round __hMSL))
   (setq _hAcc (round __hAcc))
   (setq _vAcc (round __vAcc))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:hMSL
   (&optional __hMSL)
   (if __hMSL (setq _hMSL __hMSL)) _hMSL)
  (:hAcc
   (&optional __hAcc)
   (if __hAcc (setq _hAcc __hAcc)) _hAcc)
  (:vAcc
   (&optional __vAcc)
   (if __vAcc (setq _vAcc __vAcc)) _vAcc)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; int32 _lon
    4
    ;; int32 _lat
    4
    ;; int32 _height
    4
    ;; int32 _hMSL
    4
    ;; uint32 _hAcc
    4
    ;; uint32 _vAcc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _lon
       (write-long _lon s)
     ;; int32 _lat
       (write-long _lat s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _hMSL
       (write-long _hMSL s)
     ;; uint32 _hAcc
       (write-long _hAcc s)
     ;; uint32 _vAcc
       (write-long _vAcc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lon
     (setq _lon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lat
     (setq _lat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hMSL
     (setq _hMSL (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _hAcc
     (setq _hAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _vAcc
     (setq _vAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavPOSLLH :md5sum-) "01aab2c75cd9f8c402a0689e82f04f01")
(setf (get ublox_msgs::NavPOSLLH :datatype-) "ublox_msgs/NavPOSLLH")
(setf (get ublox_msgs::NavPOSLLH :definition-)
      "# NAV-POSLLH (0x01 0x02)
# Geodetic Position Solution
#
# See important comments concerning validity of position given in section
# Navigation Output Filters.
# This message outputs the Geodetic position in the currently selected 
# Ellipsoid. The default is the WGS84 Ellipsoid, but can be changed with the
# message CFG-DAT.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 2

uint32 iTOW             # GPS Millisecond Time of Week [ms]

int32 lon               # Longitude [deg / 1e-7]
int32 lat               # Latitude [deg / 1e-7]
int32 height            # Height above Ellipsoid [mm]
int32 hMSL              # Height above mean sea level [mm]
uint32 hAcc             # Horizontal Accuracy Estimate [mm]
uint32 vAcc             # Vertical Accuracy Estimate [mm]

")



(provide :ublox_msgs/NavPOSLLH "01aab2c75cd9f8c402a0689e82f04f01")


