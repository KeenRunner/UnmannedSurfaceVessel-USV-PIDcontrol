;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::NavSBAS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'NavSBAS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::NAVSBAS")
  (make-package "UBLOX_MSGS::NAVSBAS"))

(in-package "ROS")
;;//! \htmlinclude NavSBAS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*CLASS_ID* 1)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*MESSAGE_ID* 50)
(intern "*MODE_DISABLED*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*MODE_DISABLED* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*MODE_DISABLED* 0)
(intern "*MODE_ENABLED_INTEGRITY*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*MODE_ENABLED_INTEGRITY* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*MODE_ENABLED_INTEGRITY* 1)
(intern "*MODE_ENABLED_TESTMODE*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*MODE_ENABLED_TESTMODE* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*MODE_ENABLED_TESTMODE* 3)
(intern "*SYS_UNKNOWN*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SYS_UNKNOWN* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SYS_UNKNOWN* -1)
(intern "*SYS_WAAS*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SYS_WAAS* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SYS_WAAS* 0)
(intern "*SYS_EGNOS*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SYS_EGNOS* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SYS_EGNOS* 1)
(intern "*SYS_MSAS*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SYS_MSAS* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SYS_MSAS* 2)
(intern "*SYS_GAGAN*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SYS_GAGAN* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SYS_GAGAN* 3)
(intern "*SYS_GPS*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SYS_GPS* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SYS_GPS* 16)
(intern "*SERVICE_RANGING*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SERVICE_RANGING* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SERVICE_RANGING* 1)
(intern "*SERVICE_CORRECTIONS*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SERVICE_CORRECTIONS* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SERVICE_CORRECTIONS* 2)
(intern "*SERVICE_INTEGRITY*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SERVICE_INTEGRITY* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SERVICE_INTEGRITY* 4)
(intern "*SERVICE_TESTMODE*" (find-package "UBLOX_MSGS::NAVSBAS"))
(shadow '*SERVICE_TESTMODE* (find-package "UBLOX_MSGS::NAVSBAS"))
(defconstant ublox_msgs::NavSBAS::*SERVICE_TESTMODE* 8)
(defclass ublox_msgs::NavSBAS
  :super ros::object
  :slots (_iTOW _geo _mode _sys _service _cnt _reserved0 _sv ))

(defmethod ublox_msgs::NavSBAS
  (:init
   (&key
    ((:iTOW __iTOW) 0)
    ((:geo __geo) 0)
    ((:mode __mode) 0)
    ((:sys __sys) 0)
    ((:service __service) 0)
    ((:cnt __cnt) 0)
    ((:reserved0 __reserved0) (make-array 3 :initial-element 0 :element-type :char))
    ((:sv __sv) (let (r) (dotimes (i 0) (push (instance ublox_msgs::NavSBAS_SV :init) r)) r))
    )
   (send-super :init)
   (setq _iTOW (round __iTOW))
   (setq _geo (round __geo))
   (setq _mode (round __mode))
   (setq _sys (round __sys))
   (setq _service (round __service))
   (setq _cnt (round __cnt))
   (setq _reserved0 __reserved0)
   (setq _sv __sv)
   self)
  (:iTOW
   (&optional __iTOW)
   (if __iTOW (setq _iTOW __iTOW)) _iTOW)
  (:geo
   (&optional __geo)
   (if __geo (setq _geo __geo)) _geo)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:sys
   (&optional __sys)
   (if __sys (setq _sys __sys)) _sys)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:cnt
   (&optional __cnt)
   (if __cnt (setq _cnt __cnt)) _cnt)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:sv
   (&rest __sv)
   (if (keywordp (car __sv))
       (send* _sv __sv)
     (progn
       (if __sv (setq _sv (car __sv)))
       _sv)))
  (:serialization-length
   ()
   (+
    ;; uint32 _iTOW
    4
    ;; uint8 _geo
    1
    ;; uint8 _mode
    1
    ;; int8 _sys
    1
    ;; uint8 _service
    1
    ;; uint8 _cnt
    1
    ;; uint8[3] _reserved0
    (* 1    3)
    ;; ublox_msgs/NavSBAS_SV[] _sv
    (apply #'+ (send-all _sv :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _iTOW
       (write-long _iTOW s)
     ;; uint8 _geo
       (write-byte _geo s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; int8 _sys
       (write-byte _sys s)
     ;; uint8 _service
       (write-byte _service s)
     ;; uint8 _cnt
       (write-byte _cnt s)
     ;; uint8[3] _reserved0
     (princ _reserved0 s)
     ;; ublox_msgs/NavSBAS_SV[] _sv
     (write-long (length _sv) s)
     (dolist (elem _sv)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _iTOW
     (setq _iTOW (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _geo
     (setq _geo (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _sys
     (setq _sys (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sys 127) (setq _sys (- _sys 256)))
   ;; uint8 _service
     (setq _service (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cnt
     (setq _cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved0
   (setq _reserved0 (make-array 3 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 3)
   ;; ublox_msgs/NavSBAS_SV[] _sv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sv (let (r) (dotimes (i n) (push (instance ublox_msgs::NavSBAS_SV :init) r)) r))
     (dolist (elem- _sv)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::NavSBAS :md5sum-) "4ea0a5f1e74c114f14024eb1bc277c57")
(setf (get ublox_msgs::NavSBAS :datatype-) "ublox_msgs/NavSBAS")
(setf (get ublox_msgs::NavSBAS :definition-)
      "# NAV-SBAS (0x01 0x32)
# SBAS Status Data
#
# This message outputs the status of the SBAS sub system
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 50

uint32 iTOW             # GPS Millisecond time of week [ms]

uint8 geo               # PRN Number of the GEO where correction and integrity 
                        # data is used from

uint8 mode              # SBAS Mode
uint8 MODE_DISABLED = 0
uint8 MODE_ENABLED_INTEGRITY = 1
uint8 MODE_ENABLED_TESTMODE = 3

int8 sys                # SBAS System (WAAS/EGNOS/...)
int8 SYS_UNKNOWN = -1
int8 SYS_WAAS = 0
int8 SYS_EGNOS = 1
int8 SYS_MSAS = 2
int8 SYS_GAGAN = 3
int8 SYS_GPS = 16

uint8 service           # SBAS Services available
uint8 SERVICE_RANGING = 1
uint8 SERVICE_CORRECTIONS = 2
uint8 SERVICE_INTEGRITY = 4
uint8 SERVICE_TESTMODE = 8

uint8 cnt               # Number of SV data following
uint8[3] reserved0      # Reserved

NavSBAS_SV[] sv

================================================================================
MSG: ublox_msgs/NavSBAS_SV
# see message NavSBAS
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



(provide :ublox_msgs/NavSBAS "4ea0a5f1e74c114f14024eb1bc277c57")


