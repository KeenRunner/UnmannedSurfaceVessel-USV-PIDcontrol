;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSAT)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSAT (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSAT")
  (make-package "UBLOX_MSGS::NAVSAT"))

(in-package "ROS")
;;//! \htmlinclude NavSAT.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVSAT"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVSAT"))
(defconstant ublox_msgs::NavSAT::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVSAT"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVSAT"))
(defconstant ublox_msgs::NavSAT::*MESSAGE_ID* 53)
(defclass ublox_msgs::NavSAT
  :super ros::object
  :slots (_iTOW _version _numSvs _reserved0 _sv ))

(defmethod ublox_msgs::NavSAT
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:version __version) 0)
    ((:numSvs __numSvs) 0)
    ((:reserved0 __reserved0) (make-array 2 :initial-element 0 :element-type :char))
    ((:sv __sv) (let (r) (dotimes (i 0) (push (instance ublox_msgs::NavSAT_SV :init) r)) r))
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _version (round __version))
   (setq _numSvs (round __numSvs))
   (setq _reserved0 __reserved0)
   (setq _sv __sv)
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:numSvs
   (&optional __numSvs)
   (if __numSvs (setq _numSvs __numSvs)) _numSvs)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:sv
   (&rest __sv)
   (if (keywordp (car __sv))
       (send* _sv __sv)
     (progn
       (if __sv (setq _sv (car __sv)))
       _sv)))
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint8 _version
    1
    ;; uint8 _numSvs
    1
    ;; uint8[2] _reserved0
    (* 1    2)
    ;; ublox_msgs/NavSAT_SV[] _sv
    (apply #'+ (send-all _sv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8 _numSvs
       (write-byte _numSvs s)
     ;; uint8[2] _reserved0
     (princ _reserved0 s)
     ;; ublox_msgs/NavSAT_SV[] _sv
     (write-long (length _sv) s)
     (dolist (elem _sv)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numSvs
     (setq _numSvs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved0
   (setq _reserved0 (make-array 2 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 2)
   ;; ublox_msgs/NavSAT_SV[] _sv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv (let (r) (dotimes (i n) (push (instance ublox_msgs::NavSAT_SV :init) r)) r))
     (dolist (elem- _sv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::NavSAT :md5sum-) "e8ea6afd23cb79e7e7385313416d9c15")
(setf (get ublox_msgs::NavSAT :datatype-) "ublox_msgs/NavSAT")
(setf (get ublox_msgs::NavSAT :definition-)
      "# NAV-SAT (0x01 0x35)
# Satellite Information
#
# This message displays information about SVs which are either known to be 
# visible or currently tracked by the receiver.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 53

uint32 iTOW                # GPS time of week of the navigation epoch. [ms]
uint8 version              # Message version (1 for this version)
uint8 numSvs               # Number of satellites
uint8[2] reserved0         # Reserved 

# start of repeated block (numSvs times)
NavSAT_SV[]  sv
# end of repeated block
================================================================================
MSG: ublox_msgs/NavSAT_SV
# see NAV-SAT message
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



(provide :ublox_msgs/NavSAT "e8ea6afd23cb79e7e7385313416d9c15")


