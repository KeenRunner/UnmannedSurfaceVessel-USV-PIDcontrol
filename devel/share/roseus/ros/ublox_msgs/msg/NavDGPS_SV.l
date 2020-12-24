;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavDGPS_SV)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavDGPS_SV (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVDGPS_SV")
  (make-package "UBLOX_MSGS::NAVDGPS_SV"))

(in-package "ROS")
;;//! \htmlinclude NavDGPS_SV.msg.html


(intern "*FLAGS_CHANNEL_MASK*" (find-package "UBLOX_MSGS::NAVDGPS_SV"))
(shadow '*FLAGS_CHANNEL_MASK* (find-package "UBLOX_MSGS::NAVDGPS_SV"))
(defconstant ublox_msgs::NavDGPS_SV::*FLAGS_CHANNEL_MASK* 15)
(intern "*FLAGS_DGPS*" (find-package "UBLOX_MSGS::NAVDGPS_SV"))
(shadow '*FLAGS_DGPS* (find-package "UBLOX_MSGS::NAVDGPS_SV"))
(defconstant ublox_msgs::NavDGPS_SV::*FLAGS_DGPS* 16)
(defclass ublox_msgs::NavDGPS_SV
  :super ros::object
  :slots (_svid _flags _ageC _prc _prrc ))

(defmethod ublox_msgs::NavDGPS_SV
  (:init
   (&key
    ((:svid __svid) 0)
    ((:flags __flags) 0)
    ((:ageC __ageC) 0)
    ((:prc __prc) 0.0)
    ((:prrc __prrc) 0.0)
    )
   (send-super :init)
   (setq _svid (round __svid))
   (setq _flags (round __flags))
   (setq _ageC (round __ageC))
   (setq _prc (float __prc))
   (setq _prrc (float __prrc))
   self)
  (:svid
   (&optional __svid)
   (if __svid (setq _svid __svid)) _svid)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:ageC
   (&optional __ageC)
   (if __ageC (setq _ageC __ageC)) _ageC)
  (:prc
   (&optional __prc)
   (if __prc (setq _prc __prc)) _prc)
  (:prrc
   (&optional __prrc)
   (if __prrc (setq _prrc __prrc)) _prrc)
  (:serialization-length
   ()
   (+
    ;; uint8 _svid
    1
    ;; uint8 _flags
    1
    ;; uint16 _ageC
    2
    ;; float32 _prc
    4
    ;; float32 _prrc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _svid
       (write-byte _svid s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint16 _ageC
       (write-word _ageC s)
     ;; float32 _prc
       (sys::poke _prc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prrc
       (sys::poke _prrc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _svid
     (setq _svid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _ageC
     (setq _ageC (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _prc
     (setq _prc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prrc
     (setq _prrc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavDGPS_SV :md5sum-) "c16a60aa23db6f4f1a80cf6720b95063")
(setf (get ublox_msgs::NavDGPS_SV :datatype-) "ublox_msgs/NavDGPS_SV")
(setf (get ublox_msgs::NavDGPS_SV :definition-)
      "# see message NavDGPS

uint8 svid              # Satellite ID

uint8 flags             # Bitmask / Channel Number and Usage:
uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15
                                # Channel numbers > 15 marked as 15
uint8 FLAGS_DGPS = 16           # DGPS Used for this SV

uint16 ageC             # Age of latest correction data [ms]
float32 prc             # Pseudo Range Correction [m]
float32 prrc            # Pseudo Range Rate Correction [m/s]


")



(provide :ublox_msgs/NavDGPS_SV "c16a60aa23db6f4f1a80cf6720b95063")


