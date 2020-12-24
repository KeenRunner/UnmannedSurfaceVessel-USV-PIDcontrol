;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::Inf)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'Inf (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::INF")
  (make-package "UBLOX_MSGS::INF"))

(in-package "ROS")
;;//! \htmlinclude Inf.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::INF"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::INF"))
(defconstant ublox_msgs::Inf::*CLASS_ID* 4)
(defclass ublox_msgs::Inf
  :super ros::object
  :slots (_str ))

(defmethod ublox_msgs::Inf
  (:init
   (&key
    ((:str __str) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _str __str)
   self)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; char[] _str
    (* 1    (length _str)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char[] _str
     (write-long (length _str) s)
     (dotimes (i (length _str))
       (write-byte (elt _str i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char[] _str
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _str (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _str i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::Inf :md5sum-) "d1c433234e5eccc57045e40aca48eb6e")
(setf (get ublox_msgs::Inf :datatype-) "ublox_msgs/Inf")
(setf (get ublox_msgs::Inf :definition-)
      "# UBX-INF (0x04, 0x00...0x04)
# ASCII output
#
# This message has a variable length payload, representing an ASCII string.
#

uint8 CLASS_ID = 4

char[] str
")



(provide :ublox_msgs/Inf "d1c433234e5eccc57045e40aca48eb6e")


