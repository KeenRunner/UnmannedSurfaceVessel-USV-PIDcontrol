; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmALM.msg.html

(cl:defclass <RxmALM> (roslisp-msg-protocol:ros-message)
  ((svid
    :reader svid
    :initarg :svid
    :type cl:integer
    :initform 0)
   (week
    :reader week
    :initarg :week
    :type cl:integer
    :initform 0)
   (dwrd
    :reader dwrd
    :initarg :dwrd
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass RxmALM (<RxmALM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmALM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmALM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmALM> is deprecated: use ublox_msgs-msg:RxmALM instead.")))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <RxmALM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <RxmALM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:week-val is deprecated.  Use ublox_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'dwrd-val :lambda-list '(m))
(cl:defmethod dwrd-val ((m <RxmALM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dwrd-val is deprecated.  Use ublox_msgs-msg:dwrd instead.")
  (dwrd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmALM>)))
    "Constants for message type '<RxmALM>"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 48))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmALM)))
    "Constants for message type 'RxmALM"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 48))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmALM>) ostream)
  "Serializes a message object of type '<RxmALM>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dwrd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'dwrd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmALM>) istream)
  "Deserializes a message object of type '<RxmALM>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dwrd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dwrd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmALM>)))
  "Returns string type for a message object of type '<RxmALM>"
  "ublox_msgs/RxmALM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmALM)))
  "Returns string type for a message object of type 'RxmALM"
  "ublox_msgs/RxmALM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmALM>)))
  "Returns md5sum for a message object of type '<RxmALM>"
  "97a9e7864105ab31fc93f2e4bef9de26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmALM)))
  "Returns md5sum for a message object of type 'RxmALM"
  "97a9e7864105ab31fc93f2e4bef9de26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmALM>)))
  "Returns full string definition for message of type '<RxmALM>"
  (cl:format cl:nil "# RXM-ALM (0x02 0x30)~%# GPS Aiding Almanach Input/Output Message~%#~%# This message is provided considered obsolete, please use AID-ALM instead!~%# - If the WEEK Value is 0, DWRD0 to DWRD7 are not sent as the almanach is not ~%#   available for the given SV.~%# - DWORD0 to DWORD7 contain the 8 words following the Hand-Over Word ( HOW )~%#   from the GPS navigation message, either pages 1 to 24 of sub-frame 5 or ~%#   pages 2 to 10 of subframe 4. See IS-GPS-200 for a full description of the ~%#   contents of the Almanac pages.~%# - In DWORD0 to DWORD7, the parity bits have been removed, and the 24 bits of ~%#   data are located in Bits 0 to 23. Bits 24 to 31 shall be ignored.~%# - Example: Parameter e (Eccentricity) from Almanach Subframe 4/5, Word 3, ~%#   Bits 69-84 within the subframe can be found in DWRD0, Bits 15-0 whereas ~%#   Bit 0 is the LSB.~%#~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 48~%~%uint32 svid             # SV ID for which this Almanach Data is ~%                        # (Valid Range: 1 .. 32 or 51, 56, 63).~%uint32 week             # Issue Date of Almanach (GPS week number)~%~%# Start of optional block~%uint32[] dwrd           # Almanach Words~%# End of optional block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmALM)))
  "Returns full string definition for message of type 'RxmALM"
  (cl:format cl:nil "# RXM-ALM (0x02 0x30)~%# GPS Aiding Almanach Input/Output Message~%#~%# This message is provided considered obsolete, please use AID-ALM instead!~%# - If the WEEK Value is 0, DWRD0 to DWRD7 are not sent as the almanach is not ~%#   available for the given SV.~%# - DWORD0 to DWORD7 contain the 8 words following the Hand-Over Word ( HOW )~%#   from the GPS navigation message, either pages 1 to 24 of sub-frame 5 or ~%#   pages 2 to 10 of subframe 4. See IS-GPS-200 for a full description of the ~%#   contents of the Almanac pages.~%# - In DWORD0 to DWORD7, the parity bits have been removed, and the 24 bits of ~%#   data are located in Bits 0 to 23. Bits 24 to 31 shall be ignored.~%# - Example: Parameter e (Eccentricity) from Almanach Subframe 4/5, Word 3, ~%#   Bits 69-84 within the subframe can be found in DWRD0, Bits 15-0 whereas ~%#   Bit 0 is the LSB.~%#~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 48~%~%uint32 svid             # SV ID for which this Almanach Data is ~%                        # (Valid Range: 1 .. 32 or 51, 56, 63).~%uint32 week             # Issue Date of Almanach (GPS week number)~%~%# Start of optional block~%uint32[] dwrd           # Almanach Words~%# End of optional block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmALM>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dwrd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmALM>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmALM
    (cl:cons ':svid (svid msg))
    (cl:cons ':week (week msg))
    (cl:cons ':dwrd (dwrd msg))
))
