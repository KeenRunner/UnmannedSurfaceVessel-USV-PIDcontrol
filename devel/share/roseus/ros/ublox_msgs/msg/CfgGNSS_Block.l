;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgGNSS_Block)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgGNSS_Block (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGGNSS_BLOCK")
  (make-package "UBLOX_MSGS::CFGGNSS_BLOCK"))

(in-package "ROS")
;;//! \htmlinclude CfgGNSS_Block.msg.html


(intern "*GNSS_ID_GPS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*GNSS_ID_GPS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*GNSS_ID_GPS* 0)
(intern "*GNSS_ID_SBAS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*GNSS_ID_SBAS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*GNSS_ID_SBAS* 1)
(intern "*GNSS_ID_GALILEO*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*GNSS_ID_GALILEO* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*GNSS_ID_GALILEO* 2)
(intern "*GNSS_ID_BEIDOU*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*GNSS_ID_BEIDOU* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*GNSS_ID_BEIDOU* 3)
(intern "*GNSS_ID_IMES*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*GNSS_ID_IMES* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*GNSS_ID_IMES* 4)
(intern "*GNSS_ID_QZSS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*GNSS_ID_QZSS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*GNSS_ID_QZSS* 5)
(intern "*GNSS_ID_GLONASS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*GNSS_ID_GLONASS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*GNSS_ID_GLONASS* 6)
(intern "*RES_TRK_CH_GPS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*RES_TRK_CH_GPS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*RES_TRK_CH_GPS* 8)
(intern "*RES_TRK_CH_QZSS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*RES_TRK_CH_QZSS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*RES_TRK_CH_QZSS* 0)
(intern "*RES_TRK_CH_SBAS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*RES_TRK_CH_SBAS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*RES_TRK_CH_SBAS* 0)
(intern "*RES_TRK_CH_GLONASS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*RES_TRK_CH_GLONASS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*RES_TRK_CH_GLONASS* 8)
(intern "*MAX_TRK_CH_MAJOR_MIN*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*MAX_TRK_CH_MAJOR_MIN* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*MAX_TRK_CH_MAJOR_MIN* 4)
(intern "*MAX_TRK_CH_GPS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*MAX_TRK_CH_GPS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*MAX_TRK_CH_GPS* 16)
(intern "*MAX_TRK_CH_GLONASS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*MAX_TRK_CH_GLONASS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*MAX_TRK_CH_GLONASS* 14)
(intern "*MAX_TRK_CH_QZSS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*MAX_TRK_CH_QZSS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*MAX_TRK_CH_QZSS* 3)
(intern "*MAX_TRK_CH_SBAS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*MAX_TRK_CH_SBAS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*MAX_TRK_CH_SBAS* 3)
(intern "*FLAGS_ENABLE*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*FLAGS_ENABLE* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*FLAGS_ENABLE* 1)
(intern "*FLAGS_SIG_CFG_MASK*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*FLAGS_SIG_CFG_MASK* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*FLAGS_SIG_CFG_MASK* 16711680)
(intern "*SIG_CFG_GPS_L1CA*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_GPS_L1CA* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_GPS_L1CA* 65536)
(intern "*SIG_CFG_SBAS_L1CA*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_SBAS_L1CA* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_SBAS_L1CA* 65536)
(intern "*SIG_CFG_GALILEO_E1OS*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_GALILEO_E1OS* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_GALILEO_E1OS* 65536)
(intern "*SIG_CFG_BEIDOU_B1I*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_BEIDOU_B1I* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_BEIDOU_B1I* 65536)
(intern "*SIG_CFG_IMES_L1*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_IMES_L1* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_IMES_L1* 65536)
(intern "*SIG_CFG_QZSS_L1CA*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_QZSS_L1CA* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_QZSS_L1CA* 65536)
(intern "*SIG_CFG_QZSS_L1SAIF*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_QZSS_L1SAIF* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_QZSS_L1SAIF* 262144)
(intern "*SIG_CFG_GLONASS_L1OF*" (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(shadow '*SIG_CFG_GLONASS_L1OF* (find-package "UBLOX_MSGS::CFGGNSS_BLOCK"))
(defconstant ublox_msgs::CfgGNSS_Block::*SIG_CFG_GLONASS_L1OF* 65536)
(defclass ublox_msgs::CfgGNSS_Block
  :super ros::object
  :slots (_gnssId _resTrkCh _maxTrkCh _reserved1 _flags ))

(defmethod ublox_msgs::CfgGNSS_Block
  (:init
   (&key
    ((:gnssId __gnssId) 0)
    ((:resTrkCh __resTrkCh) 0)
    ((:maxTrkCh __maxTrkCh) 0)
    ((:reserved1 __reserved1) 0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _gnssId (round __gnssId))
   (setq _resTrkCh (round __resTrkCh))
   (setq _maxTrkCh (round __maxTrkCh))
   (setq _reserved1 (round __reserved1))
   (setq _flags (round __flags))
   self)
  (:gnssId
   (&optional __gnssId)
   (if __gnssId (setq _gnssId __gnssId)) _gnssId)
  (:resTrkCh
   (&optional __resTrkCh)
   (if __resTrkCh (setq _resTrkCh __resTrkCh)) _resTrkCh)
  (:maxTrkCh
   (&optional __maxTrkCh)
   (if __maxTrkCh (setq _maxTrkCh __maxTrkCh)) _maxTrkCh)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; uint8 _gnssId
    1
    ;; uint8 _resTrkCh
    1
    ;; uint8 _maxTrkCh
    1
    ;; uint8 _reserved1
    1
    ;; uint32 _flags
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gnssId
       (write-byte _gnssId s)
     ;; uint8 _resTrkCh
       (write-byte _resTrkCh s)
     ;; uint8 _maxTrkCh
       (write-byte _maxTrkCh s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; uint32 _flags
       (write-long _flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gnssId
     (setq _gnssId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _resTrkCh
     (setq _resTrkCh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _maxTrkCh
     (setq _maxTrkCh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _flags
     (setq _flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgGNSS_Block :md5sum-) "f786023414ba20add907814936842e32")
(setf (get ublox_msgs::CfgGNSS_Block :datatype-) "ublox_msgs/CfgGNSS_Block")
(setf (get ublox_msgs::CfgGNSS_Block :definition-)
      "# see Cfg-GNSS message
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



(provide :ublox_msgs/CfgGNSS_Block "f786023414ba20add907814936842e32")


