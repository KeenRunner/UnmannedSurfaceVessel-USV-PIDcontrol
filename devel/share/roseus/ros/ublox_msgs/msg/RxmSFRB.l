;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::RxmSFRB)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'RxmSFRB (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::RXMSFRB")
  (make-package "UBLOX_MSGS::RXMSFRB"))

(in-package "ROS")
;;//! \htmlinclude RxmSFRB.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::RXMSFRB"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::RXMSFRB"))
(defconstant ublox_msgs::RxmSFRB::*CLASS_ID* 2)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::RXMSFRB"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::RXMSFRB"))
(defconstant ublox_msgs::RxmSFRB::*MESSAGE_ID* 17)
(defclass ublox_msgs::RxmSFRB
  :super ros::object
  :slots (_chn _svid _dwrd ))

(defmethod ublox_msgs::RxmSFRB
  (:init
   (&key
    ((:chn __chn) 0)
    ((:svid __svid) 0)
    ((:dwrd __dwrd) (make-array 10 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _chn (round __chn))
   (setq _svid (round __svid))
   (setq _dwrd __dwrd)
   self)
  (:chn
   (&optional __chn)
   (if __chn (setq _chn __chn)) _chn)
  (:svid
   (&optional __svid)
   (if __svid (setq _svid __svid)) _svid)
  (:dwrd
   (&optional __dwrd)
   (if __dwrd (setq _dwrd __dwrd)) _dwrd)
  (:serialization-length
   ()
   (+
    ;; uint8 _chn
    1
    ;; uint8 _svid
    1
    ;; uint32[10] _dwrd
    (* 4    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _chn
       (write-byte _chn s)
     ;; uint8 _svid
       (write-byte _svid s)
     ;; uint32[10] _dwrd
     (dotimes (i 10)
       (write-long (elt _dwrd i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _chn
     (setq _chn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svid
     (setq _svid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32[10] _dwrd
   (dotimes (i (length _dwrd))
     (setf (elt _dwrd i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get ublox_msgs::RxmSFRB :md5sum-) "eec72635c768d0528138f40de7442203")
(setf (get ublox_msgs::RxmSFRB :datatype-) "ublox_msgs/RxmSFRB")
(setf (get ublox_msgs::RxmSFRB :definition-)
      "# RXM-SFRB (0x02 0x11)
# Subframe Buffer
#
# The content of one single subframe buffer
# For GPS satellites, the 10 dwrd values contain the parity checked subframe 
# data for 10 Words. Each dwrd has 24 Bits with valid data (Bits 23 to 0). The 
# remaining 8 bits (31 to 24) have an undefined value. The direction within the 
# Word is that the higher order bits are received from the SV first. Example: 
# The Preamble can be found in dwrd[0], at bit position 23 down to 16. For more 
# details on the data format please refer to the ICD-GPS-200C
# Interface document.
# For SBAS satellites, the 250 Bit message block can be found in dwrd[0] to 
# dwrd[6] for the first 224 bits. The remaining 26 bits are in dwrd[7], whereas
# Bits 25 and 24 are the last two data bits, and Bits 23 down to 0 are the
# parity bits. For more information on SBAS data format, please refer to 
# RTCA/DO-229C (MOPS), Appendix A.
#

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 17

uint8 chn               # Channel Number
uint8 svid              # ID of Satellite transmitting Subframe
uint32[10] dwrd         # Words of Data

")



(provide :ublox_msgs/RxmSFRB "eec72635c768d0528138f40de7442203")


