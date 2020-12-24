;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::EsfRAW)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'EsfRAW (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::ESFRAW")
  (make-package "UBLOX_MSGS::ESFRAW"))

(in-package "ROS")
;;//! \htmlinclude EsfRAW.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::ESFRAW"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::ESFRAW"))
(defconstant ublox_msgs::EsfRAW::*CLASS_ID* 16)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::ESFRAW"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::ESFRAW"))
(defconstant ublox_msgs::EsfRAW::*MESSAGE_ID* 3)
(defclass ublox_msgs::EsfRAW
  :super ros::object
  :slots (_reserved0 _blocks ))

(defmethod ublox_msgs::EsfRAW
  (:init
   (&key
    ((:reserved0 __reserved0) (make-array 4 :initial-element 0 :element-type :char))
    ((:blocks __blocks) (let (r) (dotimes (i 0) (push (instance ublox_msgs::EsfRAW_Block :init) r)) r))
    )
   (send-super :init)
   (setq _reserved0 __reserved0)
   (setq _blocks __blocks)
   self)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:blocks
   (&rest __blocks)
   (if (keywordp (car __blocks))
       (send* _blocks __blocks)
     (progn
       (if __blocks (setq _blocks (car __blocks)))
       _blocks)))
  (:serialization-length
   ()
   (+
    ;; uint8[4] _reserved0
    (* 1    4)
    ;; ublox_msgs/EsfRAW_Block[] _blocks
    (apply #'+ (send-all _blocks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[4] _reserved0
     (princ _reserved0 s)
     ;; ublox_msgs/EsfRAW_Block[] _blocks
     (write-long (length _blocks) s)
     (dolist (elem _blocks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[4] _reserved0
   (setq _reserved0 (make-array 4 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 4)
   ;; ublox_msgs/EsfRAW_Block[] _blocks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blocks (let (r) (dotimes (i n) (push (instance ublox_msgs::EsfRAW_Block :init) r)) r))
     (dolist (elem- _blocks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::EsfRAW :md5sum-) "b942250c5ec94c6b6e69c63d82d9a946")
(setf (get ublox_msgs::EsfRAW :datatype-) "ublox_msgs/EsfRAW")
(setf (get ublox_msgs::EsfRAW :definition-)
      "# ESF-RAW (0x10 0x03)
# Raw sensor measurements
#
# The message contains measurements from the active inertial sensors connected
# to the GNSS chip. Possible data types for the data field are accelerometer,
# gyroscope and temperature readings as described in the ESF Measurement Data
# section. Note that the rate selected in CFG-MSG is not respected. If a
# positive rate is selected then all raw measurements will be output. 
#
# Supported on ADR/UDR products.
#

uint8 CLASS_ID = 16
uint8 MESSAGE_ID = 3

uint8[4] reserved0 # Reserved

EsfRAW_Block[] blocks
================================================================================
MSG: ublox_msgs/EsfRAW_Block
# See ESF-RAW

uint32 data      # Its scaling and unit depends on the type and is
                # the same as in ESF-MEAS
uint32 DATA_FIELD_MASK = 16777215
uint32 DATA_TYPE_MASK = 4278190080    # type of data 
                                      # (0 = no data; 1..255 = data type)
uint32 sTtag     # sensor time tag
")



(provide :ublox_msgs/EsfRAW "b942250c5ec94c6b6e69c63d82d9a946")


