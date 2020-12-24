;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgDAT)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgDAT (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGDAT")
  (make-package "UBLOX_MSGS::CFGDAT"))

(in-package "ROS")
;;//! \htmlinclude CfgDAT.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGDAT"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGDAT"))
(defconstant ublox_msgs::CfgDAT::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGDAT"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGDAT"))
(defconstant ublox_msgs::CfgDAT::*MESSAGE_ID* 6)
(intern "*DATUM_NUM_WGS84*" (find-package "UBLOX_MSGS::CFGDAT"))
(shadow '*DATUM_NUM_WGS84* (find-package "UBLOX_MSGS::CFGDAT"))
(defconstant ublox_msgs::CfgDAT::*DATUM_NUM_WGS84* 0)
(intern "*DATUM_NUM_USER*" (find-package "UBLOX_MSGS::CFGDAT"))
(shadow '*DATUM_NUM_USER* (find-package "UBLOX_MSGS::CFGDAT"))
(defconstant ublox_msgs::CfgDAT::*DATUM_NUM_USER* 65535)
(defclass ublox_msgs::CfgDAT
  :super ros::object
  :slots (_datumNum _datumName _majA _flat _dX _dY _dZ _rotX _rotY _rotZ _scale ))

(defmethod ublox_msgs::CfgDAT
  (:init
   (&key
    ((:datumNum __datumNum) 0)
    ((:datumName __datumName) (make-array 6 :initial-element 0 :element-type :char))
    ((:majA __majA) 0.0)
    ((:flat __flat) 0.0)
    ((:dX __dX) 0.0)
    ((:dY __dY) 0.0)
    ((:dZ __dZ) 0.0)
    ((:rotX __rotX) 0.0)
    ((:rotY __rotY) 0.0)
    ((:rotZ __rotZ) 0.0)
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _datumNum (round __datumNum))
   (setq _datumName __datumName)
   (setq _majA (float __majA))
   (setq _flat (float __flat))
   (setq _dX (float __dX))
   (setq _dY (float __dY))
   (setq _dZ (float __dZ))
   (setq _rotX (float __rotX))
   (setq _rotY (float __rotY))
   (setq _rotZ (float __rotZ))
   (setq _scale (float __scale))
   self)
  (:datumNum
   (&optional __datumNum)
   (if __datumNum (setq _datumNum __datumNum)) _datumNum)
  (:datumName
   (&optional __datumName)
   (if __datumName (setq _datumName __datumName)) _datumName)
  (:majA
   (&optional __majA)
   (if __majA (setq _majA __majA)) _majA)
  (:flat
   (&optional __flat)
   (if __flat (setq _flat __flat)) _flat)
  (:dX
   (&optional __dX)
   (if __dX (setq _dX __dX)) _dX)
  (:dY
   (&optional __dY)
   (if __dY (setq _dY __dY)) _dY)
  (:dZ
   (&optional __dZ)
   (if __dZ (setq _dZ __dZ)) _dZ)
  (:rotX
   (&optional __rotX)
   (if __rotX (setq _rotX __rotX)) _rotX)
  (:rotY
   (&optional __rotY)
   (if __rotY (setq _rotY __rotY)) _rotY)
  (:rotZ
   (&optional __rotZ)
   (if __rotZ (setq _rotZ __rotZ)) _rotZ)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; uint16 _datumNum
    2
    ;; uint8[6] _datumName
    (* 1    6)
    ;; float64 _majA
    8
    ;; float64 _flat
    8
    ;; float32 _dX
    4
    ;; float32 _dY
    4
    ;; float32 _dZ
    4
    ;; float32 _rotX
    4
    ;; float32 _rotY
    4
    ;; float32 _rotZ
    4
    ;; float32 _scale
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _datumNum
       (write-word _datumNum s)
     ;; uint8[6] _datumName
     (princ _datumName s)
     ;; float64 _majA
       (sys::poke _majA (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flat
       (sys::poke _flat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _dX
       (sys::poke _dX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dY
       (sys::poke _dY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dZ
       (sys::poke _dZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotX
       (sys::poke _rotX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotY
       (sys::poke _rotY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotZ
       (sys::poke _rotZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _datumNum
     (setq _datumNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[6] _datumName
   (setq _datumName (make-array 6 :element-type :char))
   (replace _datumName buf :start2 ptr-) (incf ptr- 6)
   ;; float64 _majA
     (setq _majA (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flat
     (setq _flat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _dX
     (setq _dX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dY
     (setq _dY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dZ
     (setq _dZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotX
     (setq _rotX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotY
     (setq _rotY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotZ
     (setq _rotZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _scale
     (setq _scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgDAT :md5sum-) "05d7a26d8a386fd3054953454a03b113")
(setf (get ublox_msgs::CfgDAT :datatype-) "ublox_msgs/CfgDAT")
(setf (get ublox_msgs::CfgDAT :definition-)
      "# CFG-DAT (0x06 0x06)
# Set User-defined Datum
# 
# For more information see the description of Geodetic Systems and Frames.
# 

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 6

# Only for GET, these values are not used for write
uint16 datumNum       # Datum Number: 0 = WGS84, 0xFFFF = user-defined
uint16 DATUM_NUM_WGS84 = 0
uint16 DATUM_NUM_USER = 65535

uint8[6] datumName    # ASCII String: WGS84 or USER

float64 majA          # Semi-major Axis [m]
                      # accepted range = 6,300,000.0 to 6,500,000.0 meters 
float64 flat          # 1.0 / Flattening 
                      # accepted range is 0.0 to 500.0

float32 dX            # X Axis shift at the origin [m]
                      # accepted range is +/- 5000.0 meters 
float32 dY            # Y Axis shift at the origin [m]
                      # accepted range is +/- 5000.0 meters 
float32 dZ            # Z Axis shift at the origin [m]
                      # accepted range is +/- 5000.0 meters 

float32 rotX          # Rotation about the X Axis [s]
                      # accepted range is +/- 20.0 milli-arc seconds 
float32 rotY          # Rotation about the Y Axis [s]
                      # accepted range is +/- 20.0 milli-arc seconds 
float32 rotZ          # Rotation about the Z Axis [s]
                      # accepted range is +/- 20.0 milli-arc seconds

float32 scale         # Scale change [ppm]
                      # accepted range is 0.0 to 50.0 parts per million
")



(provide :ublox_msgs/CfgDAT "05d7a26d8a386fd3054953454a03b113")


