;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgSBAS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgSBAS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGSBAS")
  (make-package "UBLOX_MSGS::CFGSBAS"))

(in-package "ROS")
;;//! \htmlinclude CfgSBAS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGSBAS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGSBAS"))
(defconstant ublox_msgs::CfgSBAS::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGSBAS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGSBAS"))
(defconstant ublox_msgs::CfgSBAS::*MESSAGE_ID* 22)
(intern "*MODE_ENABLED*" (find-package "UBLOX_MSGS::CFGSBAS"))
(shadow '*MODE_ENABLED* (find-package "UBLOX_MSGS::CFGSBAS"))
(defconstant ublox_msgs::CfgSBAS::*MODE_ENABLED* 1)
(intern "*MODE_TEST*" (find-package "UBLOX_MSGS::CFGSBAS"))
(shadow '*MODE_TEST* (find-package "UBLOX_MSGS::CFGSBAS"))
(defconstant ublox_msgs::CfgSBAS::*MODE_TEST* 2)
(intern "*USAGE_RANGE*" (find-package "UBLOX_MSGS::CFGSBAS"))
(shadow '*USAGE_RANGE* (find-package "UBLOX_MSGS::CFGSBAS"))
(defconstant ublox_msgs::CfgSBAS::*USAGE_RANGE* 1)
(intern "*USAGE_DIFF_CORR*" (find-package "UBLOX_MSGS::CFGSBAS"))
(shadow '*USAGE_DIFF_CORR* (find-package "UBLOX_MSGS::CFGSBAS"))
(defconstant ublox_msgs::CfgSBAS::*USAGE_DIFF_CORR* 2)
(intern "*USAGE_INTEGRITY*" (find-package "UBLOX_MSGS::CFGSBAS"))
(shadow '*USAGE_INTEGRITY* (find-package "UBLOX_MSGS::CFGSBAS"))
(defconstant ublox_msgs::CfgSBAS::*USAGE_INTEGRITY* 4)
(defclass ublox_msgs::CfgSBAS
  :super ros::object
  :slots (_mode _usage _maxSBAS _scanmode2 _scanmode1 ))

(defmethod ublox_msgs::CfgSBAS
  (:init
   (&key
    ((:mode __mode) 0)
    ((:usage __usage) 0)
    ((:maxSBAS __maxSBAS) 0)
    ((:scanmode2 __scanmode2) 0)
    ((:scanmode1 __scanmode1) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _usage (round __usage))
   (setq _maxSBAS (round __maxSBAS))
   (setq _scanmode2 (round __scanmode2))
   (setq _scanmode1 (round __scanmode1))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:usage
   (&optional __usage)
   (if __usage (setq _usage __usage)) _usage)
  (:maxSBAS
   (&optional __maxSBAS)
   (if __maxSBAS (setq _maxSBAS __maxSBAS)) _maxSBAS)
  (:scanmode2
   (&optional __scanmode2)
   (if __scanmode2 (setq _scanmode2 __scanmode2)) _scanmode2)
  (:scanmode1
   (&optional __scanmode1)
   (if __scanmode1 (setq _scanmode1 __scanmode1)) _scanmode1)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _usage
    1
    ;; uint8 _maxSBAS
    1
    ;; uint8 _scanmode2
    1
    ;; uint32 _scanmode1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _usage
       (write-byte _usage s)
     ;; uint8 _maxSBAS
       (write-byte _maxSBAS s)
     ;; uint8 _scanmode2
       (write-byte _scanmode2 s)
     ;; uint32 _scanmode1
       (write-long _scanmode1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _usage
     (setq _usage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _maxSBAS
     (setq _maxSBAS (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _scanmode2
     (setq _scanmode2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _scanmode1
     (setq _scanmode1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgSBAS :md5sum-) "b03a1b853ac45d2da104aafaa036e7e8")
(setf (get ublox_msgs::CfgSBAS :datatype-) "ublox_msgs/CfgSBAS")
(setf (get ublox_msgs::CfgSBAS :definition-)
      "# CFG-SBAS (0x06 0x16)
# SBAS Configuration
#
# This message configures the SBAS receiver subsystem (i.e. WAAS, EGNOS, MSAS).
# See the SBAS Configuration Settings Description for a detailed description of
# how these settings affect receiver operation
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 22

uint8 mode              # SBAS Mode
uint8 MODE_ENABLED = 1    # SBAS Enabled (1) / Disabled (0)
                          #  This field is deprecated; use UBX-CFG-GNSS to 
                          # enable/disable SBAS operation
uint8 MODE_TEST = 2       # SBAS Testbed: Use data anyhow (1) / Ignore data when 
                          # in Test Mode (SBAS Msg 0)

uint8 usage             # SBAS Usage
uint8 USAGE_RANGE = 1     # Use SBAS GEOs as a ranging source (for navigation)
uint8 USAGE_DIFF_CORR = 2 # Use SBAS Differential Corrections
uint8 USAGE_INTEGRITY = 4 # Use SBAS Integrity Information

uint8 maxSBAS           # Maximum Number of SBAS prioritized tracking
                        # channels (valid range: 0 - 3) to use
                        # (obsolete and superseeded by UBX-CFG-GNSS in protocol
                        # versions 14+).


uint8 scanmode2         # Continuation of scanmode bitmask below
                        # PRN 152...158
uint32 scanmode1        # Which SBAS PRN numbers to search for (Bitmask)
                        # If all Bits are set to zero, auto-scan (i.e. all valid
                        # PRNs) are searched. Every bit corresponds to a PRN 
                        # number.
                        # PRN 120..151

")



(provide :ublox_msgs/CfgSBAS "b03a1b853ac45d2da104aafaa036e7e8")


