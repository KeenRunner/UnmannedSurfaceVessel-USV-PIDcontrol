;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavTIMEUTC)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavTIMEUTC (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVTIMEUTC")
  (make-package "UBLOX_MSGS::NAVTIMEUTC"))

(in-package "ROS")
;;//! \htmlinclude NavTIMEUTC.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*MESSAGE_ID* 33)
(intern "*VALID_TOW*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*VALID_TOW* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*VALID_TOW* 1)
(intern "*VALID_WKN*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*VALID_WKN* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*VALID_WKN* 2)
(intern "*VALID_UTC*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*VALID_UTC* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*VALID_UTC* 4)
(intern "*VALID_UTC_STANDARD_MASK*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*VALID_UTC_STANDARD_MASK* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*VALID_UTC_STANDARD_MASK* 240)
(intern "*UTC_STANDARD_NOT_AVAILABLE*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_NOT_AVAILABLE* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_NOT_AVAILABLE* 0)
(intern "*UTC_STANDARD_CRL*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_CRL* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_CRL* 16)
(intern "*UTC_STANDARD_NIST*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_NIST* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_NIST* 32)
(intern "*UTC_STANDARD_USNO*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_USNO* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_USNO* 48)
(intern "*UTC_STANDARD_BIPM*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_BIPM* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_BIPM* 64)
(intern "*UTC_STANDARD_EL*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_EL* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_EL* 80)
(intern "*UTC_STANDARD_SU*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_SU* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_SU* 96)
(intern "*UTC_STANDARD_NTSC*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_NTSC* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_NTSC* 112)
(intern "*UTC_STANDARD_UNKNOWN*" (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(shadow '*UTC_STANDARD_UNKNOWN* (find-package "UBLOX_MSGS::NAVTIMEUTC"))
(defconstant ublox_msgs::NavTIMEUTC::*UTC_STANDARD_UNKNOWN* 240)
(defclass ublox_msgs::NavTIMEUTC
  :super ros::object
  :slots (_iTOW _tAcc _nano _year _month _day _hour _min _sec _valid ))

(defmethod ublox_msgs::NavTIMEUTC
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:tAcc __tAcc) 0)
    ((:nano __nano) 0)
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    ((:hour __hour) 0)
    ((:min __min) 0)
    ((:sec __sec) 0)
    ((:valid __valid) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _tAcc (round __tAcc))
   (setq _nano (round __nano))
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   (setq _hour (round __hour))
   (setq _min (round __min))
   (setq _sec (round __sec))
   (setq _valid (round __valid))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:tAcc
   (&optional __tAcc)
   (if __tAcc (setq _tAcc __tAcc)) _tAcc)
  (:nano
   (&optional __nano)
   (if __nano (setq _nano __nano)) _nano)
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
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint32 _tAcc
    4
    ;; int32 _nano
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint32 _tAcc
       (write-long _tAcc s)
     ;; int32 _nano
       (write-long _nano s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _tAcc
     (setq _tAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nano
     (setq _nano (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;;
   self)
  )

(setf (get ublox_msgs::NavTIMEUTC :md5sum-) "bd39089655ebb13ff8d01cbe3a087db1")
(setf (get ublox_msgs::NavTIMEUTC :datatype-) "ublox_msgs/NavTIMEUTC")
(setf (get ublox_msgs::NavTIMEUTC :definition-)
      "# NAV-TIMEUTC (0x01 0x21)
# UTC Time Solution
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 33

uint32 iTOW             # GPS Millisecond time of week [ms]

uint32 tAcc             # Time Accuracy Estimate [ns]
int32 nano              # Fraction of second, range -1e9 .. 1e9 (UTC) [ns]
uint16 year             # Year, range 1999..2099 (UTC) [y]
uint8 month             # Month, range 1..12 (UTC) [month]
uint8 day               # Day of Month, range 1..31 (UTC) [d]
uint8 hour              # Hour of Day, range 0..23 (UTC) [h]
uint8 min               # Minute of Hour, range 0..59 (UTC) [min]
uint8 sec               # Seconds of Minute, range 0..60 (UTC) [s] (60 for 
                        # leap second)

uint8 valid             # Validity Flags
uint8 VALID_TOW = 1         # Valid Time of Week
uint8 VALID_WKN = 2         # Valid Week Number
uint8 VALID_UTC = 4         # Valid Leap Seconds, i.e. Leap Seconds already known
uint8 VALID_UTC_STANDARD_MASK = 240  # UTC standard Identifier Bit mask:
uint8 UTC_STANDARD_NOT_AVAILABLE = 0    # Information not available
uint8 UTC_STANDARD_CRL = 16             # Communications Research Labratory
uint8 UTC_STANDARD_NIST = 32            # National Institute of Standards and 
                                        # Technology (NIST)
uint8 UTC_STANDARD_USNO = 48            # U.S. Naval Observatory (USNO)
uint8 UTC_STANDARD_BIPM = 64            # International Bureau of Weights and 
                                        # Measures (BIPM)
uint8 UTC_STANDARD_EL = 80              # European Laboratory (tbd)
uint8 UTC_STANDARD_SU = 96              # Former Soviet Union (SU)
uint8 UTC_STANDARD_NTSC = 112           # National Time Service Center, China
uint8 UTC_STANDARD_UNKNOWN = 240
")



(provide :ublox_msgs/NavTIMEUTC "bd39089655ebb13ff8d01cbe3a087db1")


