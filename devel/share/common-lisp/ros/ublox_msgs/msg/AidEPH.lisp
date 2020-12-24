; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude AidEPH.msg.html

(cl:defclass <AidEPH> (roslisp-msg-protocol:ros-message)
  ((svid
    :reader svid
    :initarg :svid
    :type cl:integer
    :initform 0)
   (how
    :reader how
    :initarg :how
    :type cl:integer
    :initform 0)
   (sf1d
    :reader sf1d
    :initarg :sf1d
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (sf2d
    :reader sf2d
    :initarg :sf2d
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (sf3d
    :reader sf3d
    :initarg :sf3d
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AidEPH (<AidEPH>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AidEPH>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AidEPH)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<AidEPH> is deprecated: use ublox_msgs-msg:AidEPH instead.")))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <AidEPH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'how-val :lambda-list '(m))
(cl:defmethod how-val ((m <AidEPH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:how-val is deprecated.  Use ublox_msgs-msg:how instead.")
  (how m))

(cl:ensure-generic-function 'sf1d-val :lambda-list '(m))
(cl:defmethod sf1d-val ((m <AidEPH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sf1d-val is deprecated.  Use ublox_msgs-msg:sf1d instead.")
  (sf1d m))

(cl:ensure-generic-function 'sf2d-val :lambda-list '(m))
(cl:defmethod sf2d-val ((m <AidEPH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sf2d-val is deprecated.  Use ublox_msgs-msg:sf2d instead.")
  (sf2d m))

(cl:ensure-generic-function 'sf3d-val :lambda-list '(m))
(cl:defmethod sf3d-val ((m <AidEPH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sf3d-val is deprecated.  Use ublox_msgs-msg:sf3d instead.")
  (sf3d m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AidEPH>)))
    "Constants for message type '<AidEPH>"
  '((:CLASS_ID . 11)
    (:MESSAGE_ID . 49))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AidEPH)))
    "Constants for message type 'AidEPH"
  '((:CLASS_ID . 11)
    (:MESSAGE_ID . 49))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AidEPH>) ostream)
  "Serializes a message object of type '<AidEPH>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'how)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'how)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'how)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'how)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sf1d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'sf1d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sf2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'sf2d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sf3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'sf3d))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AidEPH>) istream)
  "Deserializes a message object of type '<AidEPH>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'how)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'how)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'how)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'how)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sf1d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sf1d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sf2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sf2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sf3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sf3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AidEPH>)))
  "Returns string type for a message object of type '<AidEPH>"
  "ublox_msgs/AidEPH")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AidEPH)))
  "Returns string type for a message object of type 'AidEPH"
  "ublox_msgs/AidEPH")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AidEPH>)))
  "Returns md5sum for a message object of type '<AidEPH>"
  "796d86b27ebfe497b3a42695f2e69e13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AidEPH)))
  "Returns md5sum for a message object of type 'AidEPH"
  "796d86b27ebfe497b3a42695f2e69e13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AidEPH>)))
  "Returns full string definition for message of type '<AidEPH>"
  (cl:format cl:nil "# AID-EPH (0x0B 0x31)~%# GPS Aiding Ephemeris Input/Output Message~%#~%# All UBX-AID messages are deprecated; use UBX-MGA messages instead~%# - SF1D0 to SF3D7 is only sent if ephemeris is available for this SV. If not, the payload may~%#   be reduced to 8 Bytes, or all bytes are set to zero, indicating that this SV Number does~%#   not have valid ephemeris for the moment. This may happen even if NAV-SVINFO and~%#   RXM-SVSI are indicating ephemeris availability as the internal data may not represent the~%#   content of an original broadcast ephemeris (or only parts thereof).~%# - SF1D0 to SF3D7 contain the 24 words following the Hand-Over Word ( HOW ) from the~%#   GPS navigation message, subframes 1 to 3. The Truncated TOW Count is not valid and~%#   cannot be used. See IS-GPS-200 for a full description of the contents of the Subframes.~%# - In SF1D0 to SF3D7, the parity bits have been removed, and the 24 bits of data are~%#   located in Bits 0 to 23. Bits 24 to 31 shall be ignored.~%# - When polled, the data contained in this message does not represent the full original~%#   ephemeris broadcast. Some fields that are irrelevant to u-blox receivers may be missing.~%#   The week number in Subframe 1 has already been modified to match the Time Of~%#   Ephemeris (TOE).~%~%uint8 CLASS_ID = 11~%uint8 MESSAGE_ID = 49~%~%uint32 svid             # SV ID for which this ephemeris data is ~%                        # (Valid Range: 1 .. 32).~%uint32 how              # Hand-Over Word of first Subframe. This is~%                        # required if data is sent to the receiver.~%                        # 0 indicates that no Ephemeris Data is following.~%~%# Start of optional block~%uint32[] sf1d          # Subframe 1 Words 3..10 (SF1D0..SF1D7)~%uint32[] sf2d          # Subframe 2 Words 3..10 (SF2D0..SF2D7)~%uint32[] sf3d          # Subframe 3 Words 3..10 (SF3D0..SF3D7)~%# End of optional block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AidEPH)))
  "Returns full string definition for message of type 'AidEPH"
  (cl:format cl:nil "# AID-EPH (0x0B 0x31)~%# GPS Aiding Ephemeris Input/Output Message~%#~%# All UBX-AID messages are deprecated; use UBX-MGA messages instead~%# - SF1D0 to SF3D7 is only sent if ephemeris is available for this SV. If not, the payload may~%#   be reduced to 8 Bytes, or all bytes are set to zero, indicating that this SV Number does~%#   not have valid ephemeris for the moment. This may happen even if NAV-SVINFO and~%#   RXM-SVSI are indicating ephemeris availability as the internal data may not represent the~%#   content of an original broadcast ephemeris (or only parts thereof).~%# - SF1D0 to SF3D7 contain the 24 words following the Hand-Over Word ( HOW ) from the~%#   GPS navigation message, subframes 1 to 3. The Truncated TOW Count is not valid and~%#   cannot be used. See IS-GPS-200 for a full description of the contents of the Subframes.~%# - In SF1D0 to SF3D7, the parity bits have been removed, and the 24 bits of data are~%#   located in Bits 0 to 23. Bits 24 to 31 shall be ignored.~%# - When polled, the data contained in this message does not represent the full original~%#   ephemeris broadcast. Some fields that are irrelevant to u-blox receivers may be missing.~%#   The week number in Subframe 1 has already been modified to match the Time Of~%#   Ephemeris (TOE).~%~%uint8 CLASS_ID = 11~%uint8 MESSAGE_ID = 49~%~%uint32 svid             # SV ID for which this ephemeris data is ~%                        # (Valid Range: 1 .. 32).~%uint32 how              # Hand-Over Word of first Subframe. This is~%                        # required if data is sent to the receiver.~%                        # 0 indicates that no Ephemeris Data is following.~%~%# Start of optional block~%uint32[] sf1d          # Subframe 1 Words 3..10 (SF1D0..SF1D7)~%uint32[] sf2d          # Subframe 2 Words 3..10 (SF2D0..SF2D7)~%uint32[] sf3d          # Subframe 3 Words 3..10 (SF3D0..SF3D7)~%# End of optional block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AidEPH>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sf1d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sf2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sf3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AidEPH>))
  "Converts a ROS message object to a list"
  (cl:list 'AidEPH
    (cl:cons ':svid (svid msg))
    (cl:cons ':how (how msg))
    (cl:cons ':sf1d (sf1d msg))
    (cl:cons ':sf2d (sf2d msg))
    (cl:cons ':sf3d (sf3d msg))
))
