;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::MonVER_Extension)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'MonVER_Extension (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::MONVER_EXTENSION")
  (make-package "UBLOX_MSGS::MONVER_EXTENSION"))

(in-package "ROS")
;;//! \htmlinclude MonVER_Extension.msg.html


(defclass ublox_msgs::MonVER_Extension
  :super ros::object
  :slots (_field ))

(defmethod ublox_msgs::MonVER_Extension
  (:init
   (&key
    ((:field __field) (make-array 30 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _field __field)
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:serialization-length
   ()
   (+
    ;; char[30] _field
    (* 1    30)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char[30] _field
     (dotimes (i 30)
       (write-byte (elt _field i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char[30] _field
   (dotimes (i (length _field))
     (setf (elt _field i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get ublox_msgs::MonVER_Extension :md5sum-) "ef92c9d93e6bd2c2701384b0595ac2b4")
(setf (get ublox_msgs::MonVER_Extension :datatype-) "ublox_msgs/MonVER_Extension")
(setf (get ublox_msgs::MonVER_Extension :definition-)
      "# see MonVER message
#

char[30] field
")



(provide :ublox_msgs/MonVER_Extension "ef92c9d93e6bd2c2701384b0595ac2b4")


