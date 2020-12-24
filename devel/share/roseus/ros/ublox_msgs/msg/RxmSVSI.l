;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmSVSI)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmSVSI (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMSVSI")
  (make-package "UBLOX_MSGS::RXMSVSI"))

(in-package "ROS")
;;//! \htmlinclude RxmSVSI.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::RXMSVSI"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::RXMSVSI"))
(defconstant ublox_msgs::RxmSVSI::*CLASS_ID* 2)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::RXMSVSI"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::RXMSVSI"))
(defconstant ublox_msgs::RxmSVSI::*MESSAGE_ID* 32)
(defclass ublox_msgs::RxmSVSI
  :super ros::object
  :slots (_iTOW _week _numVis _numSV _sv ))

(defmethod ublox_msgs::RxmSVSI
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:week __week) 0)
    ((:numVis __numVis) 0)
    ((:numSV __numSV) 0)
    ((:sv __sv) (let (r) (dotimes (i 0) (push (instance ublox_msgs::RxmSVSI_SV :init) r)) r))
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _week (round __week))
   (setq _numVis (round __numVis))
   (setq _numSV (round __numSV))
   (setq _sv __sv)
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:numVis
   (&optional __numVis)
   (if __numVis (setq _numVis __numVis)) _numVis)
  (:numSV
   (&optional __numSV)
   (if __numSV (setq _numSV __numSV)) _numSV)
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
    ;; int32 _iTOW
    4
    ;; int16 _week
    2
    ;; uint8 _numVis
    1
    ;; uint8 _numSV
    1
    ;; ublox_msgs/RxmSVSI_SV[] _sv
    (apply #'+ (send-all _sv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _iTOW
       (write-long _iTOW s)
     ;; int16 _week
       (write-word _week s)
     ;; uint8 _numVis
       (write-byte _numVis s)
     ;; uint8 _numSV
       (write-byte _numSV s)
     ;; ublox_msgs/RxmSVSI_SV[] _sv
     (write-long (length _sv) s)
     (dolist (elem _sv)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _numVis
     (setq _numVis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numSV
     (setq _numSV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ublox_msgs/RxmSVSI_SV[] _sv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv (let (r) (dotimes (i n) (push (instance ublox_msgs::RxmSVSI_SV :init) r)) r))
     (dolist (elem- _sv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::RxmSVSI :md5sum-) "8358c0613232b962d48cf13f5bda0070")
(setf (get ublox_msgs::RxmSVSI :datatype-) "ublox_msgs/RxmSVSI")
(setf (get ublox_msgs::RxmSVSI :definition-)
      "# RXM-SVSI (0x02 0x20)
# SV Status Info
#
# Status of the receiver manager knowledge about GPS Orbit Validity
#
# This message has only been retained for backwards compatibility; users are
# recommended to use the UBX-NAV-ORB message in preference.

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 32

int32 iTOW              # GPS time of week of the navigation epoch [ms]
int16 week              # GPS week number of the navigation epoch [weeks]

uint8 numVis            # Number of visible satellites
uint8 numSV             # Number of per-SV data blocks following

RxmSVSI_SV[] sv

================================================================================
MSG: ublox_msgs/RxmSVSI_SV
# see message RxmSVSI
#

uint8 svid            # Satellite ID

uint8 svFlag          # Information Flags
uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15
uint8 FLAG_HEALTHY = 16       # SV healthy flag
uint8 FLAG_EPH_VAL = 32       # Ephemeris valid
uint8 FLAG_ALM_VAL = 64       # Almanac valid
uint8 FLAG_NOT_AVAIL = 128    # SV not available

int16 azim            # Azimuth
int8 elev             # Elevation

uint8 age             # Age of Almanac and Ephemeris
uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4
                              # i.e. the reference time may be in the future:
                              # ageOfAlm = (age & 0x0f) - 4
uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.
                              # i.e. the reference time may be in the future:
                              # ageOfEph = ((age & 0xf0) >> 4) - 4

")



(provide :ublox_msgs/RxmSVSI "8358c0613232b962d48cf13f5bda0070")


