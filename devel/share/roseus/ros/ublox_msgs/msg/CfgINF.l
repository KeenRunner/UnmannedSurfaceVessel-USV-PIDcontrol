;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgINF)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgINF (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGINF")
  (make-package "UBLOX_MSGS::CFGINF"))

(in-package "ROS")
;;//! \htmlinclude CfgINF.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGINF"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGINF"))
(defconstant ublox_msgs::CfgINF::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGINF"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGINF"))
(defconstant ublox_msgs::CfgINF::*MESSAGE_ID* 2)
(defclass ublox_msgs::CfgINF
  :super ros::object
  :slots (_blocks ))

(defmethod ublox_msgs::CfgINF
  (:init
   (&key
    ((:blocks __blocks) (let (r) (dotimes (i 0) (push (instance ublox_msgs::CfgINF_Block :init) r)) r))
    )
   (send-super :init)
   (setq _blocks __blocks)
   self)
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
    ;; ublox_msgs/CfgINF_Block[] _blocks
    (apply #'+ (send-all _blocks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ublox_msgs/CfgINF_Block[] _blocks
     (write-long (length _blocks) s)
     (dolist (elem _blocks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ublox_msgs/CfgINF_Block[] _blocks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blocks (let (r) (dotimes (i n) (push (instance ublox_msgs::CfgINF_Block :init) r)) r))
     (dolist (elem- _blocks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::CfgINF :md5sum-) "42fb321cf0c63684f2f7086e850ed61e")
(setf (get ublox_msgs::CfgINF :datatype-) "ublox_msgs/CfgINF")
(setf (get ublox_msgs::CfgINF :definition-)
      "# CFG-INF  (0x06 0x02)
# Information message configuration
#
# The value of infMsgMask[x] below are that each bit represents one of the INF 
# class messages (Bit 0 for ERROR, Bit 1 for WARNING and so on.). For a complete 
# list, see the Message Class INF. Several configurations can be concatenated to 
# one input message.
# In this case the payload length can be a multiple of the normal length. Output 
# messages from the module contain only one configuration unit. Note that I/O 
# Ports 1 and 2 correspond to serial ports 1 and 2. I/O port 0 is DDC. I/O port 
# 3 is USB. I/O port 4 is SPI. I/O port 5 is reserved for future use
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 2

# start of repeated block
CfgINF_Block[] blocks
# end of repeated block

================================================================================
MSG: ublox_msgs/CfgINF_Block
# See CfgINF message
#

uint8 protocolID          # Protocol Identifier, identifying for which
                          # protocol the configuration is set/get. The
                          # following are valid Protocol Identifiers:
                          # 0: UBX Protocol
                          # 1: NMEA Protocol
                          # 2-255: Reserved
uint8 PROTOCOL_ID_UBX = 0
uint8 PROTOCOL_ID_NMEA = 1

uint8[3] reserved1        # Reserved

uint8[6] infMsgMask       # A bit mask, saying which information messages
                          # are enabled on each I/O port
uint8 INF_MSG_ERROR = 1              # enable ERROR
uint8 INF_MSG_WARNING = 2            # enable WARNING
uint8 INF_MSG_NOTICE = 4             # enable NOTICE
uint8 INF_MSG_TEST = 8               # enable TEST
uint8 INF_MSG_DEBUG = 16             # enable DEBUG
")



(provide :ublox_msgs/CfgINF "42fb321cf0c63684f2f7086e850ed61e")


