;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::EsfRAW_Block)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'EsfRAW_Block (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::ESFRAW_BLOCK")
  (make-package "UBLOX_MSGS::ESFRAW_BLOCK"))

(in-package "ROS")
;;//! \htmlinclude EsfRAW_Block.msg.html


(intern "*DATA_FIELD_MASK*" (find-package "UBLOX_MSGS::ESFRAW_BLOCK"))
(shadow '*DATA_FIELD_MASK* (find-package "UBLOX_MSGS::ESFRAW_BLOCK"))
(defconstant ublox_msgs::EsfRAW_Block::*DATA_FIELD_MASK* 16777215)
(intern "*DATA_TYPE_MASK*" (find-package "UBLOX_MSGS::ESFRAW_BLOCK"))
(shadow '*DATA_TYPE_MASK* (find-package "UBLOX_MSGS::ESFRAW_BLOCK"))
(defconstant ublox_msgs::EsfRAW_Block::*DATA_TYPE_MASK* 4278190080)
(defclass ublox_msgs::EsfRAW_Block
  :super ros::object
  :slots (_data _sTtag ))

(defmethod ublox_msgs::EsfRAW_Block
  (:init
   (&key
    ((:data __data) 0)
    ((:sTtag __sTtag) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   (setq _sTtag (round __sTtag))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:sTtag
   (&optional __sTtag)
   (if __sTtag (setq _sTtag __sTtag)) _sTtag)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ;; uint32 _sTtag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;; uint32 _sTtag
       (write-long _sTtag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sTtag
     (setq _sTtag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::EsfRAW_Block :md5sum-) "b688443e4ebc6f99b9ac9276b838d477")
(setf (get ublox_msgs::EsfRAW_Block :datatype-) "ublox_msgs/EsfRAW_Block")
(setf (get ublox_msgs::EsfRAW_Block :definition-)
      "# See ESF-RAW

uint32 data      # Its scaling and unit depends on the type and is
                # the same as in ESF-MEAS
uint32 DATA_FIELD_MASK = 16777215
uint32 DATA_TYPE_MASK = 4278190080    # type of data 
                                      # (0 = no data; 1..255 = data type)
uint32 sTtag     # sensor time tag
")



(provide :ublox_msgs/EsfRAW_Block "b688443e4ebc6f99b9ac9276b838d477")


