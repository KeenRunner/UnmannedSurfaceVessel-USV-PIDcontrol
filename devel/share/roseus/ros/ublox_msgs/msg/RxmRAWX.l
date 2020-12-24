;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmRAWX)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmRAWX (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMRAWX")
  (make-package "UBLOX_MSGS::RXMRAWX"))

(in-package "ROS")
;;//! \htmlinclude RxmRAWX.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::RXMRAWX"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::RXMRAWX"))
(defconstant ublox_msgs::RxmRAWX::*CLASS_ID* 2)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::RXMRAWX"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::RXMRAWX"))
(defconstant ublox_msgs::RxmRAWX::*MESSAGE_ID* 21)
(intern "*REC_STAT_LEAP_SEC*" (find-package "UBLOX_MSGS::RXMRAWX"))
(shadow '*REC_STAT_LEAP_SEC* (find-package "UBLOX_MSGS::RXMRAWX"))
(defconstant ublox_msgs::RxmRAWX::*REC_STAT_LEAP_SEC* 1)
(intern "*REC_STAT_CLK_RESET*" (find-package "UBLOX_MSGS::RXMRAWX"))
(shadow '*REC_STAT_CLK_RESET* (find-package "UBLOX_MSGS::RXMRAWX"))
(defconstant ublox_msgs::RxmRAWX::*REC_STAT_CLK_RESET* 2)
(defclass ublox_msgs::RxmRAWX
  :super ros::object
  :slots (_rcvTOW _week _leapS _numMeas _recStat _version _reserved1 _meas ))

(defmethod ublox_msgs::RxmRAWX
  (:init
   (&key
    ((:rcvTOW __rcvTOW) 0.0)
    ((:week __week) 0)
    ((:leapS __leapS) 0)
    ((:numMeas __numMeas) 0)
    ((:recStat __recStat) 0)
    ((:version __version) 0)
    ((:reserved1 __reserved1) (make-array 2 :initial-element 0 :element-type :char))
    ((:meas __meas) (let (r) (dotimes (i 0) (push (instance ublox_msgs::RxmRAWX_Meas :init) r)) r))
    )
   (send-super :init)
   (setq _rcvTOW (float __rcvTOW))
   (setq _week (round __week))
   (setq _leapS (round __leapS))
   (setq _numMeas (round __numMeas))
   (setq _recStat (round __recStat))
   (setq _version (round __version))
   (setq _reserved1 __reserved1)
   (setq _meas __meas)
   self)
  (:rcvTOW
   (&optional __rcvTOW)
   (if __rcvTOW (setq _rcvTOW __rcvTOW)) _rcvTOW)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:leapS
   (&optional __leapS)
   (if __leapS (setq _leapS __leapS)) _leapS)
  (:numMeas
   (&optional __numMeas)
   (if __numMeas (setq _numMeas __numMeas)) _numMeas)
  (:recStat
   (&optional __recStat)
   (if __recStat (setq _recStat __recStat)) _recStat)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:meas
   (&rest __meas)
   (if (keywordp (car __meas))
       (send* _meas __meas)
     (progn
       (if __meas (setq _meas (car __meas)))
       _meas)))
  (:serialization-length
   ()
   (+
    ;; float64 _rcvTOW
    8
    ;; uint16 _week
    2
    ;; int8 _leapS
    1
    ;; uint8 _numMeas
    1
    ;; uint8 _recStat
    1
    ;; uint8 _version
    1
    ;; uint8[2] _reserved1
    (* 1    2)
    ;; ublox_msgs/RxmRAWX_Meas[] _meas
    (apply #'+ (send-all _meas :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rcvTOW
       (sys::poke _rcvTOW (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _week
       (write-word _week s)
     ;; int8 _leapS
       (write-byte _leapS s)
     ;; uint8 _numMeas
       (write-byte _numMeas s)
     ;; uint8 _recStat
       (write-byte _recStat s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8[2] _reserved1
     (princ _reserved1 s)
     ;; ublox_msgs/RxmRAWX_Meas[] _meas
     (write-long (length _meas) s)
     (dolist (elem _meas)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rcvTOW
     (setq _rcvTOW (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _leapS
     (setq _leapS (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _leapS 127) (setq _leapS (- _leapS 256)))
   ;; uint8 _numMeas
     (setq _numMeas (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _recStat
     (setq _recStat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved1
   (setq _reserved1 (make-array 2 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 2)
   ;; ublox_msgs/RxmRAWX_Meas[] _meas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _meas (let (r) (dotimes (i n) (push (instance ublox_msgs::RxmRAWX_Meas :init) r)) r))
     (dolist (elem- _meas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::RxmRAWX :md5sum-) "a2df4b27b6a2a1565e42f5669dbb11b5")
(setf (get ublox_msgs::RxmRAWX :datatype-) "ublox_msgs/RxmRAWX")
(setf (get ublox_msgs::RxmRAWX :definition-)
      "# RXM-RAWX (0x02 0x15)
# Multi-GNSS Raw Measurement Data
#
# This message contains the information needed to be able to generate a RINEX 3
# multi-GNSS observation file.
# This message contains pseudorange, Doppler, carrier phase, phase lock and
# signal quality information for GNSS satellites once signals have been
# synchronized. This message supports all active GNSS.
# 

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 21

float64 rcvTOW          # Measurement time of week in receiver local time [s]
                        # approximately aligned to the GPS time system. The
                        # receiver local time of week number and leap second
                        # information can be used to translate the time to other 
                        # time systems. More information about the difference in
                        # time systems can be found in RINEX 3 documentation. 
                        # For a receiver operating in GLONASS only mode, UTC
                        # time can be determined by subtracting the leapS field 
                        # from GPS time regardless of whether the GPS leap
                        # seconds are valid. 
uint16 week             # GPS week number in receiver local time. [weeks]
int8 leapS              # GPS leap seconds (GPS-UTC). [s]
                        # This field represents the receiver's best knowledge of
                        # the leap seconds offset. A flag is given in the
                        # recStat bitfield to indicate if the leap seconds 
                        # are known.
uint8 numMeas           # # of measurements to follow
uint8 recStat           # Receiver tracking status bitfield
uint8 REC_STAT_LEAP_SEC = 1   # Leap seconds have been determined
uint8 REC_STAT_CLK_RESET = 2  # Clock reset applied. Typically the receiver  
                              # clock is changed in increments of integer
                              # milliseconds.
uint8 version           # Message version (0x01 for this version).
uint8[2] reserved1      # Reserved

RxmRAWX_Meas[] meas

================================================================================
MSG: ublox_msgs/RxmRAWX_Meas
# see message RxmRAWX
#

float64 prMes             # Pseudorange measurement [m]. GLONASS inter frequency
                          # channel delays are compensated with an internal
                          # calibration table.
float64 cpMes             # Carrier phase measurement [L1 cycles]. The carrier
                          # phase initial ambiguity is initialized using an
                          # approximate value to make the magnitude of
                          # the phase close to the pseudorange
                          # measurement. Clock resets are applied to both
                          # phase and code measurements in accordance
                          # with the RINEX specification.
float32 doMes             # Doppler measurement [Hz] (positive sign for
                          # approaching satellites)
uint8 gnssId              # GNSS identifier (see CfgGNSS for constants)

uint8 svId                # Satellite identifier (see Satellite Numbering)

uint8 reserved0           # Reserved

uint8 freqId              # Only used for GLONASS: This is the frequency
                          # slot + 7 (range from 0 to 13)
uint16 locktime           # Carrier phase locktime counter [ms] 
                          # (maximum 64500 ms)
int8 cno                  # Carrier-to-noise density ratio (signal strength) 
                          # [dB-Hz]
uint8 prStdev             # Estimated pseudorange measurement standard
                          # deviation [m / 0.01*2^n]
uint8 cpStdev             # Estimated carrier phase measurement standard
                          # deviation (note a raw value of 0x0F indicates the
                          # value is invalid) [cycles / 0.004]
uint8 doStdev             # Estimated Doppler measurement standard deviation 
                          # [Hz / 0.002*2^n]

uint8 trkStat             # Tracking status bitfield
uint8 TRK_STAT_PR_VALID = 1       # Pseudorange valid
uint8 TRK_STAT_CP_VALID = 2       # Carrier phase valid
uint8 TRK_STAT_HALF_CYC = 4       # Half cycle valid
uint8 TRK_STAT_SUB_HALF_CYC = 8   # Half cycle subtracted from phase

uint8 reserved1           # Reserved

")



(provide :ublox_msgs/RxmRAWX "a2df4b27b6a2a1565e42f5669dbb11b5")


