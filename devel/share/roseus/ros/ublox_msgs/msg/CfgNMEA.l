;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgNMEA)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgNMEA (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGNMEA")
  (make-package "UBLOX_MSGS::CFGNMEA"))

(in-package "ROS")
;;//! \htmlinclude CfgNMEA.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*MESSAGE_ID* 23)
(intern "*FILTER_POS*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FILTER_POS* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FILTER_POS* 1)
(intern "*FILTER_MSK_POS*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FILTER_MSK_POS* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FILTER_MSK_POS* 2)
(intern "*FILTER_TIME*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FILTER_TIME* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FILTER_TIME* 4)
(intern "*FILTER_DATE*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FILTER_DATE* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FILTER_DATE* 8)
(intern "*FILTER_GPS_ONLY*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FILTER_GPS_ONLY* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FILTER_GPS_ONLY* 16)
(intern "*FILTER_TRACK*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FILTER_TRACK* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FILTER_TRACK* 32)
(intern "*NMEA_VERSION_4_1*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*NMEA_VERSION_4_1* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*NMEA_VERSION_4_1* 65)
(intern "*NMEA_VERSION_4_0*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*NMEA_VERSION_4_0* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*NMEA_VERSION_4_0* 64)
(intern "*NMEA_VERSION_2_3*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*NMEA_VERSION_2_3* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*NMEA_VERSION_2_3* 35)
(intern "*NMEA_VERSION_2_1*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*NMEA_VERSION_2_1* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*NMEA_VERSION_2_1* 33)
(intern "*NUM_SV_UNLIMITED*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*NUM_SV_UNLIMITED* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*NUM_SV_UNLIMITED* 0)
(intern "*FLAGS_COMPAT*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FLAGS_COMPAT* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FLAGS_COMPAT* 1)
(intern "*FLAGS_CONSIDER*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FLAGS_CONSIDER* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FLAGS_CONSIDER* 2)
(intern "*FLAGS_LIMIT82*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FLAGS_LIMIT82* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FLAGS_LIMIT82* 4)
(intern "*FLAGS_HIGH_PREC*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*FLAGS_HIGH_PREC* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*FLAGS_HIGH_PREC* 8)
(intern "*GNSS_TO_FILTER_GPS*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*GNSS_TO_FILTER_GPS* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*GNSS_TO_FILTER_GPS* 1)
(intern "*GNSS_TO_FILTER_SBAS*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*GNSS_TO_FILTER_SBAS* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*GNSS_TO_FILTER_SBAS* 2)
(intern "*GNSS_TO_FILTER_QZSS*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*GNSS_TO_FILTER_QZSS* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*GNSS_TO_FILTER_QZSS* 16)
(intern "*GNSS_TO_FILTER_GLONASS*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*GNSS_TO_FILTER_GLONASS* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*GNSS_TO_FILTER_GLONASS* 32)
(intern "*GNSS_TO_FILTER_BEIDOU*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*GNSS_TO_FILTER_BEIDOU* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*GNSS_TO_FILTER_BEIDOU* 64)
(intern "*SV_NUMBERING_STRICT*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*SV_NUMBERING_STRICT* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*SV_NUMBERING_STRICT* 0)
(intern "*SV_NUMBERING_EXTENDED*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*SV_NUMBERING_EXTENDED* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*SV_NUMBERING_EXTENDED* 1)
(intern "*MAIN_TALKER_ID_NOT_OVERRIDDEN*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*MAIN_TALKER_ID_NOT_OVERRIDDEN* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*MAIN_TALKER_ID_NOT_OVERRIDDEN* 0)
(intern "*MAIN_TALKER_ID_GP*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*MAIN_TALKER_ID_GP* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*MAIN_TALKER_ID_GP* 1)
(intern "*MAIN_TALKER_ID_GL*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*MAIN_TALKER_ID_GL* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*MAIN_TALKER_ID_GL* 2)
(intern "*MAIN_TALKER_ID_GN*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*MAIN_TALKER_ID_GN* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*MAIN_TALKER_ID_GN* 3)
(intern "*MAIN_TALKER_ID_GA*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*MAIN_TALKER_ID_GA* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*MAIN_TALKER_ID_GA* 4)
(intern "*MAIN_TALKER_ID_GB*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*MAIN_TALKER_ID_GB* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*MAIN_TALKER_ID_GB* 5)
(intern "*GSV_TALKER_ID_GNSS_SPECIFIC*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*GSV_TALKER_ID_GNSS_SPECIFIC* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*GSV_TALKER_ID_GNSS_SPECIFIC* 0)
(intern "*GSV_TALKER_ID_MAIN*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*GSV_TALKER_ID_MAIN* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*GSV_TALKER_ID_MAIN* 1)
(intern "*VERSION*" (find-package "UBLOX_MSGS::CFGNMEA"))
(shadow '*VERSION* (find-package "UBLOX_MSGS::CFGNMEA"))
(defconstant ublox_msgs::CfgNMEA::*VERSION* 1)
(defclass ublox_msgs::CfgNMEA
  :super ros::object
  :slots (_filter _nmeaVersion _numSV _flags _gnssToFilter _svNumbering _mainTalkerId _gsvTalkerId _version _bdsTalkerId _reserved1 ))

(defmethod ublox_msgs::CfgNMEA
  (:init
   (&key
    ((:filter __filter) 0)
    ((:nmeaVersion __nmeaVersion) 0)
    ((:numSV __numSV) 0)
    ((:flags __flags) 0)
    ((:gnssToFilter __gnssToFilter) 0)
    ((:svNumbering __svNumbering) 0)
    ((:mainTalkerId __mainTalkerId) 0)
    ((:gsvTalkerId __gsvTalkerId) 0)
    ((:version __version) 0)
    ((:bdsTalkerId __bdsTalkerId) (make-array 2 :initial-element 0 :element-type :char))
    ((:reserved1 __reserved1) (make-array 6 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _filter (round __filter))
   (setq _nmeaVersion (round __nmeaVersion))
   (setq _numSV (round __numSV))
   (setq _flags (round __flags))
   (setq _gnssToFilter (round __gnssToFilter))
   (setq _svNumbering (round __svNumbering))
   (setq _mainTalkerId (round __mainTalkerId))
   (setq _gsvTalkerId (round __gsvTalkerId))
   (setq _version (round __version))
   (setq _bdsTalkerId __bdsTalkerId)
   (setq _reserved1 __reserved1)
   self)
  (:filter
   (&optional __filter)
   (if __filter (setq _filter __filter)) _filter)
  (:nmeaVersion
   (&optional __nmeaVersion)
   (if __nmeaVersion (setq _nmeaVersion __nmeaVersion)) _nmeaVersion)
  (:numSV
   (&optional __numSV)
   (if __numSV (setq _numSV __numSV)) _numSV)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:gnssToFilter
   (&optional __gnssToFilter)
   (if __gnssToFilter (setq _gnssToFilter __gnssToFilter)) _gnssToFilter)
  (:svNumbering
   (&optional __svNumbering)
   (if __svNumbering (setq _svNumbering __svNumbering)) _svNumbering)
  (:mainTalkerId
   (&optional __mainTalkerId)
   (if __mainTalkerId (setq _mainTalkerId __mainTalkerId)) _mainTalkerId)
  (:gsvTalkerId
   (&optional __gsvTalkerId)
   (if __gsvTalkerId (setq _gsvTalkerId __gsvTalkerId)) _gsvTalkerId)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:bdsTalkerId
   (&optional __bdsTalkerId)
   (if __bdsTalkerId (setq _bdsTalkerId __bdsTalkerId)) _bdsTalkerId)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint8 _filter
    1
    ;; uint8 _nmeaVersion
    1
    ;; uint8 _numSV
    1
    ;; uint8 _flags
    1
    ;; uint32 _gnssToFilter
    4
    ;; uint8 _svNumbering
    1
    ;; uint8 _mainTalkerId
    1
    ;; uint8 _gsvTalkerId
    1
    ;; uint8 _version
    1
    ;; uint8[2] _bdsTalkerId
    (* 1    2)
    ;; uint8[6] _reserved1
    (* 1    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _filter
       (write-byte _filter s)
     ;; uint8 _nmeaVersion
       (write-byte _nmeaVersion s)
     ;; uint8 _numSV
       (write-byte _numSV s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint32 _gnssToFilter
       (write-long _gnssToFilter s)
     ;; uint8 _svNumbering
       (write-byte _svNumbering s)
     ;; uint8 _mainTalkerId
       (write-byte _mainTalkerId s)
     ;; uint8 _gsvTalkerId
       (write-byte _gsvTalkerId s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8[2] _bdsTalkerId
     (princ _bdsTalkerId s)
     ;; uint8[6] _reserved1
     (princ _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _filter
     (setq _filter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nmeaVersion
     (setq _nmeaVersion (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numSV
     (setq _numSV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _gnssToFilter
     (setq _gnssToFilter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _svNumbering
     (setq _svNumbering (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mainTalkerId
     (setq _mainTalkerId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gsvTalkerId
     (setq _gsvTalkerId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[2] _bdsTalkerId
   (setq _bdsTalkerId (make-array 2 :element-type :char))
   (replace _bdsTalkerId buf :start2 ptr-) (incf ptr- 2)
   ;; uint8[6] _reserved1
   (setq _reserved1 (make-array 6 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 6)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgNMEA :md5sum-) "9d53bb6c49d53481b2a181d8ed0bed23")
(setf (get ublox_msgs::CfgNMEA :datatype-) "ublox_msgs/CfgNMEA")
(setf (get ublox_msgs::CfgNMEA :definition-)
      "# CFG-NMEA (0x06 0x17)
# NMEA protocol configuration V1
#
# Set/Get the NMEA protocol configuration. See section NMEA Protocol 
# Configuration for a detailed description of the configuration effects on 
# NMEA output
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 23 

uint8 filter                  # filter flags
uint8 FILTER_POS = 1          # Enable position output for failed or 
                              # invalid fixes
uint8 FILTER_MSK_POS = 2      # Enable position output for invalid fixes
uint8 FILTER_TIME = 4         # Enable time output for invalid times
uint8 FILTER_DATE = 8         # Enable date output for invalid dates
uint8 FILTER_GPS_ONLY = 16    # Restrict output to GPS satellites only
uint8 FILTER_TRACK = 32       # Enable COG output even if COG is frozen

uint8 nmeaVersion             # NMEA version
uint8 NMEA_VERSION_4_1 = 65     # Version 4.1
uint8 NMEA_VERSION_4_0 = 64     # Version 4.0
uint8 NMEA_VERSION_2_3 = 35     # Version 2.3
uint8 NMEA_VERSION_2_1 = 33     # Version 2.1

uint8 numSV                   # Maximum Number of SVs to report per TalkerId: 
                              # unlimited (0) or 8, 12, 16
uint8 NUM_SV_UNLIMITED = 0 

uint8 flags                   # flags
uint8 FLAGS_COMPAT = 1          # enable compatibility mode.
                                # This might be needed for certain applications  
                                # when customer's NMEA parser expects a fixed 
                                # number of  digits in position coordinates
uint8 FLAGS_CONSIDER = 2        # enable considering mode
uint8 FLAGS_LIMIT82 = 4         # enable strict limit to 82 characters maximum
uint8 FLAGS_HIGH_PREC = 8       # enable high precision mode
                                # This flag cannot be set in conjunction with  
                                # either Compatibility Mode or Limit82 Mode.
                                # (not supported in protocol versions < 20.01)

uint32 gnssToFilter           # Filters out satellites based on their GNSS.  
                              # If a bitfield is enabled, the corresponding 
                              # satellites will be not output.
uint32 GNSS_TO_FILTER_GPS = 1       # Disable reporting of GPS satellites
uint32 GNSS_TO_FILTER_SBAS = 2      # Disable reporting of SBAS satellites
uint32 GNSS_TO_FILTER_QZSS = 16     # Disable reporting of QZSS satellites
uint32 GNSS_TO_FILTER_GLONASS = 32  # Disable reporting of GLONASS satellites
uint32 GNSS_TO_FILTER_BEIDOU = 64   # Disable reporting of BeiDou satellites

uint8 svNumbering             # Configures the display of satellites that do not  
                              # have an NMEA-defined value. Note: this does not
                              # apply to satellites with an unknown ID.
uint8 SV_NUMBERING_STRICT = 0     # Strict - Satellites are not output
uint8 SV_NUMBERING_EXTENDED = 1   # Extended - Use proprietary numbering

uint8 mainTalkerId            # By default the main Talker ID (i.e. the Talker 
                              # ID used  for all messages other than GSV) is 
                              # determined by the  GNSS assignment of the 
                              # receiver's channels (see CfgGNSS). 
                              # This field enables the main Talker ID to be 
                              # overridden
uint8 MAIN_TALKER_ID_NOT_OVERRIDDEN = 0   # Main Talker ID is not overridden
uint8 MAIN_TALKER_ID_GP = 1               # Set main Talker ID to 'GP'
uint8 MAIN_TALKER_ID_GL = 2               # Set main Talker ID to 'GL'
uint8 MAIN_TALKER_ID_GN = 3               # Set main Talker ID to 'GN'
uint8 MAIN_TALKER_ID_GA = 4               # Set main Talker ID to 'GA'
uint8 MAIN_TALKER_ID_GB = 5               # Set main Talker ID to 'GB'

uint8 gsvTalkerId             # By default the Talker ID for GSV messages is  
                              # GNSS specific (as defined by NMEA). This field 
                              # enables the GSV Talker ID to be overridden.
uint8 GSV_TALKER_ID_GNSS_SPECIFIC = 0   # Use GNSS specific Talker ID 
                                        # (as defined by NMEA)
uint8 GSV_TALKER_ID_MAIN = 1            # Use the main Talker ID

uint8 version                 # Message version (set to 1 for this version)
uint8 VERSION = 1

uint8[2] bdsTalkerId          # Sets the two characters that should be used 
                              # for the BeiDou Talker ID. If these are set to 
                              # zero, the default BeiDou TalkerId will be used

uint8[6] reserved1            # Reserved
")



(provide :ublox_msgs/CfgNMEA "9d53bb6c49d53481b2a181d8ed0bed23")


