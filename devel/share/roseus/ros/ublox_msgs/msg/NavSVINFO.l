;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSVINFO)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSVINFO (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSVINFO")
  (make-package "UBLOX_MSGS::NAVSVINFO"))

(in-package "ROS")
;;//! \htmlinclude NavSVINFO.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVSVINFO"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVSVINFO"))
(defconstant ublox_msgs::NavSVINFO::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVSVINFO"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVSVINFO"))
(defconstant ublox_msgs::NavSVINFO::*MESSAGE_ID* 48)
(intern "*CHIPGEN_ANTARIS*" (find-package "UBLOX_MSGS::NAVSVINFO"))
(shadow '*CHIPGEN_ANTARIS* (find-package "UBLOX_MSGS::NAVSVINFO"))
(defconstant ublox_msgs::NavSVINFO::*CHIPGEN_ANTARIS* 0)
(intern "*CHIPGEN_UBLOX5*" (find-package "UBLOX_MSGS::NAVSVINFO"))
(shadow '*CHIPGEN_UBLOX5* (find-package "UBLOX_MSGS::NAVSVINFO"))
(defconstant ublox_msgs::NavSVINFO::*CHIPGEN_UBLOX5* 1)
(intern "*CHIPGEN_UBLOX6*" (find-package "UBLOX_MSGS::NAVSVINFO"))
(shadow '*CHIPGEN_UBLOX6* (find-package "UBLOX_MSGS::NAVSVINFO"))
(defconstant ublox_msgs::NavSVINFO::*CHIPGEN_UBLOX6* 2)
(intern "*CHIPGEN_UBLOX7*" (find-package "UBLOX_MSGS::NAVSVINFO"))
(shadow '*CHIPGEN_UBLOX7* (find-package "UBLOX_MSGS::NAVSVINFO"))
(defconstant ublox_msgs::NavSVINFO::*CHIPGEN_UBLOX7* 3)
(intern "*CHIPGEN_UBLOX8*" (find-package "UBLOX_MSGS::NAVSVINFO"))
(shadow '*CHIPGEN_UBLOX8* (find-package "UBLOX_MSGS::NAVSVINFO"))
(defconstant ublox_msgs::NavSVINFO::*CHIPGEN_UBLOX8* 4)
(defclass ublox_msgs::NavSVINFO
  :super ros::object
  :slots (_iTOW _numCh _globalFlags _reserved2 _sv ))

(defmethod ublox_msgs::NavSVINFO
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:numCh __numCh) 0)
    ((:globalFlags __globalFlags) 0)
    ((:reserved2 __reserved2) 0)
    ((:sv __sv) (let (r) (dotimes (i 0) (push (instance ublox_msgs::NavSVINFO_SV :init) r)) r))
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _numCh (round __numCh))
   (setq _globalFlags (round __globalFlags))
   (setq _reserved2 (round __reserved2))
   (setq _sv __sv)
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:numCh
   (&optional __numCh)
   (if __numCh (setq _numCh __numCh)) _numCh)
  (:globalFlags
   (&optional __globalFlags)
   (if __globalFlags (setq _globalFlags __globalFlags)) _globalFlags)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
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
    ;; uint8 _numCh
    1
    ;; uint8 _globalFlags
    1
    ;; uint16 _reserved2
    2
    ;; ublox_msgs/NavSVINFO_SV[] _sv
    (apply #'+ (send-all _sv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint8 _numCh
       (write-byte _numCh s)
     ;; uint8 _globalFlags
       (write-byte _globalFlags s)
     ;; uint16 _reserved2
       (write-word _reserved2 s)
     ;; ublox_msgs/NavSVINFO_SV[] _sv
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
   ;; uint8 _numCh
     (setq _numCh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _globalFlags
     (setq _globalFlags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ublox_msgs/NavSVINFO_SV[] _sv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv (let (r) (dotimes (i n) (push (instance ublox_msgs::NavSVINFO_SV :init) r)) r))
     (dolist (elem- _sv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::NavSVINFO :md5sum-) "869d73cea8ef4943b3f757dcb81282ea")
(setf (get ublox_msgs::NavSVINFO :datatype-) "ublox_msgs/NavSVINFO")
(setf (get ublox_msgs::NavSVINFO :definition-)
      "# NAV-SVINFO (0x01 0x30)
# Space Vehicle Information
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 48

uint32 iTOW             # GPS Millisecond time of week [ms]

uint8 numCh             # Number of channels

uint8 globalFlags       # Bitmask
# Chip Hardware generation flags
uint8 CHIPGEN_ANTARIS = 0   # Antaris, Antaris 4
uint8 CHIPGEN_UBLOX5 = 1    # u-blox 5
uint8 CHIPGEN_UBLOX6 = 2    # u-blox 6
uint8 CHIPGEN_UBLOX7 = 3    # u-blox 7
uint8 CHIPGEN_UBLOX8 = 4    # u-blox 8 / u-blox M8

uint16 reserved2        # Reserved

NavSVINFO_SV[] sv

================================================================================
MSG: ublox_msgs/NavSVINFO_SV
# see message NavSVINFO
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



(provide :ublox_msgs/NavSVINFO "869d73cea8ef4943b3f757dcb81282ea")


