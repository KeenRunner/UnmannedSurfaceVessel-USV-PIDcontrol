;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmRAWX_Meas)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmRAWX_Meas (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMRAWX_MEAS")
  (make-package "UBLOX_MSGS::RXMRAWX_MEAS"))

(in-package "ROS")
;;//! \htmlinclude RxmRAWX_Meas.msg.html


(intern "*TRK_STAT_PR_VALID*" (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(shadow '*TRK_STAT_PR_VALID* (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(defconstant ublox_msgs::RxmRAWX_Meas::*TRK_STAT_PR_VALID* 1)
(intern "*TRK_STAT_CP_VALID*" (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(shadow '*TRK_STAT_CP_VALID* (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(defconstant ublox_msgs::RxmRAWX_Meas::*TRK_STAT_CP_VALID* 2)
(intern "*TRK_STAT_HALF_CYC*" (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(shadow '*TRK_STAT_HALF_CYC* (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(defconstant ublox_msgs::RxmRAWX_Meas::*TRK_STAT_HALF_CYC* 4)
(intern "*TRK_STAT_SUB_HALF_CYC*" (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(shadow '*TRK_STAT_SUB_HALF_CYC* (find-package "UBLOX_MSGS::RXMRAWX_MEAS"))
(defconstant ublox_msgs::RxmRAWX_Meas::*TRK_STAT_SUB_HALF_CYC* 8)
(defclass ublox_msgs::RxmRAWX_Meas
  :super ros::object
  :slots (_prMes _cpMes _doMes _gnssId _svId _reserved0 _freqId _locktime _cno _prStdev _cpStdev _doStdev _trkStat _reserved1 ))

(defmethod ublox_msgs::RxmRAWX_Meas
  (:init
   (&key
    ((:prMes __prMes) 0.0)
    ((:cpMes __cpMes) 0.0)
    ((:doMes __doMes) 0.0)
    ((:gnssId __gnssId) 0)
    ((:svId __svId) 0)
    ((:reserved0 __reserved0) 0)
    ((:freqId __freqId) 0)
    ((:locktime __locktime) 0)
    ((:cno __cno) 0)
    ((:prStdev __prStdev) 0)
    ((:cpStdev __cpStdev) 0)
    ((:doStdev __doStdev) 0)
    ((:trkStat __trkStat) 0)
    ((:reserved1 __reserved1) 0)
    )
   (send-super :init)
   (setq _prMes (float __prMes))
   (setq _cpMes (float __cpMes))
   (setq _doMes (float __doMes))
   (setq _gnssId (round __gnssId))
   (setq _svId (round __svId))
   (setq _reserved0 (round __reserved0))
   (setq _freqId (round __freqId))
   (setq _locktime (round __locktime))
   (setq _cno (round __cno))
   (setq _prStdev (round __prStdev))
   (setq _cpStdev (round __cpStdev))
   (setq _doStdev (round __doStdev))
   (setq _trkStat (round __trkStat))
   (setq _reserved1 (round __reserved1))
   self)
  (:prMes
   (&optional __prMes)
   (if __prMes (setq _prMes __prMes)) _prMes)
  (:cpMes
   (&optional __cpMes)
   (if __cpMes (setq _cpMes __cpMes)) _cpMes)
  (:doMes
   (&optional __doMes)
   (if __doMes (setq _doMes __doMes)) _doMes)
  (:gnssId
   (&optional __gnssId)
   (if __gnssId (setq _gnssId __gnssId)) _gnssId)
  (:svId
   (&optional __svId)
   (if __svId (setq _svId __svId)) _svId)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:freqId
   (&optional __freqId)
   (if __freqId (setq _freqId __freqId)) _freqId)
  (:locktime
   (&optional __locktime)
   (if __locktime (setq _locktime __locktime)) _locktime)
  (:cno
   (&optional __cno)
   (if __cno (setq _cno __cno)) _cno)
  (:prStdev
   (&optional __prStdev)
   (if __prStdev (setq _prStdev __prStdev)) _prStdev)
  (:cpStdev
   (&optional __cpStdev)
   (if __cpStdev (setq _cpStdev __cpStdev)) _cpStdev)
  (:doStdev
   (&optional __doStdev)
   (if __doStdev (setq _doStdev __doStdev)) _doStdev)
  (:trkStat
   (&optional __trkStat)
   (if __trkStat (setq _trkStat __trkStat)) _trkStat)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; float64 _prMes
    8
    ;; float64 _cpMes
    8
    ;; float32 _doMes
    4
    ;; uint8 _gnssId
    1
    ;; uint8 _svId
    1
    ;; uint8 _reserved0
    1
    ;; uint8 _freqId
    1
    ;; uint16 _locktime
    2
    ;; int8 _cno
    1
    ;; uint8 _prStdev
    1
    ;; uint8 _cpStdev
    1
    ;; uint8 _doStdev
    1
    ;; uint8 _trkStat
    1
    ;; uint8 _reserved1
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _prMes
       (sys::poke _prMes (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cpMes
       (sys::poke _cpMes (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _doMes
       (sys::poke _doMes (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _gnssId
       (write-byte _gnssId s)
     ;; uint8 _svId
       (write-byte _svId s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint8 _freqId
       (write-byte _freqId s)
     ;; uint16 _locktime
       (write-word _locktime s)
     ;; int8 _cno
       (write-byte _cno s)
     ;; uint8 _prStdev
       (write-byte _prStdev s)
     ;; uint8 _cpStdev
       (write-byte _cpStdev s)
     ;; uint8 _doStdev
       (write-byte _doStdev s)
     ;; uint8 _trkStat
       (write-byte _trkStat s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _prMes
     (setq _prMes (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cpMes
     (setq _cpMes (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _doMes
     (setq _doMes (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _gnssId
     (setq _gnssId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svId
     (setq _svId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _freqId
     (setq _freqId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _locktime
     (setq _locktime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _cno
     (setq _cno (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cno 127) (setq _cno (- _cno 256)))
   ;; uint8 _prStdev
     (setq _prStdev (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cpStdev
     (setq _cpStdev (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _doStdev
     (setq _doStdev (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _trkStat
     (setq _trkStat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::RxmRAWX_Meas :md5sum-) "d6a580262875bf83a377ba14dcdd659f")
(setf (get ublox_msgs::RxmRAWX_Meas :datatype-) "ublox_msgs/RxmRAWX_Meas")
(setf (get ublox_msgs::RxmRAWX_Meas :definition-)
      "# see message RxmRAWX
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



(provide :ublox_msgs/RxmRAWX_Meas "d6a580262875bf83a377ba14dcdd659f")


