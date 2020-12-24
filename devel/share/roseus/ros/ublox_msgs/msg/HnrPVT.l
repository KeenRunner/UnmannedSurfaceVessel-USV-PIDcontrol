;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::HnrPVT)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'HnrPVT (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::HNRPVT")
  (make-package "UBLOX_MSGS::HNRPVT"))

(in-package "ROS")
;;//! \htmlinclude HnrPVT.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*CLASS_ID* 40)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*MESSAGE_ID* 0)
(intern "*VALID_DATE*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*VALID_DATE* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*VALID_DATE* 1)
(intern "*VALID_TIME*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*VALID_TIME* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*VALID_TIME* 2)
(intern "*VALID_FULLY_RESOLVED*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*VALID_FULLY_RESOLVED* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*VALID_FULLY_RESOLVED* 4)
(intern "*VALID_MAG*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*VALID_MAG* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*VALID_MAG* 8)
(intern "*FIX_TYPE_NO_FIX*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FIX_TYPE_NO_FIX* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FIX_TYPE_NO_FIX* 0)
(intern "*FIX_TYPE_DEAD_RECKONING_ONLY*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FIX_TYPE_DEAD_RECKONING_ONLY* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FIX_TYPE_DEAD_RECKONING_ONLY* 1)
(intern "*FIX_TYPE_2D*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FIX_TYPE_2D* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FIX_TYPE_2D* 2)
(intern "*FIX_TYPE_3D*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FIX_TYPE_3D* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FIX_TYPE_3D* 3)
(intern "*FIX_TYPE_GPS_DEAD_RECKONING_COMBINED*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FIX_TYPE_GPS_DEAD_RECKONING_COMBINED* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FIX_TYPE_GPS_DEAD_RECKONING_COMBINED* 4)
(intern "*FIX_TYPE_TIME_ONLY*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FIX_TYPE_TIME_ONLY* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FIX_TYPE_TIME_ONLY* 5)
(intern "*FLAGS_GNSS_FIX_OK*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FLAGS_GNSS_FIX_OK* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FLAGS_GNSS_FIX_OK* 1)
(intern "*FLAGS_DIFF_SOLN*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FLAGS_DIFF_SOLN* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FLAGS_DIFF_SOLN* 2)
(intern "*FLAGS_WKN_SET*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FLAGS_WKN_SET* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FLAGS_WKN_SET* 4)
(intern "*FLAGS_TOW_SET*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FLAGS_TOW_SET* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FLAGS_TOW_SET* 8)
(intern "*FLAGS_HEAD_VEH_VALID*" (find-package "UBLOX_MSGS::HNRPVT"))
(shadow '*FLAGS_HEAD_VEH_VALID* (find-package "UBLOX_MSGS::HNRPVT"))
(defconstant ublox_msgs::HnrPVT::*FLAGS_HEAD_VEH_VALID* 32)
(defclass ublox_msgs::HnrPVT
  :super ros::object
  :slots (_iTOW _year _month _day _hour _min _sec _valid _nano _gpsFix _flags _reserved0 _lon _lat _height _hMSL _gSpeed _speed _headMot _headVeh _hAcc _vAcc _sAcc _headAcc _reserved1 ))

(defmethod ublox_msgs::HnrPVT
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    ((:hour __hour) 0)
    ((:min __min) 0)
    ((:sec __sec) 0)
    ((:valid __valid) 0)
    ((:nano __nano) 0)
    ((:gpsFix __gpsFix) 0)
    ((:flags __flags) 0)
    ((:reserved0 __reserved0) (make-array 2 :initial-element 0 :element-type :char))
    ((:lon __lon) 0)
    ((:lat __lat) 0)
    ((:height __height) 0)
    ((:hMSL __hMSL) 0)
    ((:gSpeed __gSpeed) 0)
    ((:speed __speed) 0)
    ((:headMot __headMot) 0)
    ((:headVeh __headVeh) 0)
    ((:hAcc __hAcc) 0)
    ((:vAcc __vAcc) 0)
    ((:sAcc __sAcc) 0)
    ((:headAcc __headAcc) 0)
    ((:reserved1 __reserved1) (make-array 4 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   (setq _hour (round __hour))
   (setq _min (round __min))
   (setq _sec (round __sec))
   (setq _valid (round __valid))
   (setq _nano (round __nano))
   (setq _gpsFix (round __gpsFix))
   (setq _flags (round __flags))
   (setq _reserved0 __reserved0)
   (setq _lon (round __lon))
   (setq _lat (round __lat))
   (setq _height (round __height))
   (setq _hMSL (round __hMSL))
   (setq _gSpeed (round __gSpeed))
   (setq _speed (round __speed))
   (setq _headMot (round __headMot))
   (setq _headVeh (round __headVeh))
   (setq _hAcc (round __hAcc))
   (setq _vAcc (round __vAcc))
   (setq _sAcc (round __sAcc))
   (setq _headAcc (round __headAcc))
   (setq _reserved1 __reserved1)
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:nano
   (&optional __nano)
   (if __nano (setq _nano __nano)) _nano)
  (:gpsFix
   (&optional __gpsFix)
   (if __gpsFix (setq _gpsFix __gpsFix)) _gpsFix)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:hMSL
   (&optional __hMSL)
   (if __hMSL (setq _hMSL __hMSL)) _hMSL)
  (:gSpeed
   (&optional __gSpeed)
   (if __gSpeed (setq _gSpeed __gSpeed)) _gSpeed)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:headMot
   (&optional __headMot)
   (if __headMot (setq _headMot __headMot)) _headMot)
  (:headVeh
   (&optional __headVeh)
   (if __headVeh (setq _headVeh __headVeh)) _headVeh)
  (:hAcc
   (&optional __hAcc)
   (if __hAcc (setq _hAcc __hAcc)) _hAcc)
  (:vAcc
   (&optional __vAcc)
   (if __vAcc (setq _vAcc __vAcc)) _vAcc)
  (:sAcc
   (&optional __sAcc)
   (if __sAcc (setq _sAcc __sAcc)) _sAcc)
  (:headAcc
   (&optional __headAcc)
   (if __headAcc (setq _headAcc __headAcc)) _headAcc)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint16 _year
    2
    ;; uint8 _month
    1
    ;; uint8 _day
    1
    ;; uint8 _hour
    1
    ;; uint8 _min
    1
    ;; uint8 _sec
    1
    ;; uint8 _valid
    1
    ;; int32 _nano
    4
    ;; uint8 _gpsFix
    1
    ;; uint8 _flags
    1
    ;; uint8[2] _reserved0
    (* 1    2)
    ;; int32 _lon
    4
    ;; int32 _lat
    4
    ;; int32 _height
    4
    ;; int32 _hMSL
    4
    ;; int32 _gSpeed
    4
    ;; int32 _speed
    4
    ;; int32 _headMot
    4
    ;; int32 _headVeh
    4
    ;; uint32 _hAcc
    4
    ;; uint32 _vAcc
    4
    ;; uint32 _sAcc
    4
    ;; uint32 _headAcc
    4
    ;; uint8[4] _reserved1
    (* 1    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint16 _year
       (write-word _year s)
     ;; uint8 _month
       (write-byte _month s)
     ;; uint8 _day
       (write-byte _day s)
     ;; uint8 _hour
       (write-byte _hour s)
     ;; uint8 _min
       (write-byte _min s)
     ;; uint8 _sec
       (write-byte _sec s)
     ;; uint8 _valid
       (write-byte _valid s)
     ;; int32 _nano
       (write-long _nano s)
     ;; uint8 _gpsFix
       (write-byte _gpsFix s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint8[2] _reserved0
     (princ _reserved0 s)
     ;; int32 _lon
       (write-long _lon s)
     ;; int32 _lat
       (write-long _lat s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _hMSL
       (write-long _hMSL s)
     ;; int32 _gSpeed
       (write-long _gSpeed s)
     ;; int32 _speed
       (write-long _speed s)
     ;; int32 _headMot
       (write-long _headMot s)
     ;; int32 _headVeh
       (write-long _headVeh s)
     ;; uint32 _hAcc
       (write-long _hAcc s)
     ;; uint32 _vAcc
       (write-long _vAcc s)
     ;; uint32 _sAcc
       (write-long _sAcc s)
     ;; uint32 _headAcc
       (write-long _headAcc s)
     ;; uint8[4] _reserved1
     (princ _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hour
     (setq _hour (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _min
     (setq _min (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sec
     (setq _sec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _valid
     (setq _valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _nano
     (setq _nano (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _gpsFix
     (setq _gpsFix (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved0
   (setq _reserved0 (make-array 2 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 2)
   ;; int32 _lon
     (setq _lon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lat
     (setq _lat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hMSL
     (setq _hMSL (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gSpeed
     (setq _gSpeed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _headMot
     (setq _headMot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _headVeh
     (setq _headVeh (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _hAcc
     (setq _hAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _vAcc
     (setq _vAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sAcc
     (setq _sAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _headAcc
     (setq _headAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[4] _reserved1
   (setq _reserved1 (make-array 4 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::HnrPVT :md5sum-) "1803c15f4ff593453ea993864baf0f33")
(setf (get ublox_msgs::HnrPVT :datatype-) "ublox_msgs/HnrPVT")
(setf (get ublox_msgs::HnrPVT :definition-)
      "# HNR-PVT (0x28 0x00)
# High Rate Output of PVT Solution
#
# Note that during a leap second there may be more (or less) than 60 seconds in
# a minute; see the description of leap seconds for details.
#
# This message provides the position, velocity and time solution with high 
# output rate.
#
# Supported on ADR and UDR products.
#
uint8 CLASS_ID = 40
uint8 MESSAGE_ID = 0

uint32 iTOW             # GPS Millisecond time of week [ms]
uint16 year             # Year (UTC)
uint8 month             # Month, range 1..12 (UTC)
uint8 day               # Day of month, range 1..31 (UTC)
uint8 hour              # Hour of day, range 0..23 (UTC)
uint8 min               # Minute of hour, range 0..59 (UTC)
uint8 sec               # Seconds of minute, range 0..60 (UTC)

uint8 valid             # Validity flags
uint8 VALID_DATE = 1            # Valid UTC Date
uint8 VALID_TIME = 2            # Valid 
uint8 VALID_FULLY_RESOLVED = 4  # UTC time of day has been fully resolved 
                                # (no seconds uncertainty)
uint8 VALID_MAG = 8             # Valid Magnetic Declination

int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)

uint8 gpsFix            # GPS fix Type, range 0..5
uint8 FIX_TYPE_NO_FIX = 0
uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1
uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, 
                                                # constant altitude assumed
uint8 FIX_TYPE_3D = 3
uint8 FIX_TYPE_GPS_DEAD_RECKONING_COMBINED = 4  # GPS + Dead reckoning
uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix 

uint8 flags             # Fix Status Flags
uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks
uint8 FLAGS_DIFF_SOLN = 2            # DGPS used
uint8 FLAGS_WKN_SET = 4              # Valid GPS week number
uint8 FLAGS_TOW_SET = 8              # Valid GPS time of week (iTOW & fTOW)
uint8 FLAGS_HEAD_VEH_VALID = 32      # heading of vehicle is valid

uint8[2] reserved0      # Reserved

int32 lon               # Longitude [deg / 1e-7]
int32 lat               # Latitude [deg / 1e-7]
int32 height            # Height above Ellipsoid [mm]
int32 hMSL              # Height above mean sea level [mm]

int32 gSpeed            # Ground Speed (2-D) [mm/s]
int32 speed             # Speed (3-D) [mm/s]

int32 headMot           # Heading of motion (2-D) [deg / 1e-5]
int32 headVeh           # Heading of vehicle (2-D) [deg / 1e-5]

uint32 hAcc             # Horizontal Accuracy Estimate [mm]
uint32 vAcc             # Vertical Accuracy Estimate [mm]
uint32 sAcc             # Speed Accuracy Estimate [mm/s]
uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) 
                        # [deg / 1e-5]

uint8[4] reserved1      # Reserved
")



(provide :ublox_msgs/HnrPVT "1803c15f4ff593453ea993864baf0f33")


