;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmSFRBX)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmSFRBX (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMSFRBX")
  (make-package "UBLOX_MSGS::RXMSFRBX"))

(in-package "ROS")
;;//! \htmlinclude RxmSFRBX.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::RXMSFRBX"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::RXMSFRBX"))
(defconstant ublox_msgs::RxmSFRBX::*CLASS_ID* 2)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::RXMSFRBX"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::RXMSFRBX"))
(defconstant ublox_msgs::RxmSFRBX::*MESSAGE_ID* 19)
(defclass ublox_msgs::RxmSFRBX
  :super ros::object
  :slots (_gnssId _svId _reserved0 _freqId _numWords _chn _version _reserved1 _dwrd ))

(defmethod ublox_msgs::RxmSFRBX
  (:init
   (&key
    ((:gnssId __gnssId) 0)
    ((:svId __svId) 0)
    ((:reserved0 __reserved0) 0)
    ((:freqId __freqId) 0)
    ((:numWords __numWords) 0)
    ((:chn __chn) 0)
    ((:version __version) 0)
    ((:reserved1 __reserved1) 0)
    ((:dwrd __dwrd) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _gnssId (round __gnssId))
   (setq _svId (round __svId))
   (setq _reserved0 (round __reserved0))
   (setq _freqId (round __freqId))
   (setq _numWords (round __numWords))
   (setq _chn (round __chn))
   (setq _version (round __version))
   (setq _reserved1 (round __reserved1))
   (setq _dwrd __dwrd)
   self)
  (:gnssId
   (&optional __gnssId)
   (if __gnssId (setq _gnssId __gnssId)) _gnssId)
  (:svId
   (&optional __svId)
   (if __svId (setq _svId __svId)) _svId)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:freqId
   (&optional __freqId)
   (if __freqId (setq _freqId __freqId)) _freqId)
  (:numWords
   (&optional __numWords)
   (if __numWords (setq _numWords __numWords)) _numWords)
  (:chn
   (&optional __chn)
   (if __chn (setq _chn __chn)) _chn)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:dwrd
   (&optional __dwrd)
   (if __dwrd (setq _dwrd __dwrd)) _dwrd)
  (:serialization-length
   ()
   (+
    ;; uint8 _gnssId
    1
    ;; uint8 _svId
    1
    ;; uint8 _reserved0
    1
    ;; uint8 _freqId
    1
    ;; uint8 _numWords
    1
    ;; uint8 _chn
    1
    ;; uint8 _version
    1
    ;; uint8 _reserved1
    1
    ;; uint32[] _dwrd
    (* 4    (length _dwrd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gnssId
       (write-byte _gnssId s)
     ;; uint8 _svId
       (write-byte _svId s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint8 _freqId
       (write-byte _freqId s)
     ;; uint8 _numWords
       (write-byte _numWords s)
     ;; uint8 _chn
       (write-byte _chn s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; uint32[] _dwrd
     (write-long (length _dwrd) s)
     (dotimes (i (length _dwrd))
       (write-long (elt _dwrd i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gnssId
     (setq _gnssId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svId
     (setq _svId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _freqId
     (setq _freqId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _numWords
     (setq _numWords (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _chn
     (setq _chn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32[] _dwrd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dwrd (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _dwrd i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::RxmSFRBX :md5sum-) "c76473d828cc8e80de3a2d83cd6b9dff")
(setf (get ublox_msgs::RxmSFRBX :datatype-) "ublox_msgs/RxmSFRBX")
(setf (get ublox_msgs::RxmSFRBX :definition-)
      "# RXM-SFRB (0x02 0x13)
# Subframe Buffer
#
# This message reports a complete subframe of broadcast navigation data decoded 
# from a single signal. The number of data words reported in each message
# depends on the nature of the signal. See the section on Broadcast Navigation
# Data for further details.
#

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 19

uint8 gnssId            # GNSS identifier (see Cfg GNSS for constants)

uint8 svId              # Satellite identifier within corresponding GNSS system
uint8 reserved0         # Reserved
uint8 freqId            # Only used for GLONASS: This is the frequency
                        # slot + 7 (range from 0 to 13)
uint8 numWords          # The number of data words contained in this message (up
                        # to 10, for currently supported signals)
uint8 chn               # The tracking channel number the message was received
                        # on
uint8 version           # Message version, (0x02 for this version)
uint8 reserved1         # Reserved

# Start of repeated block (numWords times)
uint32[] dwrd           # The data words
# End of repeated block
")



(provide :ublox_msgs/RxmSFRBX "c76473d828cc8e80de3a2d83cd6b9dff")


