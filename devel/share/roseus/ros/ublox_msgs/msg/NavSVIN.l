;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSVIN)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSVIN (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSVIN")
  (make-package "UBLOX_MSGS::NAVSVIN"))

(in-package "ROS")
;;//! \htmlinclude NavSVIN.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVSVIN"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVSVIN"))
(defconstant ublox_msgs::NavSVIN::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVSVIN"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVSVIN"))
(defconstant ublox_msgs::NavSVIN::*MESSAGE_ID* 59)
(defclass ublox_msgs::NavSVIN
  :super ros::object
  :slots (_version _reserved0 _iTOW _dur _meanX _meanY _meanZ _meanXHP _meanYHP _meanZHP _reserved1 _meanAcc _obs _valid _active _reserved3 ))

(defmethod ublox_msgs::NavSVIN
  (:init
   (&key
    ((:version __version) 0)
    ((:reserved0 __reserved0) (make-array 3 :initial-element 0 :element-type :char))
    ((:iTOW __iTOW) 0)
    ((:dur __dur) 0)
    ((:meanX __meanX) 0)
    ((:meanY __meanY) 0)
    ((:meanZ __meanZ) 0)
    ((:meanXHP __meanXHP) 0)
    ((:meanYHP __meanYHP) 0)
    ((:meanZHP __meanZHP) 0)
    ((:reserved1 __reserved1) 0)
    ((:meanAcc __meanAcc) 0)
    ((:obs __obs) 0)
    ((:valid __valid) 0)
    ((:active __active) 0)
    ((:reserved3 __reserved3) (make-array 2 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _reserved0 __reserved0)
   (setq _iTOW (round __iTOW))
   (setq _dur (round __dur))
   (setq _meanX (round __meanX))
   (setq _meanY (round __meanY))
   (setq _meanZ (round __meanZ))
   (setq _meanXHP (round __meanXHP))
   (setq _meanYHP (round __meanYHP))
   (setq _meanZHP (round __meanZHP))
   (setq _reserved1 (round __reserved1))
   (setq _meanAcc (round __meanAcc))
   (setq _obs (round __obs))
   (setq _valid (round __valid))
   (setq _active (round __active))
   (setq _reserved3 __reserved3)
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:dur
   (&optional __dur)
   (if __dur (setq _dur __dur)) _dur)
  (:meanX
   (&optional __meanX)
   (if __meanX (setq _meanX __meanX)) _meanX)
  (:meanY
   (&optional __meanY)
   (if __meanY (setq _meanY __meanY)) _meanY)
  (:meanZ
   (&optional __meanZ)
   (if __meanZ (setq _meanZ __meanZ)) _meanZ)
  (:meanXHP
   (&optional __meanXHP)
   (if __meanXHP (setq _meanXHP __meanXHP)) _meanXHP)
  (:meanYHP
   (&optional __meanYHP)
   (if __meanYHP (setq _meanYHP __meanYHP)) _meanYHP)
  (:meanZHP
   (&optional __meanZHP)
   (if __meanZHP (setq _meanZHP __meanZHP)) _meanZHP)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:meanAcc
   (&optional __meanAcc)
   (if __meanAcc (setq _meanAcc __meanAcc)) _meanAcc)
  (:obs
   (&optional __obs)
   (if __obs (setq _obs __obs)) _obs)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:reserved3
   (&optional __reserved3)
   (if __reserved3 (setq _reserved3 __reserved3)) _reserved3)
  (:serialization-length
   ()
   (+
    ;; uint8 _version
    1
    ;; uint8[3] _reserved0
    (* 1    3)
    ;; uint32 _iTOW
    4
    ;; uint32 _dur
    4
    ;; int32 _meanX
    4
    ;; int32 _meanY
    4
    ;; int32 _meanZ
    4
    ;; int8 _meanXHP
    1
    ;; int8 _meanYHP
    1
    ;; int8 _meanZHP
    1
    ;; uint8 _reserved1
    1
    ;; uint32 _meanAcc
    4
    ;; uint32 _obs
    4
    ;; uint8 _valid
    1
    ;; uint8 _active
    1
    ;; uint8[2] _reserved3
    (* 1    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8[3] _reserved0
     (princ _reserved0 s)
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint32 _dur
       (write-long _dur s)
     ;; int32 _meanX
       (write-long _meanX s)
     ;; int32 _meanY
       (write-long _meanY s)
     ;; int32 _meanZ
       (write-long _meanZ s)
     ;; int8 _meanXHP
       (write-byte _meanXHP s)
     ;; int8 _meanYHP
       (write-byte _meanYHP s)
     ;; int8 _meanZHP
       (write-byte _meanZHP s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; uint32 _meanAcc
       (write-long _meanAcc s)
     ;; uint32 _obs
       (write-long _obs s)
     ;; uint8 _valid
       (write-byte _valid s)
     ;; uint8 _active
       (write-byte _active s)
     ;; uint8[2] _reserved3
     (princ _reserved3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved0
   (setq _reserved0 (make-array 3 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 3)
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _dur
     (setq _dur (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _meanX
     (setq _meanX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _meanY
     (setq _meanY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _meanZ
     (setq _meanZ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _meanXHP
     (setq _meanXHP (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _meanXHP 127) (setq _meanXHP (- _meanXHP 256)))
   ;; int8 _meanYHP
     (setq _meanYHP (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _meanYHP 127) (setq _meanYHP (- _meanYHP 256)))
   ;; int8 _meanZHP
     (setq _meanZHP (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _meanZHP 127) (setq _meanZHP (- _meanZHP 256)))
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _meanAcc
     (setq _meanAcc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _obs
     (setq _obs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _valid
     (setq _valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _active
     (setq _active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _reserved3
   (setq _reserved3 (make-array 2 :element-type :char))
   (replace _reserved3 buf :start2 ptr-) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ublox_msgs::NavSVIN :md5sum-) "c78016f30ce026b9e670e40dd151a8ac")
(setf (get ublox_msgs::NavSVIN :datatype-) "ublox_msgs/NavSVIN")
(setf (get ublox_msgs::NavSVIN :definition-)
      "# NAV-SVIN (0x01 0x3B)
# Survey-in data
# 
# This message contains information about survey-in parameters.
# Supported on:
#  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision
#    GNSS products)

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 59

uint8 version           # Message version (0x00 for this version)
uint8[3] reserved0      # Reserved

uint32 iTOW             # GPS time of week of the navigation epoch [ms]

uint32 dur              # Passed survey-in observation time [s]

int32 meanX             # Current survey-in mean position ECEF X coordinate [cm]
int32 meanY             # Current survey-in mean position ECEF Y coordinate [cm]
int32 meanZ             # Current survey-in mean position ECEF Z coordinate [cm]

int8 meanXHP            # Current high-precision survey-in mean position
                        # ECEF X coordinate. 0.1_mm 
                        # Must be in the range -99..+99.
                        # The current survey-in mean position ECEF X
                        # coordinate, in units of cm, is given by
                        # meanX + (0.01 * meanXHP)
int8 meanYHP            # Current high-precision survey-in mean position
                        # ECEF Y coordinate. [0.1 mm] 
                        # Must be in the range -99..+99.
                        # The current survey-in mean position ECEF Y
                        # coordinate, in units of cm, is given by
                        # meanY + (0.01 * meanYHP)
int8 meanZHP            # Current high-precision survey-in mean position
                        # ECEF Z coordinate. [0.1 mm] 
                        # Must be in the range -99..+99.
                        # The current survey-in mean position ECEF Z
                        # coordinate, in units of cm, is given by
                        # meanZ + (0.01 * meanZHP)

uint8 reserved1         # Reserved

uint32 meanAcc          # Current survey-in mean position accuracy [0.1 mm]
uint32 obs              # Number of position observations used during survey-in
uint8 valid             # Survey-in position validity flag, 1 = valid
                        # otherwise 0
uint8 active            # Survey-in in progress flag, 1 = in-progress
                        # otherwise 0

uint8[2] reserved3      # Reserved
")



(provide :ublox_msgs/NavSVIN "c78016f30ce026b9e670e40dd151a8ac")


