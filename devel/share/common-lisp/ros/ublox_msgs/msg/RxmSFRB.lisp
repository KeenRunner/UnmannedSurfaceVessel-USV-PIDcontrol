; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmSFRB.msg.html

(cl:defclass <RxmSFRB> (roslisp-msg-protocol:ros-message)
  ((chn
    :reader chn
    :initarg :chn
    :type cl:fixnum
    :initform 0)
   (svid
    :reader svid
    :initarg :svid
    :type cl:fixnum
    :initform 0)
   (dwrd
    :reader dwrd
    :initarg :dwrd
    :type (cl:vector cl:integer)
   :initform (cl:make-array 10 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass RxmSFRB (<RxmSFRB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmSFRB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmSFRB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmSFRB> is deprecated: use ublox_msgs-msg:RxmSFRB instead.")))

(cl:ensure-generic-function 'chn-val :lambda-list '(m))
(cl:defmethod chn-val ((m <RxmSFRB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:chn-val is deprecated.  Use ublox_msgs-msg:chn instead.")
  (chn m))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <RxmSFRB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'dwrd-val :lambda-list '(m))
(cl:defmethod dwrd-val ((m <RxmSFRB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dwrd-val is deprecated.  Use ublox_msgs-msg:dwrd instead.")
  (dwrd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmSFRB>)))
    "Constants for message type '<RxmSFRB>"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 17))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmSFRB)))
    "Constants for message type 'RxmSFRB"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 17))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmSFRB>) ostream)
  "Serializes a message object of type '<RxmSFRB>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'dwrd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmSFRB>) istream)
  "Deserializes a message object of type '<RxmSFRB>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dwrd) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'dwrd)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmSFRB>)))
  "Returns string type for a message object of type '<RxmSFRB>"
  "ublox_msgs/RxmSFRB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmSFRB)))
  "Returns string type for a message object of type 'RxmSFRB"
  "ublox_msgs/RxmSFRB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmSFRB>)))
  "Returns md5sum for a message object of type '<RxmSFRB>"
  "eec72635c768d0528138f40de7442203")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmSFRB)))
  "Returns md5sum for a message object of type 'RxmSFRB"
  "eec72635c768d0528138f40de7442203")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmSFRB>)))
  "Returns full string definition for message of type '<RxmSFRB>"
  (cl:format cl:nil "# RXM-SFRB (0x02 0x11)~%# Subframe Buffer~%#~%# The content of one single subframe buffer~%# For GPS satellites, the 10 dwrd values contain the parity checked subframe ~%# data for 10 Words. Each dwrd has 24 Bits with valid data (Bits 23 to 0). The ~%# remaining 8 bits (31 to 24) have an undefined value. The direction within the ~%# Word is that the higher order bits are received from the SV first. Example: ~%# The Preamble can be found in dwrd[0], at bit position 23 down to 16. For more ~%# details on the data format please refer to the ICD-GPS-200C~%# Interface document.~%# For SBAS satellites, the 250 Bit message block can be found in dwrd[0] to ~%# dwrd[6] for the first 224 bits. The remaining 26 bits are in dwrd[7], whereas~%# Bits 25 and 24 are the last two data bits, and Bits 23 down to 0 are the~%# parity bits. For more information on SBAS data format, please refer to ~%# RTCA/DO-229C (MOPS), Appendix A.~%#~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 17~%~%uint8 chn               # Channel Number~%uint8 svid              # ID of Satellite transmitting Subframe~%uint32[10] dwrd         # Words of Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmSFRB)))
  "Returns full string definition for message of type 'RxmSFRB"
  (cl:format cl:nil "# RXM-SFRB (0x02 0x11)~%# Subframe Buffer~%#~%# The content of one single subframe buffer~%# For GPS satellites, the 10 dwrd values contain the parity checked subframe ~%# data for 10 Words. Each dwrd has 24 Bits with valid data (Bits 23 to 0). The ~%# remaining 8 bits (31 to 24) have an undefined value. The direction within the ~%# Word is that the higher order bits are received from the SV first. Example: ~%# The Preamble can be found in dwrd[0], at bit position 23 down to 16. For more ~%# details on the data format please refer to the ICD-GPS-200C~%# Interface document.~%# For SBAS satellites, the 250 Bit message block can be found in dwrd[0] to ~%# dwrd[6] for the first 224 bits. The remaining 26 bits are in dwrd[7], whereas~%# Bits 25 and 24 are the last two data bits, and Bits 23 down to 0 are the~%# parity bits. For more information on SBAS data format, please refer to ~%# RTCA/DO-229C (MOPS), Appendix A.~%#~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 17~%~%uint8 chn               # Channel Number~%uint8 svid              # ID of Satellite transmitting Subframe~%uint32[10] dwrd         # Words of Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmSFRB>))
  (cl:+ 0
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'dwrd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmSFRB>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmSFRB
    (cl:cons ':chn (chn msg))
    (cl:cons ':svid (svid msg))
    (cl:cons ':dwrd (dwrd msg))
))
