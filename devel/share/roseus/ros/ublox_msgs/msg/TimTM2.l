;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::TimTM2)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'TimTM2 (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::TIMTM2")
  (make-package "UBLOX_MSGS::TIMTM2"))

(in-package "ROS")
;;//! \htmlinclude TimTM2.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*CLASS_ID* 13)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*MESSAGE_ID* 3)
(intern "*FLAGS_MODE_RUNNING*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_MODE_RUNNING* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_MODE_RUNNING* 1)
(intern "*FLAGS_RUN*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_RUN* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_RUN* 2)
(intern "*FLAGS_NEWFALLINGEDGE*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_NEWFALLINGEDGE* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_NEWFALLINGEDGE* 4)
(intern "*FLAGS_TIMEBASE_GNSS*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_TIMEBASE_GNSS* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_TIMEBASE_GNSS* 8)
(intern "*FLAGS_TIMEBASE_UTC*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_TIMEBASE_UTC* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_TIMEBASE_UTC* 16)
(intern "*FLAGS_UTC_AVAIL*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_UTC_AVAIL* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_UTC_AVAIL* 32)
(intern "*FLAGS_TIME_VALID*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_TIME_VALID* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_TIME_VALID* 64)
(intern "*FLAGS_NEWRISINGEDGE*" (find-package "UBLOX_MSGS::TIMTM2"))
(shadow '*FLAGS_NEWRISINGEDGE* (find-package "UBLOX_MSGS::TIMTM2"))
(defconstant ublox_msgs::TimTM2::*FLAGS_NEWRISINGEDGE* 128)
(defclass ublox_msgs::TimTM2
  :super ros::object
  :slots (_ch _flags _risingEdgeCount _wnR _wnF _towMsR _towSubMsR _towMsF _towSubMsF _accEst ))

(defmethod ublox_msgs::TimTM2
  (:init
   (&key
    ((:ch __ch) 0)
    ((:flags __flags) 0)
    ((:risingEdgeCount __risingEdgeCount) 0)
    ((:wnR __wnR) 0)
    ((:wnF __wnF) 0)
    ((:towMsR __towMsR) 0)
    ((:towSubMsR __towSubMsR) 0)
    ((:towMsF __towMsF) 0)
    ((:towSubMsF __towSubMsF) 0)
    ((:accEst __accEst) 0)
    )
   (send-super :init)
   (setq _ch (round __ch))
   (setq _flags (round __flags))
   (setq _risingEdgeCount (round __risingEdgeCount))
   (setq _wnR (round __wnR))
   (setq _wnF (round __wnF))
   (setq _towMsR (round __towMsR))
   (setq _towSubMsR (round __towSubMsR))
   (setq _towMsF (round __towMsF))
   (setq _towSubMsF (round __towSubMsF))
   (setq _accEst (round __accEst))
   self)
  (:ch
   (&optional __ch)
   (if __ch (setq _ch __ch)) _ch)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:risingEdgeCount
   (&optional __risingEdgeCount)
   (if __risingEdgeCount (setq _risingEdgeCount __risingEdgeCount)) _risingEdgeCount)
  (:wnR
   (&optional __wnR)
   (if __wnR (setq _wnR __wnR)) _wnR)
  (:wnF
   (&optional __wnF)
   (if __wnF (setq _wnF __wnF)) _wnF)
  (:towMsR
   (&optional __towMsR)
   (if __towMsR (setq _towMsR __towMsR)) _towMsR)
  (:towSubMsR
   (&optional __towSubMsR)
   (if __towSubMsR (setq _towSubMsR __towSubMsR)) _towSubMsR)
  (:towMsF
   (&optional __towMsF)
   (if __towMsF (setq _towMsF __towMsF)) _towMsF)
  (:towSubMsF
   (&optional __towSubMsF)
   (if __towSubMsF (setq _towSubMsF __towSubMsF)) _towSubMsF)
  (:accEst
   (&optional __accEst)
   (if __accEst (setq _accEst __accEst)) _accEst)
  (:serialization-length
   ()
   (+
    ;; uint8 _ch
    1
    ;; uint8 _flags
    1
    ;; uint16 _risingEdgeCount
    2
    ;; uint16 _wnR
    2
    ;; uint16 _wnF
    2
    ;; uint32 _towMsR
    4
    ;; uint32 _towSubMsR
    4
    ;; uint32 _towMsF
    4
    ;; uint32 _towSubMsF
    4
    ;; uint32 _accEst
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ch
       (write-byte _ch s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint16 _risingEdgeCount
       (write-word _risingEdgeCount s)
     ;; uint16 _wnR
       (write-word _wnR s)
     ;; uint16 _wnF
       (write-word _wnF s)
     ;; uint32 _towMsR
       (write-long _towMsR s)
     ;; uint32 _towSubMsR
       (write-long _towSubMsR s)
     ;; uint32 _towMsF
       (write-long _towMsF s)
     ;; uint32 _towSubMsF
       (write-long _towSubMsF s)
     ;; uint32 _accEst
       (write-long _accEst s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ch
     (setq _ch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _risingEdgeCount
     (setq _risingEdgeCount (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _wnR
     (setq _wnR (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _wnF
     (setq _wnF (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _towMsR
     (setq _towMsR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _towSubMsR
     (setq _towSubMsR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _towMsF
     (setq _towMsF (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _towSubMsF
     (setq _towSubMsF (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _accEst
     (setq _accEst (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::TimTM2 :md5sum-) "aae2d427845426ce522cb55dffc19b63")
(setf (get ublox_msgs::TimTM2 :datatype-) "ublox_msgs/TimTM2")
(setf (get ublox_msgs::TimTM2 :definition-)
      "# TIM-TM2 (0x0D, 0x03)
# Time mark data 
#
# Description for details.
# 
# Supported on:
#  - u-blox 8 / u-blox M8 with protocol version 22 (only with Timing Products)
#

uint8 CLASS_ID = 13 
uint8 MESSAGE_ID = 3

uint8 ch                     # Channel (i.e. EXTINT) upon which the pulse was measured

uint8 flags                   # Bitmask [newRisingEdge, time, utc, timeBase, , newFallingEdge, run, mode]
uint8 FLAGS_MODE_RUNNING = 1  # single = 0, running = 1
uint8 FLAGS_RUN = 2		# armed = 0, stopped = 1
uint8 FLAGS_NEWFALLINGEDGE = 4 	# new falling edge detected
uint8 FLAGS_TIMEBASE_GNSS = 8	# 0 = time base is receiver time, 1 = time base is GNSS Time (according to the configuration in CFG-TP5 for tpldx= 0)
uint8 FLAGS_TIMEBASE_UTC = 16	# Time Base is UTC (the variant according to the configuration in CFG-NAV5
uint8 FLAGS_UTC_AVAIL = 32	# 0 = utc not available, 1 = utc available
uint8 FLAGS_TIME_VALID = 64	# 0 = time is not valid, 1 time is valid
uint8 FLAGS_NEWRISINGEDGE = 128	# new rising edge detected

uint16 risingEdgeCount		# rising edge count
uint16 wnR			# week number of last rising edge
uint16 wnF			# week number of last falling edge
uint32 towMsR			# Tow of rising edge 
uint32 towSubMsR		# Millisecond Fraction of Tow of rising edge in nanoseconds
uint32 towMsF			# tow of falling edge
uint32 towSubMsF		# millisecond fraction of tow of falling edge in nanoseconds
uint32 accEst			# Accuracy estimate

")



(provide :ublox_msgs/TimTM2 "aae2d427845426ce522cb55dffc19b63")


