;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSVINFO_SV)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSVINFO_SV (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSVINFO_SV")
  (make-package "UBLOX_MSGS::NAVSVINFO_SV"))

(in-package "ROS")
;;//! \htmlinclude NavSVINFO_SV.msg.html


(intern "*FLAGS_SV_USED*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_SV_USED* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_SV_USED* 1)
(intern "*FLAGS_DIFF_CORR*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_DIFF_CORR* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_DIFF_CORR* 2)
(intern "*FLAGS_ORBIT_AVAIL*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_ORBIT_AVAIL* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_ORBIT_AVAIL* 4)
(intern "*FLAGS_ORBIT_EPH*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_ORBIT_EPH* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_ORBIT_EPH* 8)
(intern "*FLAGS_UNHEALTHY*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_UNHEALTHY* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_UNHEALTHY* 16)
(intern "*FLAGS_ORBIT_ALM*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_ORBIT_ALM* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_ORBIT_ALM* 32)
(intern "*FLAGS_ORBIT_AOP*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_ORBIT_AOP* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_ORBIT_AOP* 64)
(intern "*FLAGS_SMOOTHED*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*FLAGS_SMOOTHED* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*FLAGS_SMOOTHED* 128)
(intern "*QUALITY_IDLE*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_IDLE* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_IDLE* 0)
(intern "*QUALITY_SEARCHING*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_SEARCHING* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_SEARCHING* 1)
(intern "*QUALITY_ACQUIRED*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_ACQUIRED* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_ACQUIRED* 2)
(intern "*QUALITY_DETECTED*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_DETECTED* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_DETECTED* 3)
(intern "*QUALITY_CODE_LOCK*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_CODE_LOCK* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_CODE_LOCK* 4)
(intern "*QUALITY_CODE_AND_CARRIER_LOCKED1*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_CODE_AND_CARRIER_LOCKED1* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_CODE_AND_CARRIER_LOCKED1* 5)
(intern "*QUALITY_CODE_AND_CARRIER_LOCKED2*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_CODE_AND_CARRIER_LOCKED2* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_CODE_AND_CARRIER_LOCKED2* 6)
(intern "*QUALITY_CODE_AND_CARRIER_LOCKED3*" (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(shadow '*QUALITY_CODE_AND_CARRIER_LOCKED3* (find-package "UBLOX_MSGS::NAVSVINFO_SV"))
(defconstant ublox_msgs::NavSVINFO_SV::*QUALITY_CODE_AND_CARRIER_LOCKED3* 7)
(defclass ublox_msgs::NavSVINFO_SV
  :super ros::object
  :slots (_chn _svid _flags _quality _cno _elev _azim _prRes ))

(defmethod ublox_msgs::NavSVINFO_SV
  (:init
   (&key
    ((:chn __chn) 0)
    ((:svid __svid) 0)
    ((:flags __flags) 0)
    ((:quality __quality) 0)
    ((:cno __cno) 0)
    ((:elev __elev) 0)
    ((:azim __azim) 0)
    ((:prRes __prRes) 0)
    )
   (send-super :init)
   (setq _chn (round __chn))
   (setq _svid (round __svid))
   (setq _flags (round __flags))
   (setq _quality (round __quality))
   (setq _cno (round __cno))
   (setq _elev (round __elev))
   (setq _azim (round __azim))
   (setq _prRes (round __prRes))
   self)
  (:chn
   (&optional __chn)
   (if __chn (setq _chn __chn)) _chn)
  (:svid
   (&optional __svid)
   (if __svid (setq _svid __svid)) _svid)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:cno
   (&optional __cno)
   (if __cno (setq _cno __cno)) _cno)
  (:elev
   (&optional __elev)
   (if __elev (setq _elev __elev)) _elev)
  (:azim
   (&optional __azim)
   (if __azim (setq _azim __azim)) _azim)
  (:prRes
   (&optional __prRes)
   (if __prRes (setq _prRes __prRes)) _prRes)
  (:serialization-length
   ()
   (+
    ;; uint8 _chn
    1
    ;; uint8 _svid
    1
    ;; uint8 _flags
    1
    ;; uint8 _quality
    1
    ;; uint8 _cno
    1
    ;; int8 _elev
    1
    ;; int16 _azim
    2
    ;; int32 _prRes
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _chn
       (write-byte _chn s)
     ;; uint8 _svid
       (write-byte _svid s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint8 _quality
       (write-byte _quality s)
     ;; uint8 _cno
       (write-byte _cno s)
     ;; int8 _elev
       (write-byte _elev s)
     ;; int16 _azim
       (write-word _azim s)
     ;; int32 _prRes
       (write-long _prRes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _chn
     (setq _chn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svid
     (setq _svid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cno
     (setq _cno (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _elev
     (setq _elev (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _elev 127) (setq _elev (- _elev 256)))
   ;; int16 _azim
     (setq _azim (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _prRes
     (setq _prRes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavSVINFO_SV :md5sum-) "fd3d8150f431e87f504da9aafff163a1")
(setf (get ublox_msgs::NavSVINFO_SV :datatype-) "ublox_msgs/NavSVINFO_SV")
(setf (get ublox_msgs::NavSVINFO_SV :definition-)
      "# see message NavSVINFO
#

uint8 chn             # Channel number, 255 for SVs not assigned to a channel
uint8 svid            # Satellite ID

uint8 flags           # Bitmask
uint8 FLAGS_SV_USED = 1                     # SV is used for navigation
uint8 FLAGS_DIFF_CORR = 2                   # Differential correction data 
                                            # is available for this SV
uint8 FLAGS_ORBIT_AVAIL = 4                 # Orbit information is available for 
                                            # this SV (Ephemeris or Almanach)
uint8 FLAGS_ORBIT_EPH = 8                   # Orbit information is Ephemeris
uint8 FLAGS_UNHEALTHY = 16                  # SV is unhealthy / shall not be 
                                            # used
uint8 FLAGS_ORBIT_ALM = 32                  # Orbit information is Almanac Plus
uint8 FLAGS_ORBIT_AOP = 64                  # Orbit information is AssistNow 
                                            # Autonomous
uint8 FLAGS_SMOOTHED = 128                  # Carrier smoothed pseudorange used

uint8 quality         # Bitfield
# qualityInd: Signal Quality indicator (range 0..7). The following list shows 
# the meaning of the different QI values:
# Note: Since IMES signals are not time synchronized, a channel tracking an IMES
# signal can never reach a quality indicator value of higher than 3.
uint8 QUALITY_IDLE = 0                      # This channel is idle
uint8 QUALITY_SEARCHING = 1                 # Channel is searching
uint8 QUALITY_ACQUIRED = 2                   # Signal acquired
uint8 QUALITY_DETECTED = 3                  # Signal detected but unusable
uint8 QUALITY_CODE_LOCK = 4                 # Code Lock on Signal
uint8 QUALITY_CODE_AND_CARRIER_LOCKED1 = 5  # Code and Carrier locked 
                                            # and time synchronized
uint8 QUALITY_CODE_AND_CARRIER_LOCKED2 = 6  # Code and Carrier locked 
                                            # and time synchronized
uint8 QUALITY_CODE_AND_CARRIER_LOCKED3 = 7  # Code and Carrier locked 
                                            # and time synchronized

uint8 cno             # Carrier to Noise Ratio (Signal Strength) [dBHz]
int8 elev             # Elevation in integer degrees [deg]
int16 azim            # Azimuth in integer degrees [deg]
int32 prRes           # Pseudo range residual in centimetres [cm]

")



(provide :ublox_msgs/NavSVINFO_SV "fd3d8150f431e87f504da9aafff163a1")


