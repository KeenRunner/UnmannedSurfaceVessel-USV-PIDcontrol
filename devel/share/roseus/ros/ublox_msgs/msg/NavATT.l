;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavATT)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavATT (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVATT")
  (make-package "UBLOX_MSGS::NAVATT"))

(in-package "ROS")
;;//! \htmlinclude NavATT.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVATT"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVATT"))
(defconstant ublox_msgs::NavATT::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVATT"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVATT"))
(defconstant ublox_msgs::NavATT::*MESSAGE_ID* 5)
(defclass ublox_msgs::NavATT
  :super ros::object
  :slots (_iTOW _version _reserved0 _roll _pitch _heading _accRoll _accPitch _accHeading ))

(defmethod ublox_msgs::NavATT
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:version __version) 0)
    ((:reserved0 __reserved0) (make-array 3 :initial-element 0 :element-type :char))
    ((:roll __roll) 0)
    ((:pitch __pitch) 0)
    ((:heading __heading) 0)
    ((:accRoll __accRoll) 0)
    ((:accPitch __accPitch) 0)
    ((:accHeading __accHeading) 0)
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _version (round __version))
   (setq _reserved0 __reserved0)
   (setq _roll (round __roll))
   (setq _pitch (round __pitch))
   (setq _heading (round __heading))
   (setq _accRoll (round __accRoll))
   (setq _accPitch (round __accPitch))
   (setq _accHeading (round __accHeading))
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:accRoll
   (&optional __accRoll)
   (if __accRoll (setq _accRoll __accRoll)) _accRoll)
  (:accPitch
   (&optional __accPitch)
   (if __accPitch (setq _accPitch __accPitch)) _accPitch)
  (:accHeading
   (&optional __accHeading)
   (if __accHeading (setq _accHeading __accHeading)) _accHeading)
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint8 _version
    1
    ;; uint8[3] _reserved0
    (* 1    3)
    ;; int32 _roll
    4
    ;; int32 _pitch
    4
    ;; int32 _heading
    4
    ;; uint32 _accRoll
    4
    ;; uint32 _accPitch
    4
    ;; uint32 _accHeading
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8[3] _reserved0
     (princ _reserved0 s)
     ;; int32 _roll
       (write-long _roll s)
     ;; int32 _pitch
       (write-long _pitch s)
     ;; int32 _heading
       (write-long _heading s)
     ;; uint32 _accRoll
       (write-long _accRoll s)
     ;; uint32 _accPitch
       (write-long _accPitch s)
     ;; uint32 _accHeading
       (write-long _accHeading s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved0
   (setq _reserved0 (make-array 3 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 3)
   ;; int32 _roll
     (setq _roll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pitch
     (setq _pitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _heading
     (setq _heading (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _accRoll
     (setq _accRoll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _accPitch
     (setq _accPitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _accHeading
     (setq _accHeading (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::NavATT :md5sum-) "5d7fd152cc974cdd6905d89f564451b6")
(setf (get ublox_msgs::NavATT :datatype-) "ublox_msgs/NavATT")
(setf (get ublox_msgs::NavATT :definition-)
      "# NAV-ATT (0x01 0x05)
# Attitude Solution
#
# This message outputs the attitude solution as roll, pitch and heading angles.
# Supported on ADR and UDR products.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 5

uint32 iTOW               # GPS time of week of the navigation epoch [ms]
uint8 version             # Message version (0 for this version)

uint8[3] reserved0        # Reserved

int32 roll                # Vehicle roll. [deg / 1e-5]
int32 pitch               # Vehicle pitch. [deg / 1e-5]
int32 heading             # Vehicle heading. [deg / 1e-5]
uint32 accRoll            # Vehicle roll accuracy (if null, roll angle is not 
                          # available). [deg / 1e-5]
uint32 accPitch           # Vehicle pitch accuracy (if null, pitch angle is not 
                          # available). [deg / 1e-5]
uint32 accHeading         # Vehicle heading accuracy [deg / 1e-5]
")



(provide :ublox_msgs/NavATT "5d7fd152cc974cdd6905d89f564451b6")


