;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmRAW)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmRAW (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMRAW")
  (make-package "UBLOX_MSGS::RXMRAW"))

(in-package "ROS")
;;//! \htmlinclude RxmRAW.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::RXMRAW"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::RXMRAW"))
(defconstant ublox_msgs::RxmRAW::*CLASS_ID* 2)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::RXMRAW"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::RXMRAW"))
(defconstant ublox_msgs::RxmRAW::*MESSAGE_ID* 16)
(defclass ublox_msgs::RxmRAW
  :super ros::object
  :slots (_rcvTOW _week _numSV _reserved1 _sv ))

(defmethod ublox_msgs::RxmRAW
  (:init
   (&key
    ((:rcvTOW __rcvTOW) 0)
    ((:week __week) 0)
    ((:numSV __numSV) 0)
    ((:reserved1 __reserved1) 0)
    ((:sv __sv) (let (r) (dotimes (i 0) (push (instance ublox_msgs::RxmRAW_SV :init) r)) r))
    )
   (send-super :init)
   (setq _rcvTOW (round __rcvTOW))
   (setq _week (round __week))
   (setq _numSV (round __numSV))
   (setq _reserved1 (round __reserved1))
   (setq _sv __sv)
   self)
  (:rcvTOW
   (&optional __rcvTOW)
   (if __rcvTOW (setq _rcvTOW __rcvTOW)) _rcvTOW)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:numSV
   (&optional __numSV)
   (if __numSV (setq _numSV __numSV)) _numSV)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
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
    ;; int32 _rcvTOW
    4
    ;; int16 _week
    2
    ;; uint8 _numSV
    1
    ;; uint8 _reserved1
    1
    ;; ublox_msgs/RxmRAW_SV[] _sv
    (apply #'+ (send-all _sv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _rcvTOW
       (write-long _rcvTOW s)
     ;; int16 _week
       (write-word _week s)
     ;; uint8 _numSV
       (write-byte _numSV s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; ublox_msgs/RxmRAW_SV[] _sv
     (write-long (length _sv) s)
     (dolist (elem _sv)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _rcvTOW
     (setq _rcvTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _numSV
     (setq _numSV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ublox_msgs/RxmRAW_SV[] _sv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv (let (r) (dotimes (i n) (push (instance ublox_msgs::RxmRAW_SV :init) r)) r))
     (dolist (elem- _sv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::RxmRAW :md5sum-) "d30ff396119937adec288ba58915e228")
(setf (get ublox_msgs::RxmRAW :datatype-) "ublox_msgs/RxmRAW")
(setf (get ublox_msgs::RxmRAW :definition-)
      "# RXM-RAW (0x02 0x10)
# Raw Measurement Data
#
# Supported up to ublox 7 firmware. See RxmRAWX for ublox 8
# This message contains all information needed to be able to generate a RINEX 
# observation file.
# This message outputs pseudorange, doppler and carrier phase measurements for 
# GPS satellites once signals have been synchronised. No other GNSS types are 
# currently supported.
# 

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 16

int32 rcvTOW            # Measurement time of week in receiver local time [s]
int16 week              # Measurement week number in receiver local time [weeks]

uint8 numSV             # # of satellites following
uint8 reserved1         # Reserved

RxmRAW_SV[] sv          # numSV times

================================================================================
MSG: ublox_msgs/RxmRAW_SV
# see message RxmRAW
#

float64 cpMes             # Carrier phase measurement [L1 cycles]
float64 prMes             # Pseudorange measurement [m]
float32 doMes             # Doppler measurement [Hz]

uint8 sv                  # Space Vehicle Number
int8 mesQI                # Nav Measurements Quality Indicator
                          #  >=4 : PR+DO OK
                          #  >=5 : PR+DO+CP OK
                          #  <6 : likely loss of carrier lock in previous 
                          #       interval
int8 cno                  # Signal strength C/No. [dbHz]
uint8 lli                 # Loss of lock indicator (RINEX definition)

")



(provide :ublox_msgs/RxmRAW "d30ff396119937adec288ba58915e228")


