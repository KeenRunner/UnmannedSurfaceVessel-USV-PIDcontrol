;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavDGPS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavDGPS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVDGPS")
  (make-package "UBLOX_MSGS::NAVDGPS"))

(in-package "ROS")
;;//! \htmlinclude NavDGPS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVDGPS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVDGPS"))
(defconstant ublox_msgs::NavDGPS::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVDGPS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVDGPS"))
(defconstant ublox_msgs::NavDGPS::*MESSAGE_ID* 49)
(intern "*DGPS_CORRECTION_NONE*" (find-package "UBLOX_MSGS::NAVDGPS"))
(shadow '*DGPS_CORRECTION_NONE* (find-package "UBLOX_MSGS::NAVDGPS"))
(defconstant ublox_msgs::NavDGPS::*DGPS_CORRECTION_NONE* 0)
(intern "*DGPS_CORRECTION_PR_PRR*" (find-package "UBLOX_MSGS::NAVDGPS"))
(shadow '*DGPS_CORRECTION_PR_PRR* (find-package "UBLOX_MSGS::NAVDGPS"))
(defconstant ublox_msgs::NavDGPS::*DGPS_CORRECTION_PR_PRR* 1)
(defclass ublox_msgs::NavDGPS
  :super ros::object
  :slots (_iTOW _age _baseId _baseHealth _numCh _status _reserved1 _sv ))

(defmethod ublox_msgs::NavDGPS
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:age __age) 0)
    ((:baseId __baseId) 0)
    ((:baseHealth __baseHealth) 0)
    ((:numCh __numCh) 0)
    ((:status __status) 0)
    ((:reserved1 __reserved1) 0)
    ((:sv __sv) (let (r) (dotimes (i 0) (push (instance ublox_msgs::NavDGPS_SV :init) r)) r))
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _age (round __age))
   (setq _baseId (round __baseId))
   (setq _baseHealth (round __baseHealth))
   (setq _numCh (round __numCh))
   (setq _status (round __status))
   (setq _reserved1 (round __reserved1))
   (setq _sv __sv)
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:baseId
   (&optional __baseId)
   (if __baseId (setq _baseId __baseId)) _baseId)
  (:baseHealth
   (&optional __baseHealth)
   (if __baseHealth (setq _baseHealth __baseHealth)) _baseHealth)
  (:numCh
   (&optional __numCh)
   (if __numCh (setq _numCh __numCh)) _numCh)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
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
    ;; uint32 _iTOW
    4
    ;; int32 _age
    4
    ;; int16 _baseId
    2
    ;; int16 _baseHealth
    2
    ;; int8 _numCh
    1
    ;; uint8 _status
    1
    ;; uint16 _reserved1
    2
    ;; ublox_msgs/NavDGPS_SV[] _sv
    (apply #'+ (send-all _sv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; int32 _age
       (write-long _age s)
     ;; int16 _baseId
       (write-word _baseId s)
     ;; int16 _baseHealth
       (write-word _baseHealth s)
     ;; int8 _numCh
       (write-byte _numCh s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint16 _reserved1
       (write-word _reserved1 s)
     ;; ublox_msgs/NavDGPS_SV[] _sv
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
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _baseId
     (setq _baseId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _baseHealth
     (setq _baseHealth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _numCh
     (setq _numCh (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _numCh 127) (setq _numCh (- _numCh 256)))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ublox_msgs/NavDGPS_SV[] _sv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv (let (r) (dotimes (i n) (push (instance ublox_msgs::NavDGPS_SV :init) r)) r))
     (dolist (elem- _sv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::NavDGPS :md5sum-) "b40fcf35e803e9b5ccedf7c1c7ca332d")
(setf (get ublox_msgs::NavDGPS :datatype-) "ublox_msgs/NavDGPS")
(setf (get ublox_msgs::NavDGPS :definition-)
      "# NAV-DGPS (0x01 0x31)
# DGPS Data Used for NAV
#
# This message outputs the Correction data as it has been applied to the current
# NAV Solution. See also the notes on the RTCM protocol.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 49

uint32 iTOW             # GPS Millisecond time of week [ms]

int32 age               # Age of newest correction data [ms]
int16 baseId            # DGPS Base Station ID
int16 baseHealth        # DGPS Base Station Health Status
int8 numCh              # Number of channels for which correction data is 
                        # following

uint8 status            # DGPS Correction Type Status
uint8 DGPS_CORRECTION_NONE = 0
uint8 DGPS_CORRECTION_PR_PRR = 1

uint16 reserved1        # Reserved

NavDGPS_SV[] sv

================================================================================
MSG: ublox_msgs/NavDGPS_SV
# see message NavDGPS

uint8 svid              # Satellite ID

uint8 flags             # Bitmask / Channel Number and Usage:
uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15
                                # Channel numbers > 15 marked as 15
uint8 FLAGS_DGPS = 16           # DGPS Used for this SV

uint16 ageC             # Age of latest correction data [ms]
float32 prc             # Pseudo Range Correction [m]
float32 prrc            # Pseudo Range Rate Correction [m/s]


")



(provide :ublox_msgs/NavDGPS "b40fcf35e803e9b5ccedf7c1c7ca332d")


