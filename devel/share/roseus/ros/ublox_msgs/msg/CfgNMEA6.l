;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgNMEA6)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgNMEA6 (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGNMEA6")
  (make-package "UBLOX_MSGS::CFGNMEA6"))

(in-package "ROS")
;;//! \htmlinclude CfgNMEA6.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*MESSAGE_ID* 23)
(intern "*FILTER_POS*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FILTER_POS* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FILTER_POS* 1)
(intern "*FILTER_MSK_POS*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FILTER_MSK_POS* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FILTER_MSK_POS* 2)
(intern "*FILTER_TIME*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FILTER_TIME* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FILTER_TIME* 4)
(intern "*FILTER_DATE*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FILTER_DATE* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FILTER_DATE* 8)
(intern "*FILTER_SBAS_FILT*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FILTER_SBAS_FILT* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FILTER_SBAS_FILT* 16)
(intern "*FILTER_TRACK*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FILTER_TRACK* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FILTER_TRACK* 32)
(intern "*NMEA_VERSION_2_3*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*NMEA_VERSION_2_3* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*NMEA_VERSION_2_3* 35)
(intern "*NMEA_VERSION_2_1*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*NMEA_VERSION_2_1* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*NMEA_VERSION_2_1* 33)
(intern "*FLAGS_COMPAT*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FLAGS_COMPAT* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FLAGS_COMPAT* 1)
(intern "*FLAGS_CONSIDER*" (find-package "UBLOX_MSGS::CFGNMEA6"))
(shadow '*FLAGS_CONSIDER* (find-package "UBLOX_MSGS::CFGNMEA6"))
(defconstant ublox_msgs::CfgNMEA6::*FLAGS_CONSIDER* 2)
(defclass ublox_msgs::CfgNMEA6
  :super ros::object
  :slots (_filter _version _numSV _flags ))

(defmethod ublox_msgs::CfgNMEA6
  (:init
   (&key
    ((:filter __filter) 0)
    ((:version __version) 0)
    ((:numSV __numSV) 0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _filter (round __filter))
   (setq _version (round __version))
   (setq _numSV (round __numSV))
   (setq _flags (round __flags))
   self)
  (:filter
   (&optional __filter)
   (if __filter (setq _filter __filter)) _filter)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:numSV
   (&optional __numSV)
   (if __numSV (setq _numSV __numSV)) _numSV)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; uint8 _filter
    1
    ;; uint8 _version
    1
    ;; uint8 _numSV
    1
    ;; uint8 _flags
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _filter
       (write-byte _filter s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8 _numSV
       (write-byte _numSV s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _filter
     (setq _filter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numSV
     (setq _numSV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ublox_msgs::CfgNMEA6 :md5sum-) "9ffbd21c832ce4472519430326bb44e3")
(setf (get ublox_msgs::CfgNMEA6 :datatype-) "ublox_msgs/CfgNMEA6")
(setf (get ublox_msgs::CfgNMEA6 :definition-)
      "# CFG-NMEA (0x06 0x17)
# NMEA protocol configuration
#
# Set/Get the NMEA protocol configuration. See section NMEA Protocol 
# Configuration for a detailed description of the configuration effects on 
# NMEA output
#
# Supported on u-blox 6 from firmware version 6.00 up to version 7.03.
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 23 

uint8 filter                  # filter flags
uint8 FILTER_POS = 1          # Disable position filtering
uint8 FILTER_MSK_POS = 2      # Disable masked position filtering
uint8 FILTER_TIME = 4         # Disable time filtering
uint8 FILTER_DATE = 8         # Disable date filtering
uint8 FILTER_SBAS_FILT = 16   # Enable SBAS filtering
uint8 FILTER_TRACK = 32       # Disable track filtering

uint8 version             # NMEA version
uint8 NMEA_VERSION_2_3 = 35     # Version 2.3
uint8 NMEA_VERSION_2_1 = 33     # Version 2.1

uint8 numSV                   # Maximum Number of SVs to report in NMEA
                              # protocol.
                              # This does not affect the receiver's operation.
                              # It only limits the number of SVs reported in
                              # NMEA mode (this might be needed with older
                              # mapping applications which only support 8- or
                              # 12-channel receivers)

uint8 flags                   # flags
uint8 FLAGS_COMPAT = 1          # enable compatibility mode.
                                # This might be needed for certain applications  
                                # when customer's NMEA parser expects a fixed 
                                # number of  digits in position coordinates
uint8 FLAGS_CONSIDER = 2        # enable considering mode

")



(provide :ublox_msgs/CfgNMEA6 "9ffbd21c832ce4472519430326bb44e3")


