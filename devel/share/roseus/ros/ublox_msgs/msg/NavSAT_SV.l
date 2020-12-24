;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSAT_SV)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSAT_SV (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSAT_SV")
  (make-package "UBLOX_MSGS::NAVSAT_SV"))

(in-package "ROS")
;;//! \htmlinclude NavSAT_SV.msg.html


(intern "*FLAGS_QUALITY_IND_MASK*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_QUALITY_IND_MASK* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_QUALITY_IND_MASK* 7)
(intern "*QUALITY_IND_NO_SIGNAL*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_NO_SIGNAL* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_NO_SIGNAL* 0)
(intern "*QUALITY_IND_SEARCHING_SIGNAL*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_SEARCHING_SIGNAL* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_SEARCHING_SIGNAL* 1)
(intern "*QUALITY_IND_SIGNAL_ACQUIRED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_SIGNAL_ACQUIRED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_SIGNAL_ACQUIRED* 2)
(intern "*QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE* 3)
(intern "*QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC* 4)
(intern "*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1* 5)
(intern "*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2* 6)
(intern "*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3* 7)
(intern "*FLAGS_SV_USED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_SV_USED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_SV_USED* 8)
(intern "*FLAGS_HEALTH_MASK*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_HEALTH_MASK* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_HEALTH_MASK* 48)
(intern "*HEALTH_UNKNOWN*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*HEALTH_UNKNOWN* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*HEALTH_UNKNOWN* 0)
(intern "*HEALTH_HEALTHY*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*HEALTH_HEALTHY* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*HEALTH_HEALTHY* 1)
(intern "*HEALTH_UNHEALTHY*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*HEALTH_UNHEALTHY* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*HEALTH_UNHEALTHY* 2)
(intern "*FLAGS_DIFF_CORR*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_DIFF_CORR* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_DIFF_CORR* 64)
(intern "*FLAGS_SMOOTHED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_SMOOTHED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_SMOOTHED* 128)
(intern "*FLAGS_ORBIT_SOURCE_MASK*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_ORBIT_SOURCE_MASK* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_ORBIT_SOURCE_MASK* 1792)
(intern "*ORBIT_SOURCE_UNAVAILABLE*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_UNAVAILABLE* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_UNAVAILABLE* 0)
(intern "*ORBIT_SOURCE_EPH*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_EPH* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_EPH* 256)
(intern "*ORBIT_SOURCE_ALM*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_ALM* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_ALM* 512)
(intern "*ORBIT_SOURCE_ASSIST_OFFLINE*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_ASSIST_OFFLINE* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_ASSIST_OFFLINE* 768)
(intern "*ORBIT_SOURCE_ASSIST_AUTONOMOUS*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_ASSIST_AUTONOMOUS* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_ASSIST_AUTONOMOUS* 1024)
(intern "*ORBIT_SOURCE_OTHER1*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_OTHER1* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_OTHER1* 1280)
(intern "*ORBIT_SOURCE_OTHER2*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_OTHER2* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_OTHER2* 1536)
(intern "*ORBIT_SOURCE_OTHER3*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*ORBIT_SOURCE_OTHER3* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*ORBIT_SOURCE_OTHER3* 1792)
(intern "*FLAGS_EPH_AVAIL*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_EPH_AVAIL* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_EPH_AVAIL* 2048)
(intern "*FLAGS_ALM_AVAIL*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_ALM_AVAIL* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_ALM_AVAIL* 4096)
(intern "*FLAGS_ANO_AVAIL*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_ANO_AVAIL* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_ANO_AVAIL* 8192)
(intern "*FLAGS_AOP_AVAIL*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_AOP_AVAIL* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_AOP_AVAIL* 16384)
(intern "*FLAGS_SBAS_CORR_USED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_SBAS_CORR_USED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_SBAS_CORR_USED* 65536)
(intern "*FLAGS_RTCM_CORR_USED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_RTCM_CORR_USED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_RTCM_CORR_USED* 131072)
(intern "*FLAGS_PR_CORR_USED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_PR_CORR_USED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_PR_CORR_USED* 1048576)
(intern "*FLAGS_CR_CORR_USED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_CR_CORR_USED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_CR_CORR_USED* 2097152)
(intern "*FLAGS_DO_CORR_USED*" (find-package "UBLOX_MSGS::NAVSAT_SV"))
(shadow '*FLAGS_DO_CORR_USED* (find-package "UBLOX_MSGS::NAVSAT_SV"))
(defconstant ublox_msgs::NavSAT_SV::*FLAGS_DO_CORR_USED* 4194304)
(defclass ublox_msgs::NavSAT_SV
  :super ros::object
  :slots (_gnssId _svId _cno _elev _azim _prRes _flags ))

(defmethod ublox_msgs::NavSAT_SV
  (:init
   (&key
    ((:gnssId __gnssId) 0)
    ((:svId __svId) 0)
    ((:cno __cno) 0)
    ((:elev __elev) 0)
    ((:azim __azim) 0)
    ((:prRes __prRes) 0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _gnssId (round __gnssId))
   (setq _svId (round __svId))
   (setq _cno (round __cno))
   (setq _elev (round __elev))
   (setq _azim (round __azim))
   (setq _prRes (round __prRes))
   (setq _flags (round __flags))
   self)
  (:gnssId
   (&optional __gnssId)
   (if __gnssId (setq _gnssId __gnssId)) _gnssId)
  (:svId
   (&optional __svId)
   (if __svId (setq _svId __svId)) _svId)
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
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; uint8 _gnssId
    1
    ;; uint8 _svId
    1
    ;; uint8 _cno
    1
    ;; int8 _elev
    1
    ;; int16 _azim
    2
    ;; int16 _prRes
    2
    ;; uint32 _flags
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gnssId
       (write-byte _gnssId s)
     ;; uint8 _svId
       (write-byte _svId s)
     ;; uint8 _cno
       (write-byte _cno s)
     ;; int8 _elev
       (write-byte _elev s)
     ;; int16 _azim
       (write-word _azim s)
     ;; int16 _prRes
       (write-word _prRes s)
     ;; uint32 _flags
       (write-long _flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gnssId
     (setq _gnssId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svId
     (setq _svId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cno
     (setq _cno (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _elev
     (setq _elev (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _elev 127) (setq _elev (- _elev 256)))
   ;; int16 _azim
     (setq _azim (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _prRes
     (setq _prRes (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _flags
     (setq _flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavSAT_SV :md5sum-) "902ea92ca9ebf53188dcf1cdef64a9a1")
(setf (get ublox_msgs::NavSAT_SV :datatype-) "ublox_msgs/NavSAT_SV")
(setf (get ublox_msgs::NavSAT_SV :definition-)
      "# see NAV-SAT message
#

uint8 gnssId      # GNSS identifier
uint8 svId        # Satellite identifier

uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz
int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]
int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range 
                  # [deg]
int16 prRes       # Pseudo range residual [0.1 m]

uint32 flags      # Bitmask
uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:
uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal
uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal
uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired
uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but 
                                                    # unusable
uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time 
                                                    # synchronized
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 1
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 2
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 3
# Note: Since IMES signals are not time synchronized, a channel tracking an IMES 
# signal can never reach a quality indicator value of higher than 3.
uint32 FLAGS_SV_USED = 8                      # whether SV is currently being 
                                              # used for navigation
uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:
uint32 HEALTH_UNKNOWN = 0                       # unknown
uint32 HEALTH_HEALTHY = 1                       # healthy
uint32 HEALTH_UNHEALTHY = 2                     # unhealthy
uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction 
                                              # data is available for this SV
uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed 
                                              # pseudorange used
uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:
uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is 
                                              # available for this SV
uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used
uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used
uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is 
                                                # used
uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is 
                                                # used
uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is 
                                                # used
uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is 
                                                # used
uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is 
                                                # used
uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available 
                                              # for this SV
uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for 
                                              # this SV
uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data 
                                              # is available for this SV
uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous 
                                              # data is available for this SV
uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have 
                                              # been used for this SV
uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have 
                                              # been used for this SV
uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections 
                                              # have been used for this SV
uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range 
                                              # corrections have been used for 
                                              # this SV
uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) 
                                              # corrections have been used for 
                                              # this SV
")



(provide :ublox_msgs/NavSAT_SV "902ea92ca9ebf53188dcf1cdef64a9a1")


