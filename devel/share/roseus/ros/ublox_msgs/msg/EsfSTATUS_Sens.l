;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::EsfSTATUS_Sens)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'EsfSTATUS_Sens (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::ESFSTATUS_SENS")
  (make-package "UBLOX_MSGS::ESFSTATUS_SENS"))

(in-package "ROS")
;;//! \htmlinclude EsfSTATUS_Sens.msg.html


(defclass ublox_msgs::EsfSTATUS_Sens
  :super ros::object
  :slots (_sensStatus1 _sensStatus2 _freq _faults ))

(defmethod ublox_msgs::EsfSTATUS_Sens
  (:init
   (&key
    ((:sensStatus1 __sensStatus1) 0)
    ((:sensStatus2 __sensStatus2) 0)
    ((:freq __freq) 0)
    ((:faults __faults) 0)
    )
   (send-super :init)
   (setq _sensStatus1 (round __sensStatus1))
   (setq _sensStatus2 (round __sensStatus2))
   (setq _freq (round __freq))
   (setq _faults (round __faults))
   self)
  (:sensStatus1
   (&optional __sensStatus1)
   (if __sensStatus1 (setq _sensStatus1 __sensStatus1)) _sensStatus1)
  (:sensStatus2
   (&optional __sensStatus2)
   (if __sensStatus2 (setq _sensStatus2 __sensStatus2)) _sensStatus2)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:faults
   (&optional __faults)
   (if __faults (setq _faults __faults)) _faults)
  (:serialization-length
   ()
   (+
    ;; uint8 _sensStatus1
    1
    ;; uint8 _sensStatus2
    1
    ;; uint8 _freq
    1
    ;; uint8 _faults
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sensStatus1
       (write-byte _sensStatus1 s)
     ;; uint8 _sensStatus2
       (write-byte _sensStatus2 s)
     ;; uint8 _freq
       (write-byte _freq s)
     ;; uint8 _faults
       (write-byte _faults s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sensStatus1
     (setq _sensStatus1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sensStatus2
     (setq _sensStatus2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _freq
     (setq _freq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _faults
     (setq _faults (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::EsfSTATUS_Sens :md5sum-) "642a0b5f53044e3a4dd28074dc540ef3")
(setf (get ublox_msgs::EsfSTATUS_Sens :datatype-) "ublox_msgs/EsfSTATUS_Sens")
(setf (get ublox_msgs::EsfSTATUS_Sens :definition-)
      "# See Esf-STATUS
#

uint8 sensStatus1   # Sensor status, part 1 (see graphic below)
uint8 sensStatus2   # Sensor status, part 2 (see graphic below)
uint8 freq          # Observation frequency [Hz]
uint8 faults        # Sensor faults (see graphic below)
")



(provide :ublox_msgs/EsfSTATUS_Sens "642a0b5f53044e3a4dd28074dc540ef3")


