;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::UpdSOS_Ack)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'UpdSOS_Ack (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::UPDSOS_ACK")
  (make-package "UBLOX_MSGS::UPDSOS_ACK"))

(in-package "ROS")
;;//! \htmlinclude UpdSOS_Ack.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*CLASS_ID* 9)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*MESSAGE_ID* 20)
(intern "*CMD_BACKUP_CREATE_ACK*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*CMD_BACKUP_CREATE_ACK* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*CMD_BACKUP_CREATE_ACK* 2)
(intern "*CMD_SYSTEM_RESTORED*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*CMD_SYSTEM_RESTORED* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*CMD_SYSTEM_RESTORED* 3)
(intern "*BACKUP_CREATE_NACK*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*BACKUP_CREATE_NACK* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*BACKUP_CREATE_NACK* 0)
(intern "*BACKUP_CREATE_ACK*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*BACKUP_CREATE_ACK* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*BACKUP_CREATE_ACK* 1)
(intern "*SYSTEM_RESTORED_RESPONSE_UNKNOWN*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*SYSTEM_RESTORED_RESPONSE_UNKNOWN* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*SYSTEM_RESTORED_RESPONSE_UNKNOWN* 0)
(intern "*SYSTEM_RESTORED_RESPONSE_FAILED*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*SYSTEM_RESTORED_RESPONSE_FAILED* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*SYSTEM_RESTORED_RESPONSE_FAILED* 1)
(intern "*SYSTEM_RESTORED_RESPONSE_RESTORED*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*SYSTEM_RESTORED_RESPONSE_RESTORED* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*SYSTEM_RESTORED_RESPONSE_RESTORED* 2)
(intern "*SYSTEM_RESTORED_RESPONSE_NOT_RESTORED*" (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(shadow '*SYSTEM_RESTORED_RESPONSE_NOT_RESTORED* (find-package "UBLOX_MSGS::UPDSOS_ACK"))
(defconstant ublox_msgs::UpdSOS_Ack::*SYSTEM_RESTORED_RESPONSE_NOT_RESTORED* 3)
(defclass ublox_msgs::UpdSOS_Ack
  :super ros::object
  :slots (_cmd _reserved0 _response _reserved1 ))

(defmethod ublox_msgs::UpdSOS_Ack
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:reserved0 __reserved0) (make-array 3 :initial-element 0 :element-type :char))
    ((:response __response) 0)
    ((:reserved1 __reserved1) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _reserved0 __reserved0)
   (setq _response (round __response))
   (setq _reserved1 __reserved1)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ;; uint8[3] _reserved0
    (* 1    3)
    ;; uint8 _response
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
     ;; uint8[3] _reserved0
     (princ _reserved0 s)
     ;; uint8 _response
       (write-byte _response s)
     ;; uint8[3] _reserved1
     (princ _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved0
   (setq _reserved0 (make-array 3 :element-type :char))
   (replace _reserved0 buf :start2 ptr-) (incf ptr- 3)
   ;; uint8 _response
     (setq _response (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserved1
   (setq _reserved1 (make-array 3 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get ublox_msgs::UpdSOS_Ack :md5sum-) "028d9bc0701daf71dcd1ad8cef68594c")
(setf (get ublox_msgs::UpdSOS_Ack :datatype-) "ublox_msgs/UpdSOS_Ack")
(setf (get ublox_msgs::UpdSOS_Ack :definition-)
      "# UPD-SOS (0x09 0x14)
#
# Backup File Creation Acknowledge / System Restored from Backup
# 
# Firmware Supported on:
# u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01
#

uint8 CLASS_ID = 9
uint8 MESSAGE_ID = 20

uint8 cmd                   # Command
uint8 CMD_BACKUP_CREATE_ACK = 2   # Backup File Creation Acknowledge
                                  # The message is sent from the device as 
                                  # confirmation of creation of a backup file 
                                  # in flash. The host can safely shut down the 
                                  # device after received this message.
uint8 CMD_SYSTEM_RESTORED = 3     # System Restored from Backup
                                  # The message is sent from the device to 
                                  # notify the host the BBR has been restored 
                                  # from a backup file in flash. The host 
                                  # should clear the backup file after 
                                  # receiving this message. If the UBX-UPD-SOS 
                                  # message is polled, this message will be 
                                  # present.

uint8[3] reserved0          # Reserved

uint8 response                                  # Response:
uint8 BACKUP_CREATE_NACK = 0                      # Not acknowledged
uint8 BACKUP_CREATE_ACK = 1                       # Acknowledged
uint8 SYSTEM_RESTORED_RESPONSE_UNKNOWN = 0        # Unknown
uint8 SYSTEM_RESTORED_RESPONSE_FAILED = 1         # Failed restoring from backup 
                                                  # file
uint8 SYSTEM_RESTORED_RESPONSE_RESTORED = 2       # Restored from backup file
uint8 SYSTEM_RESTORED_RESPONSE_NOT_RESTORED = 3   # Not restored (no backup)

uint8[3] reserved1          # Reserved
")



(provide :ublox_msgs/UpdSOS_Ack "028d9bc0701daf71dcd1ad8cef68594c")


