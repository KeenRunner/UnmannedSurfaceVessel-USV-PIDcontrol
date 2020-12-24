;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::MonVER)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'MonVER (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::MONVER")
  (make-package "UBLOX_MSGS::MONVER"))

(in-package "ROS")
;;//! \htmlinclude MonVER.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::MONVER"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::MONVER"))
(defconstant ublox_msgs::MonVER::*CLASS_ID* 10)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::MONVER"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::MONVER"))
(defconstant ublox_msgs::MonVER::*MESSAGE_ID* 4)
(defclass ublox_msgs::MonVER
  :super ros::object
  :slots (_swVersion _hwVersion _extension ))

(defmethod ublox_msgs::MonVER
  (:init
   (&key
    ((:swVersion __swVersion) (make-array 30 :initial-element 0 :element-type :integer))
    ((:hwVersion __hwVersion) (make-array 10 :initial-element 0 :element-type :integer))
    ((:extension __extension) (let (r) (dotimes (i 0) (push (instance ublox_msgs::MonVER_Extension :init) r)) r))
    )
   (send-super :init)
   (setq _swVersion __swVersion)
   (setq _hwVersion __hwVersion)
   (setq _extension __extension)
   self)
  (:swVersion
   (&optional __swVersion)
   (if __swVersion (setq _swVersion __swVersion)) _swVersion)
  (:hwVersion
   (&optional __hwVersion)
   (if __hwVersion (setq _hwVersion __hwVersion)) _hwVersion)
  (:extension
   (&rest __extension)
   (if (keywordp (car __extension))
       (send* _extension __extension)
     (progn
       (if __extension (setq _extension (car __extension)))
       _extension)))
  (:serialization-length
   ()
   (+
    ;; char[30] _swVersion
    (* 1    30)
    ;; char[10] _hwVersion
    (* 1    10)
    ;; ublox_msgs/MonVER_Extension[] _extension
    (apply #'+ (send-all _extension :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char[30] _swVersion
     (dotimes (i 30)
       (write-byte (elt _swVersion i) s)
       )
     ;; char[10] _hwVersion
     (dotimes (i 10)
       (write-byte (elt _hwVersion i) s)
       )
     ;; ublox_msgs/MonVER_Extension[] _extension
     (write-long (length _extension) s)
     (dolist (elem _extension)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char[30] _swVersion
   (dotimes (i (length _swVersion))
     (setf (elt _swVersion i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[10] _hwVersion
   (dotimes (i (length _hwVersion))
     (setf (elt _hwVersion i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; ublox_msgs/MonVER_Extension[] _extension
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _extension (let (r) (dotimes (i n) (push (instance ublox_msgs::MonVER_Extension :init) r)) r))
     (dolist (elem- _extension)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::MonVER :md5sum-) "83c8a03d7744e76cc085d953e1a5a293")
(setf (get ublox_msgs::MonVER :datatype-) "ublox_msgs/MonVER")
(setf (get ublox_msgs::MonVER :definition-)
      "# MON-VER (0x0A 0x04)
#
# Receiver/Software Version
# Returned when the version is polled.

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 4

char[30] swVersion    # Zero-terminated software version string.
char[10] hwVersion    # Zero-terminated hardware version string.

# Start of repeated block (N times)
MonVER_Extension[] extension
# End of repeated block

================================================================================
MSG: ublox_msgs/MonVER_Extension
# see MonVER message
#

char[30] field
")



(provide :ublox_msgs/MonVER "83c8a03d7744e76cc085d953e1a5a293")


