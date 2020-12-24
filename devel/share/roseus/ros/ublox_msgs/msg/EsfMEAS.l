;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::EsfMEAS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'EsfMEAS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::ESFMEAS")
  (make-package "UBLOX_MSGS::ESFMEAS"))

(in-package "ROS")
;;//! \htmlinclude EsfMEAS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*CLASS_ID* 16)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*MESSAGE_ID* 2)
(intern "*FLAGS_TIME_MARK_SENT_MASK*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*FLAGS_TIME_MARK_SENT_MASK* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*FLAGS_TIME_MARK_SENT_MASK* 3)
(intern "*TIME_MARK_NONE*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*TIME_MARK_NONE* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*TIME_MARK_NONE* 0)
(intern "*TIME_MARK_EXT0*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*TIME_MARK_EXT0* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*TIME_MARK_EXT0* 1)
(intern "*TIME_MARK_EXT*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*TIME_MARK_EXT* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*TIME_MARK_EXT* 2)
(intern "*FLAGS_TIME_MARK_EDGE*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*FLAGS_TIME_MARK_EDGE* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*FLAGS_TIME_MARK_EDGE* 4)
(intern "*FLAGS_CALIB_T_TAG_VALID*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*FLAGS_CALIB_T_TAG_VALID* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*FLAGS_CALIB_T_TAG_VALID* 8)
(intern "*DATA_FIELD_MASK*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_FIELD_MASK* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_FIELD_MASK* 16777215)
(intern "*DATA_TYPE_MASK*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_MASK* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_MASK* 1056964608)
(intern "*DATA_TYPE_SHIFT*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_SHIFT* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_SHIFT* 24)
(intern "*DATA_TYPE_NONE*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_NONE* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_NONE* 0)
(intern "*DATA_TYPE_Z_AXIS_GYRO*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_Z_AXIS_GYRO* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_Z_AXIS_GYRO* 5)
(intern "*DATA_TYPE_WHEEL_TICKS_FRONT_LEFT*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_WHEEL_TICKS_FRONT_LEFT* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_WHEEL_TICKS_FRONT_LEFT* 6)
(intern "*DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT* 7)
(intern "*DATA_TYPE_WHEEL_TICKS_REAR_LEFT*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_WHEEL_TICKS_REAR_LEFT* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_WHEEL_TICKS_REAR_LEFT* 8)
(intern "*DATA_TYPE_WHEEL_TICKS_REAR_RIGHT*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_WHEEL_TICKS_REAR_RIGHT* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_WHEEL_TICKS_REAR_RIGHT* 9)
(intern "*DATA_TYPE_SINGLE_TICK*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_SINGLE_TICK* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_SINGLE_TICK* 10)
(intern "*DATA_TYPE_SPEED*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_SPEED* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_SPEED* 11)
(intern "*DATA_TYPE_GYRO_TEMPERATURE*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_GYRO_TEMPERATURE* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_GYRO_TEMPERATURE* 12)
(intern "*DATA_TYPE_GYRO_ANG_RATE_Y*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_GYRO_ANG_RATE_Y* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_GYRO_ANG_RATE_Y* 13)
(intern "*DATA_TYPE_GYRO_ANG_RATE_X*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_GYRO_ANG_RATE_X* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_GYRO_ANG_RATE_X* 14)
(intern "*DATA_TYPE_ACCELEROMETER_X*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_ACCELEROMETER_X* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_ACCELEROMETER_X* 16)
(intern "*DATA_TYPE_ACCELEROMETER_Y*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_ACCELEROMETER_Y* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_ACCELEROMETER_Y* 17)
(intern "*DATA_TYPE_ACCELEROMETER_Z*" (find-package "UBLOX_MSGS::ESFMEAS"))
(shadow '*DATA_TYPE_ACCELEROMETER_Z* (find-package "UBLOX_MSGS::ESFMEAS"))
(defconstant ublox_msgs::EsfMEAS::*DATA_TYPE_ACCELEROMETER_Z* 18)
(defclass ublox_msgs::EsfMEAS
  :super ros::object
  :slots (_timeTag _flags _id _data _calibTtag ))

(defmethod ublox_msgs::EsfMEAS
  (:init
   (&key
    ((:timeTag __timeTag) 0)
    ((:flags __flags) 0)
    ((:id __id) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:calibTtag __calibTtag) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _timeTag (round __timeTag))
   (setq _flags (round __flags))
   (setq _id (round __id))
   (setq _data __data)
   (setq _calibTtag __calibTtag)
   self)
  (:timeTag
   (&optional __timeTag)
   (if __timeTag (setq _timeTag __timeTag)) _timeTag)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:calibTtag
   (&optional __calibTtag)
   (if __calibTtag (setq _calibTtag __calibTtag)) _calibTtag)
  (:serialization-length
   ()
   (+
    ;; uint32 _timeTag
    4
    ;; uint16 _flags
    2
    ;; uint16 _id
    2
    ;; uint32[] _data
    (* 4    (length _data)) 4
    ;; uint32[] _calibTtag
    (* 4    (length _calibTtag)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _timeTag
       (write-long _timeTag s)
     ;; uint16 _flags
       (write-word _flags s)
     ;; uint16 _id
       (write-word _id s)
     ;; uint32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;; uint32[] _calibTtag
     (write-long (length _calibTtag) s)
     (dotimes (i (length _calibTtag))
       (write-long (elt _calibTtag i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _timeTag
     (setq _timeTag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _calibTtag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _calibTtag (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _calibTtag i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::EsfMEAS :md5sum-) "2ee2c25c5689cb0a12cc22f118ece178")
(setf (get ublox_msgs::EsfMEAS :datatype-) "ublox_msgs/EsfMEAS")
(setf (get ublox_msgs::EsfMEAS :definition-)
      "# ESF-MEAS (0x10 0x02)
# External Sensor Fusion Measurements
# 
# Possible data types for the data field are described in the ESF Measurement 
# Data section
#

uint8 CLASS_ID = 16
uint8 MESSAGE_ID = 2

uint32 timeTag               # Time tag of measurement generated by external 
                             # sensor

uint16 flags                 # Flags. Set all unused bits to zero:
uint16 FLAGS_TIME_MARK_SENT_MASK = 3   # Time mark signal was supplied just 
                                       # prior to sending this message: 0 =
uint16 TIME_MARK_NONE = 0
uint16 TIME_MARK_EXT0 = 1
uint16 TIME_MARK_EXT = 2
uint16 FLAGS_TIME_MARK_EDGE = 4        # Trigger on rising (0) or falling 
                                       # (1) edge of time mark signal
uint16 FLAGS_CALIB_T_TAG_VALID = 8     # Calibration time tag available. 
                                       # Always set to zero.

uint16 id                              # Identification number of data provider

# Start of repeated block (N times)
uint32[] data                # data, see mask below
uint32 DATA_FIELD_MASK = 16777215     # data
uint32 DATA_TYPE_MASK = 1056964608    # type of data (1..63)
uint32 DATA_TYPE_SHIFT = 24
uint32 DATA_TYPE_NONE = 0                     # data field contains no data
uint32 DATA_TYPE_Z_AXIS_GYRO = 5              # z-axis gyroscope angular rate 
                                              # [deg/s *2^-12 signed]
uint32 DATA_TYPE_WHEEL_TICKS_FRONT_LEFT = 6   # front-left wheel ticks 
                                              # Bits 0-22: unsigned tick value. 
                                              # Bit 23: direction indicator 
                                              # (0=forward, 1=backward)
uint32 DATA_TYPE_WHEEL_TICKS_FRONT_RIGHT = 7  # front-right wheel ticks 
                                              # Bits 0-22: unsigned tick value. 
                                              # Bit 23: direction indicator 
                                              # (0=forward, 1=backward)
uint32 DATA_TYPE_WHEEL_TICKS_REAR_LEFT = 8    # rear-left wheel ticks 
                                              # Bits 0-22: unsigned tick value. 
                                              # Bit 23: direction indicator 
                                              # (0=forward, 1=backward)
uint32 DATA_TYPE_WHEEL_TICKS_REAR_RIGHT = 9   # rear-right wheel ticks 
                                              # Bits 0-22: unsigned tick value. 
                                              # Bit 23: direction indicator 
                                              # (0=forward, 1=backward)
uint32 DATA_TYPE_SINGLE_TICK = 10             # single tick (speed tick) 
                                              # Bits 0-22: unsigned tick value. 
                                              # Bit 23: direction indicator 
                                              # (0=forward, 1=backward)
uint32 DATA_TYPE_SPEED = 11                   # speed m/s * 1e-3 signed
uint32 DATA_TYPE_GYRO_TEMPERATURE = 12        # gyroscope temperature 
                                              # [deg Celsius * 1e-2 signed]
uint32 DATA_TYPE_GYRO_ANG_RATE_Y = 13         # y-axis gyroscope angular rate 
                                              # [deg/s *2^-12 signed]
uint32 DATA_TYPE_GYRO_ANG_RATE_X = 14         # x-axis gyroscope angular rate 
                                              # [deg/s *2^-12 signed]
uint32 DATA_TYPE_ACCELEROMETER_X = 16         # x-axis accelerometer specific 
                                              # [force m/s^2 *2^-10 signed]
uint32 DATA_TYPE_ACCELEROMETER_Y = 17         # y-axis accelerometer specific 
                                              # [force m/s^2 *2^-10 signed]
uint32 DATA_TYPE_ACCELEROMETER_Z = 18         # z-axis accelerometer specific 
                                              # [force m/s^2 *2^-10 signed]



# End of repeated block

# Start of optional block (size is either 0 or 1)
uint32[] calibTtag           # Receiver local time calibrated.
                             # This field must not be supplied when
                             # calibTtagValid is set to 0 [ms]
# End of optional block
")



(provide :ublox_msgs/EsfMEAS "2ee2c25c5689cb0a12cc22f118ece178")


