;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgCFG)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgCFG (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGCFG")
  (make-package "UBLOX_MSGS::CFGCFG"))

(in-package "ROS")
;;//! \htmlinclude CfgCFG.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MESSAGE_ID* 9)
(intern "*MASK_IO_PORT*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_IO_PORT* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_IO_PORT* 1)
(intern "*MASK_MSG_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_MSG_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_MSG_CONF* 2)
(intern "*MASK_INF_MSG*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_INF_MSG* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_INF_MSG* 4)
(intern "*MASK_NAV_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_NAV_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_NAV_CONF* 8)
(intern "*MASK_RXM_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_RXM_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_RXM_CONF* 16)
(intern "*MASK_SEN_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_SEN_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_SEN_CONF* 256)
(intern "*MASK_RINV_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_RINV_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_RINV_CONF* 512)
(intern "*MASK_ANT_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_ANT_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_ANT_CONF* 1024)
(intern "*MASK_LOG_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_LOG_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_LOG_CONF* 2048)
(intern "*MASK_FTS_CONF*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*MASK_FTS_CONF* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*MASK_FTS_CONF* 4096)
(intern "*DEV_BBR*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*DEV_BBR* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*DEV_BBR* 1)
(intern "*DEV_FLASH*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*DEV_FLASH* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*DEV_FLASH* 2)
(intern "*DEV_EEPROM*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*DEV_EEPROM* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*DEV_EEPROM* 4)
(intern "*DEV_SPI_FLASH*" (find-package "UBLOX_MSGS::CFGCFG"))
(shadow '*DEV_SPI_FLASH* (find-package "UBLOX_MSGS::CFGCFG"))
(defconstant ublox_msgs::CfgCFG::*DEV_SPI_FLASH* 16)
(defclass ublox_msgs::CfgCFG
  :super ros::object
  :slots (_clearMask _saveMask _loadMask _deviceMask ))

(defmethod ublox_msgs::CfgCFG
  (:init
   (&key
    ((:clearMask __clearMask) 0)
    ((:saveMask __saveMask) 0)
    ((:loadMask __loadMask) 0)
    ((:deviceMask __deviceMask) 0)
    )
   (send-super :init)
   (setq _clearMask (round __clearMask))
   (setq _saveMask (round __saveMask))
   (setq _loadMask (round __loadMask))
   (setq _deviceMask (round __deviceMask))
   self)
  (:clearMask
   (&optional __clearMask)
   (if __clearMask (setq _clearMask __clearMask)) _clearMask)
  (:saveMask
   (&optional __saveMask)
   (if __saveMask (setq _saveMask __saveMask)) _saveMask)
  (:loadMask
   (&optional __loadMask)
   (if __loadMask (setq _loadMask __loadMask)) _loadMask)
  (:deviceMask
   (&optional __deviceMask)
   (if __deviceMask (setq _deviceMask __deviceMask)) _deviceMask)
  (:serialization-length
   ()
   (+
    ;; uint32 _clearMask
    4
    ;; uint32 _saveMask
    4
    ;; uint32 _loadMask
    4
    ;; uint8 _deviceMask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _clearMask
       (write-long _clearMask s)
     ;; uint32 _saveMask
       (write-long _saveMask s)
     ;; uint32 _loadMask
       (write-long _loadMask s)
     ;; uint8 _deviceMask
       (write-byte _deviceMask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _clearMask
     (setq _clearMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _saveMask
     (setq _saveMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _loadMask
     (setq _loadMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _deviceMask
     (setq _deviceMask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgCFG :md5sum-) "82e4847c642bca8fb5b8af4595e063a1")
(setf (get ublox_msgs::CfgCFG :datatype-) "ublox_msgs/CfgCFG")
(setf (get ublox_msgs::CfgCFG :definition-)
      "# CFG-CFG (0x06 0x09)
# Clear, Save and Load configurations
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 9

uint32 clearMask          # Mask with configuration sub-sections to Clear
                          # (=Load Default Configurations to Permanent
                          # Configurations in non-volatile memory)
uint32 saveMask           # Mask with configuration sub-section to Save
                          # (=Save Current Configuration to Non-volatile
                          # Memory)
uint32 loadMask           # Mask with configuration sub-sections to Load
                          # (=Load Permanent Configurations from
                          # Non-volatile Memory to Current Configurations)

uint32 MASK_IO_PORT = 1       # Communications port settings. Modifying this 
                              # sub-section results in an IO system reset. 
                              # Because of this undefined data may be output 
                              # for a short period of time after receiving the
                              # message.
uint32 MASK_MSG_CONF = 2      # Message Configuration
uint32 MASK_INF_MSG = 4       # INF Message Configuration
uint32 MASK_NAV_CONF = 8      # Navigation Configuration
uint32 MASK_RXM_CONF = 16     # Receiver Manager Configuration
uint32 MASK_SEN_CONF = 256    # Sensor Interface Configuration, protocol >= 19
uint32 MASK_RINV_CONF = 512   # Remote Inventory Configuration
uint32 MASK_ANT_CONF = 1024   # Antenna Configuration
uint32 MASK_LOG_CONF = 2048   # Logging Configuration
uint32 MASK_FTS_CONF = 4096   # FTS Configuration. Only applicable to the 
                              # FTS product variant.

uint8 deviceMask          # Mask which selects the devices for this command
uint8 DEV_BBR = 1             # device battery backed RAM
uint8 DEV_FLASH = 2           # device Flash
uint8 DEV_EEPROM = 4          # device EEPROM
uint8 DEV_SPI_FLASH = 16      # device SPI Flash

")



(provide :ublox_msgs/CfgCFG "82e4847c642bca8fb5b8af4595e063a1")


