;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmRAW_SV)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmRAW_SV (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMRAW_SV")
  (make-package "UBLOX_MSGS::RXMRAW_SV"))

(in-package "ROS")
;;//! \htmlinclude RxmRAW_SV.msg.html


(defclass ublox_msgs::RxmRAW_SV
  :super ros::object
  :slots (_cpMes _prMes _doMes _sv _mesQI _cno _lli ))

(defmethod ublox_msgs::RxmRAW_SV
  (:init
   (&key
    ((:cpMes __cpMes) 0.0)
    ((:prMes __prMes) 0.0)
    ((:doMes __doMes) 0.0)
    ((:sv __sv) 0)
    ((:mesQI __mesQI) 0)
    ((:cno __cno) 0)
    ((:lli __lli) 0)
    )
   (send-super :init)
   (setq _cpMes (float __cpMes))
   (setq _prMes (float __prMes))
   (setq _doMes (float __doMes))
   (setq _sv (round __sv))
   (setq _mesQI (round __mesQI))
   (setq _cno (round __cno))
   (setq _lli (round __lli))
   self)
  (:cpMes
   (&optional __cpMes)
   (if __cpMes (setq _cpMes __cpMes)) _cpMes)
  (:prMes
   (&optional __prMes)
   (if __prMes (setq _prMes __prMes)) _prMes)
  (:doMes
   (&optional __doMes)
   (if __doMes (setq _doMes __doMes)) _doMes)
  (:sv
   (&optional __sv)
   (if __sv (setq _sv __sv)) _sv)
  (:mesQI
   (&optional __mesQI)
   (if __mesQI (setq _mesQI __mesQI)) _mesQI)
  (:cno
   (&optional __cno)
   (if __cno (setq _cno __cno)) _cno)
  (:lli
   (&optional __lli)
   (if __lli (setq _lli __lli)) _lli)
  (:serialization-length
   ()
   (+
    ;; float64 _cpMes
    8
    ;; float64 _prMes
    8
    ;; float32 _doMes
    4
    ;; uint8 _sv
    1
    ;; int8 _mesQI
    1
    ;; int8 _cno
    1
    ;; uint8 _lli
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cpMes
       (sys::poke _cpMes (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prMes
       (sys::poke _prMes (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _doMes
       (sys::poke _doMes (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _sv
       (write-byte _sv s)
     ;; int8 _mesQI
       (write-byte _mesQI s)
     ;; int8 _cno
       (write-byte _cno s)
     ;; uint8 _lli
       (write-byte _lli s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cpMes
     (setq _cpMes (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prMes
     (setq _prMes (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _doMes
     (setq _doMes (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _sv
     (setq _sv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _mesQI
     (setq _mesQI (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mesQI 127) (setq _mesQI (- _mesQI 256)))
   ;; int8 _cno
     (setq _cno (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cno 127) (setq _cno (- _cno 256)))
   ;; uint8 _lli
     (setq _lli (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::RxmRAW_SV :md5sum-) "4b32efd29577416a2c280e629abcb69a")
(setf (get ublox_msgs::RxmRAW_SV :datatype-) "ublox_msgs/RxmRAW_SV")
(setf (get ublox_msgs::RxmRAW_SV :definition-)
      "# see message RxmRAW
#

float64 cpMes             # Carrier phase measurement [L1 cycles]
float64 prMes             # Pseudorange measurement [m]
float32 doMes             # Doppler measurement [Hz]

uint8 sv                  # Space Vehicle Number
int8 mesQI                # Nav Measurements Quality Indicator
                          #  >=4 : PR+DO OK
                          #  >=5 : PR+DO+CP OK
                          #  <6 : likely loss of carrier lock in previous 
                          #       interval
int8 cno                  # Signal strength C/No. [dbHz]
uint8 lli                 # Loss of lock indicator (RINEX definition)

")



(provide :ublox_msgs/RxmRAW_SV "4b32efd29577416a2c280e629abcb69a")


