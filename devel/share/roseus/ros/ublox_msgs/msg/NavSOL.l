;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSOL)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSOL (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSOL")
  (make-package "UBLOX_MSGS::NAVSOL"))

(in-package "ROS")
;;//! \htmlinclude NavSOL.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*MESSAGE_ID* 6)
(intern "*GPS_NO_FIX*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*GPS_NO_FIX* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*GPS_NO_FIX* 0)
(intern "*GPS_DEAD_RECKONING_ONLY*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*GPS_DEAD_RECKONING_ONLY* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*GPS_DEAD_RECKONING_ONLY* 1)
(intern "*GPS_2D_FIX*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*GPS_2D_FIX* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*GPS_2D_FIX* 2)
(intern "*GPS_3D_FIX*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*GPS_3D_FIX* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*GPS_3D_FIX* 3)
(intern "*GPS_GPS_DEAD_RECKONING_COMBINED*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*GPS_GPS_DEAD_RECKONING_COMBINED* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*GPS_GPS_DEAD_RECKONING_COMBINED* 4)
(intern "*GPS_TIME_ONLY_FIX*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*GPS_TIME_ONLY_FIX* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*GPS_TIME_ONLY_FIX* 5)
(intern "*FLAGS_GPS_FIX_OK*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*FLAGS_GPS_FIX_OK* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*FLAGS_GPS_FIX_OK* 1)
(intern "*FLAGS_DIFF_SOLN*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*FLAGS_DIFF_SOLN* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*FLAGS_DIFF_SOLN* 2)
(intern "*FLAGS_WKNSET*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*FLAGS_WKNSET* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*FLAGS_WKNSET* 4)
(intern "*FLAGS_TOWSET*" (find-package "UBLOX_MSGS::NAVSOL"))
(shadow '*FLAGS_TOWSET* (find-package "UBLOX_MSGS::NAVSOL"))
(defconstant ublox_msgs::NavSOL::*FLAGS_TOWSET* 8)
(defclass ublox_msgs::NavSOL
  :super ros::object
  :slots (_iTOW _fTOW _week _gpsFix _flags _ecefX _ecefY _ecefZ _pAcc _ecefVX _ecefVY _ecefVZ _sAcc _pDOP _reserved1 _numSV _reserved2 ))

(defmethod ublox_msgs::NavSOL
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:fTOW __fTOW) 0)
    ((:week __week) 0)
    ((:gpsFix __gpsFix) 0)
    ((:flags __flags) 0)
    ((:ecefX __ecefX) 0)
    ((:ecefY __ecefY) 0)
    ((:ecefZ __ecefZ) 0)
    ((:pAcc __pAcc) 0)
    ((:ecefVX __ecefVX) 0)
    ((:ecefVY __ecefVY) 0)
    ((:ecefVZ __ecefVZ) 0)
    ((:sAcc __sAcc) 0)
    ((:pDOP __pDOP) 0)
    ((:reserved1 __reserved1) 0)
    ((:numSV __numSV) 0)
    ((:reserved2 __reserved2) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _fTOW (round __fTOW))
   (setq _week (round __week))
   (setq _gpsFix (round __gpsFix))
   (setq _flags (round __flags))
   (setq _ecefX (round __ecefX))
   (setq _ecefY (round __ecefY))
   (setq _ecefZ (round __ecefZ))
   (setq _pAcc (round __pAcc))
   (setq _ecefVX (round __ecefVX))
   (setq _ecefVY (round __ecefVY))
   (setq _ecefVZ (round __ecefVZ))
   (setq _sAcc (round __sAcc))
   (setq _pDOP (round __pDOP))
   (setq _reserved1 (round __reserved1))
   (setq _numSV (round __numSV))
   (setq _reserved2 (round __reserved2))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:fTOW
   (&optional __fTOW)
   (if __fTOW (setq _fTOW __fTOW)) _fTOW)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:gpsFix
   (&optional __gpsFix)
   (if __gpsFix (setq _gpsFix __gpsFix)) _gpsFix)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:ecefX
   (&optional __ecefX)
   (if __ecefX (setq _ecefX __ecefX)) _ecefX)
  (:ecefY
   (&optional __ecefY)
   (if __ecefY (setq _ecefY __ecefY)) _ecefY)
  (:ecefZ
   (&optional __ecefZ)
   (if __ecefZ (setq _ecefZ __ecefZ)) _ecefZ)
  (:pAcc
   (&optional __pAcc)
   (if __pAcc (setq _pAcc __pAcc)) _pAcc)
  (:ecefVX
   (&optional __ecefVX)
   (if __ecefVX (setq _ecefVX __ecefVX)) _ecefVX)
  (:ecefVY
   (&optional __ecefVY)
   (if __ecefVY (setq _ecefVY __ecefVY)) _ecefVY)
  (:ecefVZ
   (&optional __ecefVZ)
   (if __ecefVZ (setq _ecefVZ __ecefVZ)) _ecefVZ)
  (:sAcc
   (&optional __sAcc)
   (if __sAcc (setq _sAcc __sAcc)) _sAcc)
  (:pDOP
   (&optional __pDOP)
   (if __pDOP (setq _pDOP __pDOP)) _pDOP)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:numSV
   (&optional __numSV)
   (if __numSV (setq _numSV __numSV)) _numSV)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; int32 _fTOW
    4
    ;; int16 _week
    2
    ;; uint8 _gpsFix
    1
    ;; uint8 _flags
    1
    ;; int32 _ecefX
    4
    ;; int32 _ecefY
    4
    ;; int32 _ecefZ
    4
    ;; uint32 _pAcc
    4
    ;; int32 _ecefVX
    4
    ;; int32 _ecefVY
    4
    ;; int32 _ecefVZ
    4
    ;; uint32 _sAcc
    4
    ;; uint16 _pDOP
    2
    ;; uint8 _reserved1
    1
    ;; uint8 _numSV
    1
    ;; uint32 _reserved2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _fTOW
       (write-long _fTOW s)
     ;; int16 _week
       (write-word _week s)
     ;; uint8 _gpsFix
       (write-byte _gpsFix s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; int32 _ecefX
       (write-long _ecefX s)
     ;; int32 _ecefY
       (write-long _ecefY s)
     ;; int32 _ecefZ
       (write-long _ecefZ s)
     ;; uint32 _pAcc
       (write-long _pAcc s)
     ;; int32 _ecefVX
       (write-long _ecefVX s)
     ;; int32 _ecefVY
       (write-long _ecefVY s)
     ;; int32 _ecefVZ
       (write-long _ecefVZ s)
     ;; uint32 _sAcc
       (write-long _sAcc s)
     ;; uint16 _pDOP
       (write-word _pDOP s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; uint8 _numSV
       (write-byte _numSV s)
     ;; uint32 _reserved2
       (write-long _reserved2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fTOW
     (setq _fTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _gpsFix
     (setq _gpsFix (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _ecefX
     (setq _ecefX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefY
     (setq _ecefY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefZ
     (setq _ecefZ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pAcc
     (setq _pAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefVX
     (setq _ecefVX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefVY
     (setq _ecefVY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ecefVZ
     (setq _ecefVZ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sAcc
     (setq _sAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _pDOP
     (setq _pDOP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numSV
     (setq _numSV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavSOL :md5sum-) "fbabf6cbcea22aacacf0f8dbb86da71f")
(setf (get ublox_msgs::NavSOL :datatype-) "ublox_msgs/NavSOL")
(setf (get ublox_msgs::NavSOL :definition-)
      "# NAV-SOL (0x01 0x06)
# Navigation Solution Information
#
# This message combines Position, velocity and time solution in ECEF, including 
# accuracy figures
# This message has only been retained for backwards compatibility; users are 
# recommended to use the UBX-NAV-PVT message in preference.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 6

uint32 iTOW             # GPS Millisecond time of week [ms]
int32 fTOW              # Fractional Nanoseconds remainder of rounded
                        # ms above, range -500000 .. 500000 [ns]
int16 week              # GPS week (GPS time)

uint8 gpsFix            # GPSfix Type, range 0..5
uint8 GPS_NO_FIX = 0
uint8 GPS_DEAD_RECKONING_ONLY = 1
uint8 GPS_2D_FIX = 2
uint8 GPS_3D_FIX = 3
uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4
uint8 GPS_TIME_ONLY_FIX = 5

uint8 flags             # Fix Status Flags
uint8 FLAGS_GPS_FIX_OK = 1      # Fix within limits i.e. within DOP & ACC Masks
uint8 FLAGS_DIFF_SOLN = 2       # DGPS used
uint8 FLAGS_WKNSET = 4          # Week Number valid
uint8 FLAGS_TOWSET = 8          # Time of Week valid

int32 ecefX             # ECEF X coordinate [cm]
int32 ecefY             # ECEF Y coordinate [cm]
int32 ecefZ             # ECEF Z coordinate [cm]
uint32 pAcc             # 3D Position Accuracy Estimate [cm]
int32 ecefVX            # ECEF X velocity [cm/s]
int32 ecefVY            # ECEF Y velocity [cm/s]
int32 ecefVZ            # ECEF Z velocity [cm/s]
uint32 sAcc             # Speed Accuracy Estimate [cm/s]
uint16 pDOP             # Position DOP [1 / 0.01]
uint8 reserved1         # Reserved
uint8 numSV             # Number of SVs used in Nav Solution
uint32 reserved2        # Reserved

")



(provide :ublox_msgs/NavSOL "fbabf6cbcea22aacacf0f8dbb86da71f")


