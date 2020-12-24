;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavDOP)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavDOP (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVDOP")
  (make-package "UBLOX_MSGS::NAVDOP"))

(in-package "ROS")
;;//! \htmlinclude NavDOP.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVDOP"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVDOP"))
(defconstant ublox_msgs::NavDOP::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVDOP"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVDOP"))
(defconstant ublox_msgs::NavDOP::*MESSAGE_ID* 4)
(defclass ublox_msgs::NavDOP
  :super ros::object
  :slots (_iTOW _gDOP _pDOP _tDOP _vDOP _hDOP _nDOP _eDOP ))

(defmethod ublox_msgs::NavDOP
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:gDOP __gDOP) 0)
    ((:pDOP __pDOP) 0)
    ((:tDOP __tDOP) 0)
    ((:vDOP __vDOP) 0)
    ((:hDOP __hDOP) 0)
    ((:nDOP __nDOP) 0)
    ((:eDOP __eDOP) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _gDOP (round __gDOP))
   (setq _pDOP (round __pDOP))
   (setq _tDOP (round __tDOP))
   (setq _vDOP (round __vDOP))
   (setq _hDOP (round __hDOP))
   (setq _nDOP (round __nDOP))
   (setq _eDOP (round __eDOP))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:gDOP
   (&optional __gDOP)
   (if __gDOP (setq _gDOP __gDOP)) _gDOP)
  (:pDOP
   (&optional __pDOP)
   (if __pDOP (setq _pDOP __pDOP)) _pDOP)
  (:tDOP
   (&optional __tDOP)
   (if __tDOP (setq _tDOP __tDOP)) _tDOP)
  (:vDOP
   (&optional __vDOP)
   (if __vDOP (setq _vDOP __vDOP)) _vDOP)
  (:hDOP
   (&optional __hDOP)
   (if __hDOP (setq _hDOP __hDOP)) _hDOP)
  (:nDOP
   (&optional __nDOP)
   (if __nDOP (setq _nDOP __nDOP)) _nDOP)
  (:eDOP
   (&optional __eDOP)
   (if __eDOP (setq _eDOP __eDOP)) _eDOP)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint16 _gDOP
    2
    ;; uint16 _pDOP
    2
    ;; uint16 _tDOP
    2
    ;; uint16 _vDOP
    2
    ;; uint16 _hDOP
    2
    ;; uint16 _nDOP
    2
    ;; uint16 _eDOP
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint16 _gDOP
       (write-word _gDOP s)
     ;; uint16 _pDOP
       (write-word _pDOP s)
     ;; uint16 _tDOP
       (write-word _tDOP s)
     ;; uint16 _vDOP
       (write-word _vDOP s)
     ;; uint16 _hDOP
       (write-word _hDOP s)
     ;; uint16 _nDOP
       (write-word _nDOP s)
     ;; uint16 _eDOP
       (write-word _eDOP s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _gDOP
     (setq _gDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pDOP
     (setq _pDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _tDOP
     (setq _tDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _vDOP
     (setq _vDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _hDOP
     (setq _hDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _nDOP
     (setq _nDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _eDOP
     (setq _eDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ublox_msgs::NavDOP :md5sum-) "19fe2210fc48e52c1c14b7d2c567407f")
(setf (get ublox_msgs::NavDOP :datatype-) "ublox_msgs/NavDOP")
(setf (get ublox_msgs::NavDOP :definition-)
      "# NAV-DOP (0x01 0x04)
# Dilution of precision
#
# - DOP values are dimensionless.
# - All DOP values are scaled by a factor of 100. If the unit transmits a value 
#   of e.g. 156, the DOP value is 1.56.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 4

uint32 iTOW             # GPS Millisecond Time of Week [ms]

uint16 gDOP             # Geometric DOP [1 / 0.01]
uint16 pDOP             # Position DOP  [1 / 0.01]
uint16 tDOP             # Time DOP [1 / 0.01]
uint16 vDOP             # Vertical DOP [1 / 0.01]
uint16 hDOP             # Horizontal DOP [1 / 0.01]
uint16 nDOP             # Northing DOP [1 / 0.01]
uint16 eDOP             # Easting DOP [1 / 0.01]

")



(provide :ublox_msgs/NavDOP "19fe2210fc48e52c1c14b7d2c567407f")


