;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgGNSS)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgGNSS (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGGNSS")
  (make-package "UBLOX_MSGS::CFGGNSS"))

(in-package "ROS")
;;//! \htmlinclude CfgGNSS.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGGNSS"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGGNSS"))
(defconstant ublox_msgs::CfgGNSS::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGGNSS"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGGNSS"))
(defconstant ublox_msgs::CfgGNSS::*MESSAGE_ID* 62)
(defclass ublox_msgs::CfgGNSS
  :super ros::object
  :slots (_msgVer _numTrkChHw _numTrkChUse _numConfigBlocks _blocks ))

(defmethod ublox_msgs::CfgGNSS
  (:init
   (&key
    ((:msgVer __msgVer) 0)
    ((:numTrkChHw __numTrkChHw) 0)
    ((:numTrkChUse __numTrkChUse) 0)
    ((:numConfigBlocks __numConfigBlocks) 0)
    ((:blocks __blocks) (let (r) (dotimes (i 0) (push (instance ublox_msgs::CfgGNSS_Block :init) r)) r))
    )
   (send-super :init)
   (setq _msgVer (round __msgVer))
   (setq _numTrkChHw (round __numTrkChHw))
   (setq _numTrkChUse (round __numTrkChUse))
   (setq _numConfigBlocks (round __numConfigBlocks))
   (setq _blocks __blocks)
   self)
  (:msgVer
   (&optional __msgVer)
   (if __msgVer (setq _msgVer __msgVer)) _msgVer)
  (:numTrkChHw
   (&optional __numTrkChHw)
   (if __numTrkChHw (setq _numTrkChHw __numTrkChHw)) _numTrkChHw)
  (:numTrkChUse
   (&optional __numTrkChUse)
   (if __numTrkChUse (setq _numTrkChUse __numTrkChUse)) _numTrkChUse)
  (:numConfigBlocks
   (&optional __numConfigBlocks)
   (if __numConfigBlocks (setq _numConfigBlocks __numConfigBlocks)) _numConfigBlocks)
  (:blocks
   (&rest __blocks)
   (if (keywordp (car __blocks))
       (send* _blocks __blocks)
     (progn
       (if __blocks (setq _blocks (car __blocks)))
       _blocks)))
  (:serialization-length
   ()
   (+
    ;; uint8 _msgVer
    1
    ;; uint8 _numTrkChHw
    1
    ;; uint8 _numTrkChUse
    1
    ;; uint8 _numConfigBlocks
    1
    ;; ublox_msgs/CfgGNSS_Block[] _blocks
    (apply #'+ (send-all _blocks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _msgVer
       (write-byte _msgVer s)
     ;; uint8 _numTrkChHw
       (write-byte _numTrkChHw s)
     ;; uint8 _numTrkChUse
       (write-byte _numTrkChUse s)
     ;; uint8 _numConfigBlocks
       (write-byte _numConfigBlocks s)
     ;; ublox_msgs/CfgGNSS_Block[] _blocks
     (write-long (length _blocks) s)
     (dolist (elem _blocks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _msgVer
     (setq _msgVer (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numTrkChHw
     (setq _numTrkChHw (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numTrkChUse
     (setq _numTrkChUse (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numConfigBlocks
     (setq _numConfigBlocks (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ublox_msgs/CfgGNSS_Block[] _blocks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blocks (let (r) (dotimes (i n) (push (instance ublox_msgs::CfgGNSS_Block :init) r)) r))
     (dolist (elem- _blocks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::CfgGNSS :md5sum-) "c1777482e22a0ac50132c66d3284e86f")
(setf (get ublox_msgs::CfgGNSS :datatype-) "ublox_msgs/CfgGNSS")
(setf (get ublox_msgs::CfgGNSS :definition-)
      "# CFG-GNSS (0x06 0x3E)
# GNSS Configuration
#
# Gets or sets the GNSS system channel sharing configuration.
# If the receiver is sent a valid new configuration, it will respond with a 
# UBX-ACK-ACK message and immediately change to the new configuration. Otherwise
# the receiver will reject the request, by issuing a UBX-ACK-NAK and continuing 
# operation with the previous configuration.
# Configuration requirements:
#  - It is necessary for at least one major GNSS to be enabled, after applying 
#    the new configuration to the current one.
#  - It is also required that at least 4 tracking channels are available to each 
#    enabled major GNSS, i.e. maxTrkCh must have a minimum value of 4 for each
#    enabled major GNSS.
#  - The number of tracking channels in use must not exceed the number of 
#    tracking channels available in hardware, and the sum of all reserved 
#    tracking channels needs to be less than or equal to the number of tracking
#    channels in use.
# Notes:
#  - To avoid cross-correlation issues, it is recommended that GPS and QZSS are
#    always both enabled or both disabled.
#  - Polling this message returns the configuration of all supported GNSS, 
#    whether enabled or not; it may also include GNSS unsupported by the 
#    particular product, but in such cases the enable flag will always be unset.
#  - See section GNSS Configuration for a discussion of the use of this message 
#    and section Satellite Numbering for a description of the GNSS IDs available
#  - Configuration specific to the GNSS system can be done via other messages 
#    (e.g. UBX-CFG-SBAS).
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 62

uint8 msgVer            # Message version (= 0 for this version)
uint8 numTrkChHw        # Number of tracking channels in hardware (read only)
uint8 numTrkChUse       # (Read only in protocol versions greater than 23)
                        # Number of tracking channels to use (<= numTrkChHw)
                        # If 0xFF, then number of tracking channels to use will 
                        # be set to numTrkChHw
uint8 numConfigBlocks   # Number of configuration blocks following

# Start of repeated block (numConfigBlocks times)
CfgGNSS_Block[] blocks
# End of repeated block
================================================================================
MSG: ublox_msgs/CfgGNSS_Block
# see Cfg-GNSS message
#

uint8 gnssId            # System identifier (see Satellite Numbering)

uint8 GNSS_ID_GPS = 0
uint8 GNSS_ID_SBAS = 1
uint8 GNSS_ID_GALILEO = 2
uint8 GNSS_ID_BEIDOU = 3
uint8 GNSS_ID_IMES = 4
uint8 GNSS_ID_QZSS = 5
uint8 GNSS_ID_GLONASS = 6

uint8 resTrkCh          # (Read only in protocol versions greater than 23)
                        # Number of reserved (minimum) tracking channels 
                        # for this GNSS system
uint8 RES_TRK_CH_GPS = 8
uint8 RES_TRK_CH_QZSS = 0
uint8 RES_TRK_CH_SBAS = 0
uint8 RES_TRK_CH_GLONASS = 8
uint8 maxTrkCh          # (Read only in protocol versions greater than 23)
                        # Maximum number of tracking channels used for this 
                        # system. Must be > 0, >= resTrkChn, <= numTrkChUse and
                        # <= maximum number of tracking channels supported for 
                        # this system
uint8 MAX_TRK_CH_MAJOR_MIN = 4         # maxTrkCh must have this minimum value
                                       # for each enabled major GNSS
uint8 MAX_TRK_CH_GPS = 16
uint8 MAX_TRK_CH_GLONASS = 14
uint8 MAX_TRK_CH_QZSS = 3
uint8 MAX_TRK_CH_SBAS = 3

uint8 reserved1         # Reserved

uint32 flags            # Bitfield of flags. At least one signal must be
                        # configured in every enabled system. 
uint32 FLAGS_ENABLE = 1                # Enable this system
uint32 FLAGS_SIG_CFG_MASK = 16711680   # Signal configuration mask
uint32 SIG_CFG_GPS_L1CA = 65536        # When gnssId is 0 (GPS)
                                       # * 0x01 = GPS L1C/A
uint32 SIG_CFG_SBAS_L1CA = 65536       # When gnssId is 1 (SBAS)
                                       # * 0x01 = SBAS L1C/A
uint32 SIG_CFG_GALILEO_E1OS = 65536    # When gnssId is 2 (Galileo)
                                       # * 0x01 = Galileo E1OS (not supported in 
                                       #   protocol versions less than 18)
uint32 SIG_CFG_BEIDOU_B1I = 65536      # When gnssId is 3 (BeiDou)
                                       # * 0x01 = BeiDou B1I 
uint32 SIG_CFG_IMES_L1 = 65536         # When gnssId is 4 (IMES)
                                       # * 0x01 = IMES L1
uint32 SIG_CFG_QZSS_L1CA = 65536       # When gnssId is 5 (QZSS)
                                       # * 0x01 = QZSS L1C/A
uint32 SIG_CFG_QZSS_L1SAIF = 262144    # * 0x04 = QZSS L1SAIF
uint32 SIG_CFG_GLONASS_L1OF = 65536    # When gnssId is 6 (GLONASS)
                                       # * 0x01 = GLONASS L1OF
")



(provide :ublox_msgs/CfgGNSS "c1777482e22a0ac50132c66d3284e86f")


