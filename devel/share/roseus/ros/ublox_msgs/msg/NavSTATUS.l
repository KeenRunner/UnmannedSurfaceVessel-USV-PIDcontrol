;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSTATUS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSTATUS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSTATUS")
  (make-package "UBLOX_MSGS::NAVSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavSTATUS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*MESSAGE_ID* 3)
(intern "*GPS_NO_FIX*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*GPS_NO_FIX* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*GPS_NO_FIX* 0)
(intern "*GPS_DEAD_RECKONING_ONLY*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*GPS_DEAD_RECKONING_ONLY* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*GPS_DEAD_RECKONING_ONLY* 1)
(intern "*GPS_2D_FIX*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*GPS_2D_FIX* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*GPS_2D_FIX* 2)
(intern "*GPS_3D_FIX*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*GPS_3D_FIX* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*GPS_3D_FIX* 3)
(intern "*GPS_GPS_DEAD_RECKONING_COMBINED*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*GPS_GPS_DEAD_RECKONING_COMBINED* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*GPS_GPS_DEAD_RECKONING_COMBINED* 4)
(intern "*GPS_TIME_ONLY_FIX*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*GPS_TIME_ONLY_FIX* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*GPS_TIME_ONLY_FIX* 5)
(intern "*FLAGS_GPS_FIX_OK*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FLAGS_GPS_FIX_OK* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FLAGS_GPS_FIX_OK* 1)
(intern "*FLAGS_DIFF_SOLN*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FLAGS_DIFF_SOLN* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FLAGS_DIFF_SOLN* 2)
(intern "*FLAGS_WKNSET*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FLAGS_WKNSET* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FLAGS_WKNSET* 4)
(intern "*FLAGS_TOWSET*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FLAGS_TOWSET* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FLAGS_TOWSET* 8)
(intern "*FIX_STAT_DIFF_CORR_MASK*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FIX_STAT_DIFF_CORR_MASK* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FIX_STAT_DIFF_CORR_MASK* 1)
(intern "*FIX_STAT_MAP_MATCHING_MASK*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FIX_STAT_MAP_MATCHING_MASK* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FIX_STAT_MAP_MATCHING_MASK* 192)
(intern "*MAP_MATCHING_NONE*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*MAP_MATCHING_NONE* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*MAP_MATCHING_NONE* 0)
(intern "*MAP_MATCHING_VALID*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*MAP_MATCHING_VALID* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*MAP_MATCHING_VALID* 64)
(intern "*MAP_MATCHING_USED*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*MAP_MATCHING_USED* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*MAP_MATCHING_USED* 128)
(intern "*MAP_MATCHING_DR*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*MAP_MATCHING_DR* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*MAP_MATCHING_DR* 192)
(intern "*FLAGS2_PSM_STATE_MASK*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FLAGS2_PSM_STATE_MASK* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FLAGS2_PSM_STATE_MASK* 3)
(intern "*PSM_STATE_ACQUISITION*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*PSM_STATE_ACQUISITION* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*PSM_STATE_ACQUISITION* 0)
(intern "*PSM_STATE_TRACKING*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*PSM_STATE_TRACKING* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*PSM_STATE_TRACKING* 1)
(intern "*PSM_STATE_POWER_OPTIMIZED_TRACKING*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*PSM_STATE_POWER_OPTIMIZED_TRACKING* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*PSM_STATE_POWER_OPTIMIZED_TRACKING* 2)
(intern "*PSM_STATE_INACTIVE*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*PSM_STATE_INACTIVE* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*PSM_STATE_INACTIVE* 3)
(intern "*FLAGS2_SPOOF_DET_STATE_MASK*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*FLAGS2_SPOOF_DET_STATE_MASK* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*FLAGS2_SPOOF_DET_STATE_MASK* 24)
(intern "*SPOOF_DET_STATE_UNKNOWN*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*SPOOF_DET_STATE_UNKNOWN* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*SPOOF_DET_STATE_UNKNOWN* 0)
(intern "*SPOOF_DET_STATE_NONE*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*SPOOF_DET_STATE_NONE* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*SPOOF_DET_STATE_NONE* 8)
(intern "*SPOOF_DET_STATE_SPOOFING*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*SPOOF_DET_STATE_SPOOFING* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*SPOOF_DET_STATE_SPOOFING* 16)
(intern "*SPOOF_DET_STATE_MULTIPLE*" (find-package "UBLOX_MSGS::NAVSTATUS"))
(shadow '*SPOOF_DET_STATE_MULTIPLE* (find-package "UBLOX_MSGS::NAVSTATUS"))
(defconstant ublox_msgs::NavSTATUS::*SPOOF_DET_STATE_MULTIPLE* 24)
(defclass ublox_msgs::NavSTATUS
  :super ros::object
  :slots (_iTOW _gpsFix _flags _fixStat _flags2 _ttff _msss ))

(defmethod ublox_msgs::NavSTATUS
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:gpsFix __gpsFix) 0)
    ((:flags __flags) 0)
    ((:fixStat __fixStat) 0)
    ((:flags2 __flags2) 0)
    ((:ttff __ttff) 0)
    ((:msss __msss) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _gpsFix (round __gpsFix))
   (setq _flags (round __flags))
   (setq _fixStat (round __fixStat))
   (setq _flags2 (round __flags2))
   (setq _ttff (round __ttff))
   (setq _msss (round __msss))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:gpsFix
   (&optional __gpsFix)
   (if __gpsFix (setq _gpsFix __gpsFix)) _gpsFix)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:fixStat
   (&optional __fixStat)
   (if __fixStat (setq _fixStat __fixStat)) _fixStat)
  (:flags2
   (&optional __flags2)
   (if __flags2 (setq _flags2 __flags2)) _flags2)
  (:ttff
   (&optional __ttff)
   (if __ttff (setq _ttff __ttff)) _ttff)
  (:msss
   (&optional __msss)
   (if __msss (setq _msss __msss)) _msss)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint8 _gpsFix
    1
    ;; uint8 _flags
    1
    ;; uint8 _fixStat
    1
    ;; uint8 _flags2
    1
    ;; uint32 _ttff
    4
    ;; uint32 _msss
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint8 _gpsFix
       (write-byte _gpsFix s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint8 _fixStat
       (write-byte _fixStat s)
     ;; uint8 _flags2
       (write-byte _flags2 s)
     ;; uint32 _ttff
       (write-long _ttff s)
     ;; uint32 _msss
       (write-long _msss s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _gpsFix
     (setq _gpsFix (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fixStat
     (setq _fixStat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags2
     (setq _flags2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _ttff
     (setq _ttff (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _msss
     (setq _msss (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavSTATUS :md5sum-) "68047fb8ca04a038a6b031cd1a908762")
(setf (get ublox_msgs::NavSTATUS :datatype-) "ublox_msgs/NavSTATUS")
(setf (get ublox_msgs::NavSTATUS :definition-)
      "# NAV-STATUS (0x01 0x03)
# Receiver Navigation Status
#
# See important comments concerning validity of position and velocity given in
# section Navigation Output Filters.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 3

uint32 iTOW             # GPS Millisecond time of week [ms]

uint8 gpsFix            # GPSfix Type, this value does not qualify a fix as
                        # valid and within the limits. See note on flag gpsFixOk
                        # below
uint8 GPS_NO_FIX = 0
uint8 GPS_DEAD_RECKONING_ONLY = 1
uint8 GPS_2D_FIX = 2
uint8 GPS_3D_FIX = 3
uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4
uint8 GPS_TIME_ONLY_FIX = 5

uint8 flags             # Navigation Status Flags
uint8 FLAGS_GPS_FIX_OK = 1      # position & velocity valid & within DOP & ACC 
                                # Masks
uint8 FLAGS_DIFF_SOLN = 2       # Differential corrections were applied
uint8 FLAGS_WKNSET = 4          # Week Number valid
uint8 FLAGS_TOWSET = 8          # Time of Week valid

uint8 fixStat           # Fix Status Information
uint8 FIX_STAT_DIFF_CORR_MASK = 1       # 1 = differential corrections available
# map matching status:
uint8 FIX_STAT_MAP_MATCHING_MASK = 192
uint8 MAP_MATCHING_NONE = 0      # none
uint8 MAP_MATCHING_VALID = 64    # valid but not used, i.e. map matching data 
                                 # was received, but was too old
uint8 MAP_MATCHING_USED = 128    # valid and used, map matching data was applied
uint8 MAP_MATCHING_DR = 192      # valid and used, map matching data was 
                                 # applied. In case of sensor unavailability map
                                 # matching data enables dead reckoning. 
                                 # This requires map matched latitude/longitude 
                                 # or heading data.

uint8 flags2            # further information about navigation output
# power safe mode state (Only for FW version >= 7.01; undefined otherwise)
uint8 FLAGS2_PSM_STATE_MASK = 3
uint8 PSM_STATE_ACQUISITION = 0                # ACQUISITION 
                                               # [or when psm disabled]
uint8 PSM_STATE_TRACKING = 1                   # TRACKING
uint8 PSM_STATE_POWER_OPTIMIZED_TRACKING = 2   # POWER OPTIMIZED TRACKING
uint8 PSM_STATE_INACTIVE = 3                   # INACTIVE
# Note that the spoofing state value only reflects the detector state for the 
# current navigation epoch. As spoofing can be detected most easily at the 
# transition from real signal to spoofing signal, this is also where the 
# detector is triggered the most. I.e. a value of 1 - No spoofing indicated does
# not mean that the receiver is not spoofed, it #simply states that the detector
# was not triggered in this epoch.
uint8 FLAGS2_SPOOF_DET_STATE_MASK = 24 
uint8 SPOOF_DET_STATE_UNKNOWN = 0    # Unknown or deactivated
uint8 SPOOF_DET_STATE_NONE = 8       # No spoofing indicated
uint8 SPOOF_DET_STATE_SPOOFING = 16  # Spoofing indicated
uint8 SPOOF_DET_STATE_MULTIPLE = 24  # Multiple spoofing indication

uint32 ttff             # Time to first fix (millisecond time tag) [ms]
uint32 msss             # Milliseconds since Startup / Reset [ms]

")



(provide :ublox_msgs/NavSTATUS "68047fb8ca04a038a6b031cd1a908762")


