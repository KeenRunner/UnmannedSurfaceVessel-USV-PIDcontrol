;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::EsfSTATUS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'EsfSTATUS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::ESFSTATUS")
  (make-package "UBLOX_MSGS::ESFSTATUS"))

(in-package "ROS")
;;//! \htmlinclude EsfSTATUS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::ESFSTATUS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::ESFSTATUS"))
(defconstant ublox_msgs::EsfSTATUS::*CLASS_ID* 16)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::ESFSTATUS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::ESFSTATUS"))
(defconstant ublox_msgs::EsfSTATUS::*MESSAGE_ID* 16)
(intern "*FUSION_MODE_INIT*" (find-package "UBLOX_MSGS::ESFSTATUS"))
(shadow '*FUSION_MODE_INIT* (find-package "UBLOX_MSGS::ESFSTATUS"))
(defconstant ublox_msgs::EsfSTATUS::*FUSION_MODE_INIT* 0)
(intern "*FUSION_MODE_FUSION*" (find-package "UBLOX_MSGS::ESFSTATUS"))
(shadow '*FUSION_MODE_FUSION* (find-package "UBLOX_MSGS::ESFSTATUS"))
(defconstant ublox_msgs::EsfSTATUS::*FUSION_MODE_FUSION* 1)
(intern "*FUSION_MODE_SUSPENDED*" (find-package "UBLOX_MSGS::ESFSTATUS"))
(shadow '*FUSION_MODE_SUSPENDED* (find-package "UBLOX_MSGS::ESFSTATUS"))
(defconstant ublox_msgs::EsfSTATUS::*FUSION_MODE_SUSPENDED* 2)
(intern "*FUSION_MODE_DISABLED*" (find-package "UBLOX_MSGS::ESFSTATUS"))
(shadow '*FUSION_MODE_DISABLED* (find-package "UBLOX_MSGS::ESFSTATUS"))
(defconstant ublox_msgs::EsfSTATUS::*FUSION_MODE_DISABLED* 3)
(defclass ublox_msgs::EsfSTATUS
  :super ros::object
  :slots (_iTOW _version _reserved1 _fusionMode _reserved2 _numSens _sens ))

(defmethod ublox_msgs::EsfSTATUS
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:version __version) 0)
    ((:reserved1 __reserved1) (make-array 7 :initial-element 0 :element-type :char))
    ((:fusionMode __fusionMode) 0)
    ((:reserved2 __reserved2) (make-array 2 :initial-element 0 :element-type :char))
    ((:numSens __numSens) 0)
    ((:sens __sens) (let (r) (dotimes (i 0) (push (instance ublox_msgs::EsfSTATUS_Sens :init) r)) r))
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _version (round __version))
   (setq _reserved1 __reserved1)
   (setq _fusionMode (round __fusionMode))
   (setq _reserved2 __reserved2)
   (setq _numSens (round __numSens))
   (setq _sens __sens)
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:fusionMode
   (&optional __fusionMode)
   (if __fusionMode (setq _fusionMode __fusionMode)) _fusionMode)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:numSens
   (&optional __numSens)
   (if __numSens (setq _numSens __numSens)) _numSens)
  (:sens
   (&rest __sens)
   (if (keywordp (car __sens))
       (send* _sens __sens)
     (progn
       (if __sens (setq _sens (car __sens)))
       _sens)))
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint8 _version
    1
    ;; uint8[7] _reserved1
    (* 1    7)
    ;; uint8 _fusionMode
    1
    ;; uint8[2] _reserved2
    (* 1    2)
    ;; uint8 _numSens
    1
    ;; ublox_msgs/EsfSTATUS_Sens[] _sens
    (apply #'+ (send-all _sens :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8[7] _reserved1
     (princ _reserved1 s)
     ;; uint8 _fusionMode
       (write-byte _fusionMode s)
     ;; uint8[2] _reserved2
     (princ _reserved2 s)
     ;; uint8 _numSens
       (write-byte _numSens s)
     ;; ublox_msgs/EsfSTATUS_Sens[] _sens
     (write-long (length _sens) s)
     (dolist (elem _sens)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[7] _reserved1
   (setq _reserved1 (make-array 7 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 7)
   ;; uint8 _fusionMode
     (setq _fusionMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved2
   (setq _reserved2 (make-array 2 :element-type :char))
   (replace _reserved2 buf :start2 ptr-) (incf ptr- 2)
   ;; uint8 _numSens
     (setq _numSens (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ublox_msgs/EsfSTATUS_Sens[] _sens
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sens (let (r) (dotimes (i n) (push (instance ublox_msgs::EsfSTATUS_Sens :init) r)) r))
     (dolist (elem- _sens)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::EsfSTATUS :md5sum-) "006f2c0e3e6e9239781223dca67e519b")
(setf (get ublox_msgs::EsfSTATUS :datatype-) "ublox_msgs/EsfSTATUS")
(setf (get ublox_msgs::EsfSTATUS :definition-)
      "# ESF-STATUS (0x10 0x10)
# External Sensor Fusion (ESF) status information
#
# Supported on UDR/ADR products
#

uint8 CLASS_ID = 16
uint8 MESSAGE_ID = 16

uint32 iTOW                   # GPS time of week of the navigation epoch [ms]
uint8 version                 # Message version (2 for this version)

uint8[7] reserved1            # Reserved

uint8 fusionMode              # Fusion mode:
uint8 FUSION_MODE_INIT = 0        # receiver is initializing some unknown values
                                  # required for doing sensor fusion
uint8 FUSION_MODE_FUSION = 1      # GNSS and sensor data are 
                                  # used for navigation solution computation
uint8 FUSION_MODE_SUSPENDED = 2   # sensor fusion is temporarily disabled 
                                  # due to e.g. invalid sensor data or detected 
                                  # ferry
uint8 FUSION_MODE_DISABLED = 3    # sensor fusion is permanently disabled 
                                  # until receiver reset due e.g. to sensor 
                                  # error

uint8[2] reserved2            # Reserved

uint8 numSens                 # Number of sensors


# Start of repeated block (numSens times)
EsfSTATUS_Sens[] sens
# End of repeated block
================================================================================
MSG: ublox_msgs/EsfSTATUS_Sens
# See Esf-STATUS
#

uint8 sensStatus1   # Sensor status, part 1 (see graphic below)
uint8 sensStatus2   # Sensor status, part 2 (see graphic below)
uint8 freq          # Observation frequency [Hz]
uint8 faults        # Sensor faults (see graphic below)
")



(provide :ublox_msgs/EsfSTATUS "006f2c0e3e6e9239781223dca67e519b")


