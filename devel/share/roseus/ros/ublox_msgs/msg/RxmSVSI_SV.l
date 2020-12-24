;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmSVSI_SV)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmSVSI_SV (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMSVSI_SV")
  (make-package "UBLOX_MSGS::RXMSVSI_SV"))

(in-package "ROS")
;;//! \htmlinclude RxmSVSI_SV.msg.html


(intern "*FLAG_URA_MASK*" (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(shadow '*FLAG_URA_MASK* (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(defconstant ublox_msgs::RxmSVSI_SV::*FLAG_URA_MASK* 15)
(intern "*FLAG_HEALTHY*" (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(shadow '*FLAG_HEALTHY* (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(defconstant ublox_msgs::RxmSVSI_SV::*FLAG_HEALTHY* 16)
(intern "*FLAG_EPH_VAL*" (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(shadow '*FLAG_EPH_VAL* (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(defconstant ublox_msgs::RxmSVSI_SV::*FLAG_EPH_VAL* 32)
(intern "*FLAG_ALM_VAL*" (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(shadow '*FLAG_ALM_VAL* (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(defconstant ublox_msgs::RxmSVSI_SV::*FLAG_ALM_VAL* 64)
(intern "*FLAG_NOT_AVAIL*" (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(shadow '*FLAG_NOT_AVAIL* (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(defconstant ublox_msgs::RxmSVSI_SV::*FLAG_NOT_AVAIL* 128)
(intern "*AGE_ALM_MASK*" (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(shadow '*AGE_ALM_MASK* (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(defconstant ublox_msgs::RxmSVSI_SV::*AGE_ALM_MASK* 15)
(intern "*AGE_EPH_MASK*" (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(shadow '*AGE_EPH_MASK* (find-package "UBLOX_MSGS::RXMSVSI_SV"))
(defconstant ublox_msgs::RxmSVSI_SV::*AGE_EPH_MASK* 240)
(defclass ublox_msgs::RxmSVSI_SV
  :super ros::object
  :slots (_svid _svFlag _azim _elev _age ))

(defmethod ublox_msgs::RxmSVSI_SV
  (:init
   (&key
    ((:svid __svid) 0)
    ((:svFlag __svFlag) 0)
    ((:azim __azim) 0)
    ((:elev __elev) 0)
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _svid (round __svid))
   (setq _svFlag (round __svFlag))
   (setq _azim (round __azim))
   (setq _elev (round __elev))
   (setq _age (round __age))
   self)
  (:svid
   (&optional __svid)
   (if __svid (setq _svid __svid)) _svid)
  (:svFlag
   (&optional __svFlag)
   (if __svFlag (setq _svFlag __svFlag)) _svFlag)
  (:azim
   (&optional __azim)
   (if __azim (setq _azim __azim)) _azim)
  (:elev
   (&optional __elev)
   (if __elev (setq _elev __elev)) _elev)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; uint8 _svid
    1
    ;; uint8 _svFlag
    1
    ;; int16 _azim
    2
    ;; int8 _elev
    1
    ;; uint8 _age
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _svid
       (write-byte _svid s)
     ;; uint8 _svFlag
       (write-byte _svFlag s)
     ;; int16 _azim
       (write-word _azim s)
     ;; int8 _elev
       (write-byte _elev s)
     ;; uint8 _age
       (write-byte _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _svid
     (setq _svid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svFlag
     (setq _svFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _azim
     (setq _azim (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _elev
     (setq _elev (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _elev 127) (setq _elev (- _elev 256)))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::RxmSVSI_SV :md5sum-) "055e3ca33052c1635aff80c3f8ab6197")
(setf (get ublox_msgs::RxmSVSI_SV :datatype-) "ublox_msgs/RxmSVSI_SV")
(setf (get ublox_msgs::RxmSVSI_SV :definition-)
      "# see message RxmSVSI
#

uint8 svid            # Satellite ID

uint8 svFlag          # Information Flags
uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15
uint8 FLAG_HEALTHY = 16       # SV healthy flag
uint8 FLAG_EPH_VAL = 32       # Ephemeris valid
uint8 FLAG_ALM_VAL = 64       # Almanac valid
uint8 FLAG_NOT_AVAIL = 128    # SV not available

int16 azim            # Azimuth
int8 elev             # Elevation

uint8 age             # Age of Almanac and Ephemeris
uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4
                              # i.e. the reference time may be in the future:
                              # ageOfAlm = (age & 0x0f) - 4
uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.
                              # i.e. the reference time may be in the future:
                              # ageOfEph = ((age & 0xf0) >> 4) - 4

")



(provide :ublox_msgs/RxmSVSI_SV "055e3ca33052c1635aff80c3f8ab6197")


