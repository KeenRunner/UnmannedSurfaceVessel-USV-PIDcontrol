;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgTMODE3)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgTMODE3 (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGTMODE3")
  (make-package "UBLOX_MSGS::CFGTMODE3"))

(in-package "ROS")
;;//! \htmlinclude CfgTMODE3.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGTMODE3"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGTMODE3"))
(defconstant ublox_msgs::CfgTMODE3::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGTMODE3"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGTMODE3"))
(defconstant ublox_msgs::CfgTMODE3::*MESSAGE_ID* 113)
(intern "*FLAGS_MODE_MASK*" (find-package "UBLOX_MSGS::CFGTMODE3"))
(shadow '*FLAGS_MODE_MASK* (find-package "UBLOX_MSGS::CFGTMODE3"))
(defconstant ublox_msgs::CfgTMODE3::*FLAGS_MODE_MASK* 255)
(intern "*FLAGS_MODE_DISABLED*" (find-package "UBLOX_MSGS::CFGTMODE3"))
(shadow '*FLAGS_MODE_DISABLED* (find-package "UBLOX_MSGS::CFGTMODE3"))
(defconstant ublox_msgs::CfgTMODE3::*FLAGS_MODE_DISABLED* 0)
(intern "*FLAGS_MODE_SURVEY_IN*" (find-package "UBLOX_MSGS::CFGTMODE3"))
(shadow '*FLAGS_MODE_SURVEY_IN* (find-package "UBLOX_MSGS::CFGTMODE3"))
(defconstant ublox_msgs::CfgTMODE3::*FLAGS_MODE_SURVEY_IN* 1)
(intern "*FLAGS_MODE_FIXED*" (find-package "UBLOX_MSGS::CFGTMODE3"))
(shadow '*FLAGS_MODE_FIXED* (find-package "UBLOX_MSGS::CFGTMODE3"))
(defconstant ublox_msgs::CfgTMODE3::*FLAGS_MODE_FIXED* 2)
(intern "*FLAGS_LLA*" (find-package "UBLOX_MSGS::CFGTMODE3"))
(shadow '*FLAGS_LLA* (find-package "UBLOX_MSGS::CFGTMODE3"))
(defconstant ublox_msgs::CfgTMODE3::*FLAGS_LLA* 256)
(defclass ublox_msgs::CfgTMODE3
  :super ros::object
  :slots (_version _reserved1 _flags _ecefXOrLat _ecefYOrLon _ecefZOrAlt _ecefXOrLatHP _ecefYOrLonHP _ecefZOrAltHP _reserved2 _fixedPosAcc _svinMinDur _svinAccLimit _reserved3 ))

(defmethod ublox_msgs::CfgTMODE3
  (:init
   (&key
    ((:version __version) 0)
    ((:reserved1 __reserved1) 0)
    ((:flags __flags) 0)
    ((:ecefXOrLat __ecefXOrLat) 0)
    ((:ecefYOrLon __ecefYOrLon) 0)
    ((:ecefZOrAlt __ecefZOrAlt) 0)
    ((:ecefXOrLatHP __ecefXOrLatHP) 0)
    ((:ecefYOrLonHP __ecefYOrLonHP) 0)
    ((:ecefZOrAltHP __ecefZOrAltHP) 0)
    ((:reserved2 __reserved2) 0)
    ((:fixedPosAcc __fixedPosAcc) 0)
    ((:svinMinDur __svinMinDur) 0)
    ((:svinAccLimit __svinAccLimit) 0)
    ((:reserved3 __reserved3) (make-array 8 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _reserved1 (round __reserved1))
   (setq _flags (round __flags))
   (setq _ecefXOrLat (round __ecefXOrLat))
   (setq _ecefYOrLon (round __ecefYOrLon))
   (setq _ecefZOrAlt (round __ecefZOrAlt))
   (setq _ecefXOrLatHP (round __ecefXOrLatHP))
   (setq _ecefYOrLonHP (round __ecefYOrLonHP))
   (setq _ecefZOrAltHP (round __ecefZOrAltHP))
   (setq _reserved2 (round __reserved2))
   (setq _fixedPosAcc (round __fixedPosAcc))
   (setq _svinMinDur (round __svinMinDur))
   (setq _svinAccLimit (round __svinAccLimit))
   (setq _reserved3 __reserved3)
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:ecefXOrLat
   (&optional __ecefXOrLat)
   (if __ecefXOrLat (setq _ecefXOrLat __ecefXOrLat)) _ecefXOrLat)
  (:ecefYOrLon
   (&optional __ecefYOrLon)
   (if __ecefYOrLon (setq _ecefYOrLon __ecefYOrLon)) _ecefYOrLon)
  (:ecefZOrAlt
   (&optional __ecefZOrAlt)
   (if __ecefZOrAlt (setq _ecefZOrAlt __ecefZOrAlt)) _ecefZOrAlt)
  (:ecefXOrLatHP
   (&optional __ecefXOrLatHP)
   (if __ecefXOrLatHP (setq _ecefXOrLatHP __ecefXOrLatHP)) _ecefXOrLatHP)
  (:ecefYOrLonHP
   (&optional __ecefYOrLonHP)
   (if __ecefYOrLonHP (setq _ecefYOrLonHP __ecefYOrLonHP)) _ecefYOrLonHP)
  (:ecefZOrAltHP
   (&optional __ecefZOrAltHP)
   (if __ecefZOrAltHP (setq _ecefZOrAltHP __ecefZOrAltHP)) _ecefZOrAltHP)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:fixedPosAcc
   (&optional __fixedPosAcc)
   (if __fixedPosAcc (setq _fixedPosAcc __fixedPosAcc)) _fixedPosAcc)
  (:svinMinDur
   (&optional __svinMinDur)
   (if __svinMinDur (setq _svinMinDur __svinMinDur)) _svinMinDur)
  (:svinAccLimit
   (&optional __svinAccLimit)
   (if __svinAccLimit (setq _svinAccLimit __svinAccLimit)) _svinAccLimit)
  (:reserved3
   (&optional __reserved3)
   (if __reserved3 (setq _reserved3 __reserved3)) _reserved3)
  (:serialization-length
   ()
   (+
    ;; uint8 _version
    1
    ;; uint8 _reserved1
    1
    ;; uint16 _flags
    2
    ;; int32 _ecefXOrLat
    4
    ;; int32 _ecefYOrLon
    4
    ;; int32 _ecefZOrAlt
    4
    ;; int8 _ecefXOrLatHP
    1
    ;; int8 _ecefYOrLonHP
    1
    ;; int8 _ecefZOrAltHP
    1
    ;; uint8 _reserved2
    1
    ;; uint32 _fixedPosAcc
    4
    ;; uint32 _svinMinDur
    4
    ;; uint32 _svinAccLimit
    4
    ;; uint8[8] _reserved3
    (* 1    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; uint16 _flags
       (write-word _flags s)
     ;; int32 _ecefXOrLat
       (write-long _ecefXOrLat s)
     ;; int32 _ecefYOrLon
       (write-long _ecefYOrLon s)
     ;; int32 _ecefZOrAlt
       (write-long _ecefZOrAlt s)
     ;; int8 _ecefXOrLatHP
       (write-byte _ecefXOrLatHP s)
     ;; int8 _ecefYOrLonHP
       (write-byte _ecefYOrLonHP s)
     ;; int8 _ecefZOrAltHP
       (write-byte _ecefZOrAltHP s)
     ;; uint8 _reserved2
       (write-byte _reserved2 s)
     ;; uint32 _fixedPosAcc
       (write-long _fixedPosAcc s)
     ;; uint32 _svinMinDur
       (write-long _svinMinDur s)
     ;; uint32 _svinAccLimit
       (write-long _svinAccLimit s)
     ;; uint8[8] _reserved3
     (princ _reserved3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _ecefXOrLat
     (setq _ecefXOrLat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefYOrLon
     (setq _ecefYOrLon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefZOrAlt
     (setq _ecefZOrAlt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _ecefXOrLatHP
     (setq _ecefXOrLatHP (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ecefXOrLatHP 127) (setq _ecefXOrLatHP (- _ecefXOrLatHP 256)))
   ;; int8 _ecefYOrLonHP
     (setq _ecefYOrLonHP (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ecefYOrLonHP 127) (setq _ecefYOrLonHP (- _ecefYOrLonHP 256)))
   ;; int8 _ecefZOrAltHP
     (setq _ecefZOrAltHP (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ecefZOrAltHP 127) (setq _ecefZOrAltHP (- _ecefZOrAltHP 256)))
   ;; uint8 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _fixedPosAcc
     (setq _fixedPosAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _svinMinDur
     (setq _svinMinDur (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _svinAccLimit
     (setq _svinAccLimit (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[8] _reserved3
   (setq _reserved3 (make-array 8 :element-type :char))
   (replace _reserved3 buf :start2 ptr-) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgTMODE3 :md5sum-) "818be20c97f2b940a885faaabc0d98a1")
(setf (get ublox_msgs::CfgTMODE3 :datatype-) "ublox_msgs/CfgTMODE3")
(setf (get ublox_msgs::CfgTMODE3 :definition-)
      "# CFG-TMODE3 (0x06, 0x71)
# Time Mode Settings 3
#
# Configures the receiver to be in Time Mode. The position referred to in this
# message is that of the Antenna Reference Point (ARP). See the Time Mode 
# Description for details.
# 
# Supported on:
#  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision
#    GNSS products)
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 113

uint8 version                     # Message version (0x00 for this version)
uint8 reserved1                   # Reserved

uint16 flags
uint16 FLAGS_MODE_MASK = 255      # Receiver Mode:
uint16 FLAGS_MODE_DISABLED = 0      # Disabled
uint16 FLAGS_MODE_SURVEY_IN = 1     # Survey In
uint16 FLAGS_MODE_FIXED = 2         # Fixed Mode (true ARP position required)
uint16 FLAGS_LLA = 256            # Position is given in LAT/LON/ALT 
                                  # (default is ECEF)

int32 ecefXOrLat                  # WGS84 ECEF X coordinate (or latitude) of
                                  # the ARP position, depending on flags above
                                  # [cm] or [deg / 1e-7]
int32 ecefYOrLon                  # WGS84 ECEF Y coordinate (or longitude) of
                                  # the ARP position, depending on flags above
                                  # [cm] or [deg / 1e-7]
int32 ecefZOrAlt                  # WGS84 ECEF Z coordinate (or altitude) of
                                  # the ARP position, depending on flags above
                                  # [cm]
int8 ecefXOrLatHP                 # High-precision WGS84 ECEF X coordinate (or
                                  # latitude) of the ARP position, depending on
                                  # flags above. Must be in the range -99..+99.
                                  # The precise WGS84 ECEF X coordinate in units
                                  # of cm, or the precise WGS84 ECEF latitude in
                                  # units of 1e-7 degrees, is given by
                                  # ecefXOrLat + (ecefXOrLatHP * 1e-2)
                                  # [0.1 mm] or [deg * 1e-9]
int8 ecefYOrLonHP                 # High-precision WGS84 ECEF Y coordinate (or
                                  # longitude) of the ARP position, depending on
                                  # flags above. Must be in the range -99..+99.
                                  # The precise WGS84 ECEF Y coordinate in units
                                  # of cm, or the precise WGS84 ECEF longitude 
                                  # in units of 1e-7 degrees, is given by
                                  # ecefYOrLon + (ecefYOrLonHP * 1e-2)
                                  # [0.1 mm] or [deg * 1e-9]
int8 ecefZOrAltHP                 # High-precision WGS84 ECEF Z coordinate (or
                                  # altitude) of the ARP position, depending on
                                  # flags above. Must be in the range -99..+99.
                                  # The precise WGS84 ECEF Z coordinate, or
                                  # altitude coordinate, in units of cm is given
                                  # by ecefZOrAlt + (ecefZOrAltHP * 1e-2)
                                  # [0.1 mm]
uint8 reserved2                   # Reserved

uint32 fixedPosAcc                # Fixed position 3D accuracy
                                  # [0.1 mm]
uint32 svinMinDur                 # Survey-in minimum duration
                                  # [s]
uint32 svinAccLimit               # Survey-in position accuracy limit
                                  # [0.1 mm]

uint8[8] reserved3                # Reserved

")



(provide :ublox_msgs/CfgTMODE3 "818be20c97f2b940a885faaabc0d98a1")


