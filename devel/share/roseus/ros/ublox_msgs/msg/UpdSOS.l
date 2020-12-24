;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::UpdSOS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'UpdSOS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::UPDSOS")
  (make-package "UBLOX_MSGS::UPDSOS"))

(in-package "ROS")
;;//! \htmlinclude UpdSOS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::UPDSOS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::UPDSOS"))
(defconstant ublox_msgs::UpdSOS::*CLASS_ID* 9)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::UPDSOS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::UPDSOS"))
(defconstant ublox_msgs::UpdSOS::*MESSAGE_ID* 20)
(intern "*CMD_FLASH_BACKUP_CREATE*" (find-package "UBLOX_MSGS::UPDSOS"))
(shadow '*CMD_FLASH_BACKUP_CREATE* (find-package "UBLOX_MSGS::UPDSOS"))
(defconstant ublox_msgs::UpdSOS::*CMD_FLASH_BACKUP_CREATE* 0)
(intern "*CMD_FLASH_BACKUP_CLEAR*" (find-package "UBLOX_MSGS::UPDSOS"))
(shadow '*CMD_FLASH_BACKUP_CLEAR* (find-package "UBLOX_MSGS::UPDSOS"))
(defconstant ublox_msgs::UpdSOS::*CMD_FLASH_BACKUP_CLEAR* 1)
(defclass ublox_msgs::UpdSOS
  :super ros::object
  :slots (_cmd _reserved1 ))

(defmethod ublox_msgs::UpdSOS
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:reserved1 __reserved1) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _reserved1 __reserved1)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ;; uint8[3] _reserved1
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;; uint8[3] _reserved1
     (princ _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved1
   (setq _reserved1 (make-array 3 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get ublox_msgs::UpdSOS :md5sum-) "fdc2e32dbb00126a932ae76a6222eec4")
(setf (get ublox_msgs::UpdSOS :datatype-) "ublox_msgs/UpdSOS")
(setf (get ublox_msgs::UpdSOS :definition-)
      "# UPD-SOS (0x09 0x14)
#
# Firmware Supported on:
# u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01
#

uint8 CLASS_ID = 9
uint8 MESSAGE_ID = 20

uint8 cmd                   # Command
# The host can send this message in order to save part of the BBR memory in a 
# file in flash file system. The feature is designed in order to emulate the 
# presence of the backup battery even if it is not present; the host can issue 
# the save on shutdown command before switching off the device supply. It is 
# recommended to issue a GNSS stop command before, in order to keep the BBR 
# memory content consistent.
uint8 CMD_FLASH_BACKUP_CREATE = 0    # Create Backup File in Flash
# The host can send this message in order to erase the backup file present in 
# flash. It is recommended that the clear operation is issued after the host has 
# received the notification that the memory has been restored after a reset. 
# Alternatively the host can parse the startup string 'Restored data saved on 
# shutdown' or poll the UBX-UPD-SOS message for getting the status.
uint8 CMD_FLASH_BACKUP_CLEAR = 1     # Clear Backup File in Flash

uint8[3] reserved1          # Reserved
")



(provide :ublox_msgs/UpdSOS "fdc2e32dbb00126a932ae76a6222eec4")


