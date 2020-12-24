;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSBAS_SV)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSBAS_SV (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSBAS_SV")
  (make-package "UBLOX_MSGS::NAVSBAS_SV"))

(in-package "ROS")
;;//! \htmlinclude NavSBAS_SV.msg.html


(defclass ublox_msgs::NavSBAS_SV
  :super ros::object
  :slots (_svid _flags _udre _svSys _svService _reserved1 _prc _reserved2 _ic ))

(defmethod ublox_msgs::NavSBAS_SV
  (:init
   (&key
    ((:svid __svid) 0)
    ((:flags __flags) 0)
    ((:udre __udre) 0)
    ((:svSys __svSys) 0)
    ((:svService __svService) 0)
    ((:reserved1 __reserved1) 0)
    ((:prc __prc) 0)
    ((:reserved2 __reserved2) 0)
    ((:ic __ic) 0)
    )
   (send-super :init)
   (setq _svid (round __svid))
   (setq _flags (round __flags))
   (setq _udre (round __udre))
   (setq _svSys (round __svSys))
   (setq _svService (round __svService))
   (setq _reserved1 (round __reserved1))
   (setq _prc (round __prc))
   (setq _reserved2 (round __reserved2))
   (setq _ic (round __ic))
   self)
  (:svid
   (&optional __svid)
   (if __svid (setq _svid __svid)) _svid)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:udre
   (&optional __udre)
   (if __udre (setq _udre __udre)) _udre)
  (:svSys
   (&optional __svSys)
   (if __svSys (setq _svSys __svSys)) _svSys)
  (:svService
   (&optional __svService)
   (if __svService (setq _svService __svService)) _svService)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:prc
   (&optional __prc)
   (if __prc (setq _prc __prc)) _prc)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:ic
   (&optional __ic)
   (if __ic (setq _ic __ic)) _ic)
  (:serialization-length
   ()
   (+
    ;; uint8 _svid
    1
    ;; uint8 _flags
    1
    ;; uint8 _udre
    1
    ;; uint8 _svSys
    1
    ;; uint8 _svService
    1
    ;; uint8 _reserved1
    1
    ;; int16 _prc
    2
    ;; uint16 _reserved2
    2
    ;; int16 _ic
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _svid
       (write-byte _svid s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint8 _udre
       (write-byte _udre s)
     ;; uint8 _svSys
       (write-byte _svSys s)
     ;; uint8 _svService
       (write-byte _svService s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; int16 _prc
       (write-word _prc s)
     ;; uint16 _reserved2
       (write-word _reserved2 s)
     ;; int16 _ic
       (write-word _ic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _svid
     (setq _svid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _udre
     (setq _udre (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svSys
     (setq _svSys (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svService
     (setq _svService (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _prc
     (setq _prc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ic
     (setq _ic (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ublox_msgs::NavSBAS_SV :md5sum-) "45259031fe19a4df2f5a4a667356a0bc")
(setf (get ublox_msgs::NavSBAS_SV :datatype-) "ublox_msgs/NavSBAS_SV")
(setf (get ublox_msgs::NavSBAS_SV :definition-)
      "# see message NavSBAS
#

uint8 svid              # SV Id
uint8 flags             # Flags for this SV
uint8 udre              # Monitoring status
uint8 svSys             # System (WAAS/EGNOS/...), same as SYS
uint8 svService         # Services available, same as SERVICE
uint8 reserved1         # Reserved
int16 prc               # Pseudo Range correction in [cm]
uint16 reserved2        # Reserved
int16 ic                # Ionosphere correction in [cm]

")



(provide :ublox_msgs/NavSBAS_SV "45259031fe19a4df2f5a4a667356a0bc")


