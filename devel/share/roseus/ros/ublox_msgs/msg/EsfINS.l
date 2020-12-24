;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::EsfINS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'EsfINS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::ESFINS")
  (make-package "UBLOX_MSGS::ESFINS"))

(in-package "ROS")
;;//! \htmlinclude EsfINS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*CLASS_ID* 16)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*MESSAGE_ID* 21)
(intern "*BITFIELD0_VERSION*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*BITFIELD0_VERSION* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*BITFIELD0_VERSION* 255)
(intern "*BITFIELD0_X_ANG_RATE_VALID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*BITFIELD0_X_ANG_RATE_VALID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*BITFIELD0_X_ANG_RATE_VALID* 256)
(intern "*BITFIELD0_Y_ANG_RATE_VALID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*BITFIELD0_Y_ANG_RATE_VALID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*BITFIELD0_Y_ANG_RATE_VALID* 512)
(intern "*BITFIELD0_Z_ANG_RATE_VALID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*BITFIELD0_Z_ANG_RATE_VALID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*BITFIELD0_Z_ANG_RATE_VALID* 1024)
(intern "*BITFIELD0_X_ACCEL_VALID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*BITFIELD0_X_ACCEL_VALID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*BITFIELD0_X_ACCEL_VALID* 2048)
(intern "*BITFIELD0_Y_ACCEL_VALID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*BITFIELD0_Y_ACCEL_VALID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*BITFIELD0_Y_ACCEL_VALID* 4096)
(intern "*BITFIELD0_Z_ACCEL_VALID*" (find-package "UBLOX_MSGS::ESFINS"))
(shadow '*BITFIELD0_Z_ACCEL_VALID* (find-package "UBLOX_MSGS::ESFINS"))
(defconstant ublox_msgs::EsfINS::*BITFIELD0_Z_ACCEL_VALID* 8192)
(defclass ublox_msgs::EsfINS
  :super ros::object
  :slots (_bitfield0 _reserved1 _iTOW _xAngRate _yAngRate _zAngRate _xAccel _yAccel _zAccel ))

(defmethod ublox_msgs::EsfINS
  (:init
   (&key
    ((:bitfield0 __bitfield0) 0)
    ((:reserved1 __reserved1) (make-array 4 :initial-element 0 :element-type :char))
    ((:iTOW __iTOW) 0)
    ((:xAngRate __xAngRate) 0)
    ((:yAngRate __yAngRate) 0)
    ((:zAngRate __zAngRate) 0)
    ((:xAccel __xAccel) 0)
    ((:yAccel __yAccel) 0)
    ((:zAccel __zAccel) 0)
    )
   (send-super :init)
   (setq _bitfield0 (round __bitfield0))
   (setq _reserved1 __reserved1)
   (setq _iTOW (round __iTOW))
   (setq _xAngRate (round __xAngRate))
   (setq _yAngRate (round __yAngRate))
   (setq _zAngRate (round __zAngRate))
   (setq _xAccel (round __xAccel))
   (setq _yAccel (round __yAccel))
   (setq _zAccel (round __zAccel))
   self)
  (:bitfield0
   (&optional __bitfield0)
   (if __bitfield0 (setq _bitfield0 __bitfield0)) _bitfield0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:xAngRate
   (&optional __xAngRate)
   (if __xAngRate (setq _xAngRate __xAngRate)) _xAngRate)
  (:yAngRate
   (&optional __yAngRate)
   (if __yAngRate (setq _yAngRate __yAngRate)) _yAngRate)
  (:zAngRate
   (&optional __zAngRate)
   (if __zAngRate (setq _zAngRate __zAngRate)) _zAngRate)
  (:xAccel
   (&optional __xAccel)
   (if __xAccel (setq _xAccel __xAccel)) _xAccel)
  (:yAccel
   (&optional __yAccel)
   (if __yAccel (setq _yAccel __yAccel)) _yAccel)
  (:zAccel
   (&optional __zAccel)
   (if __zAccel (setq _zAccel __zAccel)) _zAccel)
  (:serialization-length
   ()
   (+
    ;; uint32 _bitfield0
    4
    ;; uint8[4] _reserved1
    (* 1    4)
    ;; uint32 _iTOW
    4
    ;; int32 _xAngRate
    4
    ;; int32 _yAngRate
    4
    ;; int32 _zAngRate
    4
    ;; int32 _xAccel
    4
    ;; int32 _yAccel
    4
    ;; int32 _zAccel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _bitfield0
       (write-long _bitfield0 s)
     ;; uint8[4] _reserved1
     (princ _reserved1 s)
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _xAngRate
       (write-long _xAngRate s)
     ;; int32 _yAngRate
       (write-long _yAngRate s)
     ;; int32 _zAngRate
       (write-long _zAngRate s)
     ;; int32 _xAccel
       (write-long _xAccel s)
     ;; int32 _yAccel
       (write-long _yAccel s)
     ;; int32 _zAccel
       (write-long _zAccel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _bitfield0
     (setq _bitfield0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[4] _reserved1
   (setq _reserved1 (make-array 4 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 4)
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _xAngRate
     (setq _xAngRate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _yAngRate
     (setq _yAngRate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _zAngRate
     (setq _zAngRate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _xAccel
     (setq _xAccel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _yAccel
     (setq _yAccel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _zAccel
     (setq _zAccel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::EsfINS :md5sum-) "975d05e9503737524d7e47a42cb9fff1")
(setf (get ublox_msgs::EsfINS :datatype-) "ublox_msgs/EsfINS")
(setf (get ublox_msgs::EsfINS :definition-)
      "# ESF-INS (0x10 0x15)
# Vehicle dynamics information
# 
# This message outputs information about vehicle dynamics computed by the 
# Inertial Navigation System (INS) during ESF-based navigation.
# For ADR products, the output dynamics information (angular rates and 
# accelerations) is expressed with respect to the vehicle-frame.
# For UDR products, the output dynamics information (angular rates and 
# accelerations) is expressed with respect to the body-frame.
#

uint8 CLASS_ID = 16
uint8 MESSAGE_ID = 21

uint32 bitfield0      # Bitfield (see graphic below)
uint32 BITFIELD0_VERSION = 255            # Message version (1 for this version).
uint32 BITFIELD0_X_ANG_RATE_VALID = 256   # Compensated x-axis angular rate data 
                                          # validity flag
uint32 BITFIELD0_Y_ANG_RATE_VALID = 512   # Compensated y-axis angular rate data 
                                          # validity flag
uint32 BITFIELD0_Z_ANG_RATE_VALID = 1024  # Compensated z-axis angular rate data 
                                          # validity flag
uint32 BITFIELD0_X_ACCEL_VALID = 2048     # Compensated x-axis acceleration data 
                                          # validity flag
uint32 BITFIELD0_Y_ACCEL_VALID = 4096     # Compensated y-axis acceleration data 
                                          # validity flag
uint32 BITFIELD0_Z_ACCEL_VALID = 8192     # Compensated z-axis acceleration data 
                                          # validity flag

uint8[4] reserved1    # Reserved

uint32 iTOW           # GPS time of week of the navigation epoch [ms]
int32 xAngRate        # Compensated x-axis angular rate [deg/s / 1e-3]
int32 yAngRate        # Compensated y-axis angular rate [deg/s / 1e-3]
int32 zAngRate        # Compensated z-axis angular rate [deg/s / 1e-3]
int32 xAccel          # Compensated x-axis acceleration (gravity-free) [mg]
int32 yAccel          # Compensated y-axis acceleration (gravity-free) [mg]
int32 zAccel          # Compensated z-axis acceleration (gravity-free) [mg]
")



(provide :ublox_msgs/EsfINS "975d05e9503737524d7e47a42cb9fff1")


