;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::MonGNSS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'MonGNSS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::MONGNSS")
  (make-package "UBLOX_MSGS::MONGNSS"))

(in-package "ROS")
;;//! \htmlinclude MonGNSS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::MONGNSS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::MONGNSS"))
(defconstant ublox_msgs::MonGNSS::*CLASS_ID* 10)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::MONGNSS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::MONGNSS"))
(defconstant ublox_msgs::MonGNSS::*MESSAGE_ID* 40)
(intern "*BIT_MASK_GPS*" (find-package "UBLOX_MSGS::MONGNSS"))
(shadow '*BIT_MASK_GPS* (find-package "UBLOX_MSGS::MONGNSS"))
(defconstant ublox_msgs::MonGNSS::*BIT_MASK_GPS* 1)
(intern "*BIT_MASK_GLONASS*" (find-package "UBLOX_MSGS::MONGNSS"))
(shadow '*BIT_MASK_GLONASS* (find-package "UBLOX_MSGS::MONGNSS"))
(defconstant ublox_msgs::MonGNSS::*BIT_MASK_GLONASS* 2)
(intern "*BIT_MASK_BEIDOU*" (find-package "UBLOX_MSGS::MONGNSS"))
(shadow '*BIT_MASK_BEIDOU* (find-package "UBLOX_MSGS::MONGNSS"))
(defconstant ublox_msgs::MonGNSS::*BIT_MASK_BEIDOU* 4)
(intern "*BIT_MASK_GALILEO*" (find-package "UBLOX_MSGS::MONGNSS"))
(shadow '*BIT_MASK_GALILEO* (find-package "UBLOX_MSGS::MONGNSS"))
(defconstant ublox_msgs::MonGNSS::*BIT_MASK_GALILEO* 8)
(defclass ublox_msgs::MonGNSS
  :super ros::object
  :slots (_version _supported _defaultGnss _enabled _simultaneous _reserved1 ))

(defmethod ublox_msgs::MonGNSS
  (:init
   (&key
    ((:version __version) 0)
    ((:supported __supported) 0)
    ((:defaultGnss __defaultGnss) 0)
    ((:enabled __enabled) 0)
    ((:simultaneous __simultaneous) 0)
    ((:reserved1 __reserved1) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _supported (round __supported))
   (setq _defaultGnss (round __defaultGnss))
   (setq _enabled (round __enabled))
   (setq _simultaneous (round __simultaneous))
   (setq _reserved1 __reserved1)
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:supported
   (&optional __supported)
   (if __supported (setq _supported __supported)) _supported)
  (:defaultGnss
   (&optional __defaultGnss)
   (if __defaultGnss (setq _defaultGnss __defaultGnss)) _defaultGnss)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:simultaneous
   (&optional __simultaneous)
   (if __simultaneous (setq _simultaneous __simultaneous)) _simultaneous)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint8 _version
    1
    ;; uint8 _supported
    1
    ;; uint8 _defaultGnss
    1
    ;; uint8 _enabled
    1
    ;; uint8 _simultaneous
    1
    ;; uint8[3] _reserved1
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8 _supported
       (write-byte _supported s)
     ;; uint8 _defaultGnss
       (write-byte _defaultGnss s)
     ;; uint8 _enabled
       (write-byte _enabled s)
     ;; uint8 _simultaneous
       (write-byte _simultaneous s)
     ;; uint8[3] _reserved1
     (princ _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _supported
     (setq _supported (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _defaultGnss
     (setq _defaultGnss (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _enabled
     (setq _enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _simultaneous
     (setq _simultaneous (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved1
   (setq _reserved1 (make-array 3 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get ublox_msgs::MonGNSS :md5sum-) "0986728889e4abf5eac46b70b74047ed")
(setf (get ublox_msgs::MonGNSS :datatype-) "ublox_msgs/MonGNSS")
(setf (get ublox_msgs::MonGNSS :definition-)
      "# MON-GNSS (0x0A 0x28)
# Information message major GNSS selection
#
# This message reports major GNSS selection. Augmentation systems are not
# reported.
# 

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 40

uint8 version         # Message version (0x01 for this version)

uint8 BIT_MASK_GPS = 1
uint8 BIT_MASK_GLONASS = 2
uint8 BIT_MASK_BEIDOU = 4
uint8 BIT_MASK_GALILEO = 8

uint8 supported       # The major GNSS that can be supported by this receiver
uint8 defaultGnss     # Default major GNSS selection. If the default major GNSS 
                      # selection is currently configured in the efuse for this 
                      # receiver, it takes precedence over the default major 
                      # GNSS selection configured in the executing firmware of 
                      # this receiver.
                      # see bit mask constants
uint8 enabled         # Current major GNSS selection enabled for this receiver
                      # see bit mask constants

uint8 simultaneous    # Maximum number of concurrent major GNSS that can be 
                      # supported by this receiver

uint8[3] reserved1    # Reserved

")



(provide :ublox_msgs/MonGNSS "0986728889e4abf5eac46b70b74047ed")


