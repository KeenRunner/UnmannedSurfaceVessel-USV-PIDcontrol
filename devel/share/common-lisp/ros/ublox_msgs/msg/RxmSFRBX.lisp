; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmSFRBX.msg.html

(cl:defclass <RxmSFRBX> (roslisp-msg-protocol:ros-message)
  ((gnssId
    :reader gnssId
    :initarg :gnssId
    :type cl:fixnum
    :initform 0)
   (svId
    :reader svId
    :initarg :svId
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type cl:fixnum
    :initform 0)
   (freqId
    :reader freqId
    :initarg :freqId
    :type cl:fixnum
    :initform 0)
   (numWords
    :reader numWords
    :initarg :numWords
    :type cl:fixnum
    :initform 0)
   (chn
    :reader chn
    :initarg :chn
    :type cl:fixnum
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (dwrd
    :reader dwrd
    :initarg :dwrd
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass RxmSFRBX (<RxmSFRBX>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmSFRBX>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmSFRBX)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmSFRBX> is deprecated: use ublox_msgs-msg:RxmSFRBX instead.")))

(cl:ensure-generic-function 'gnssId-val :lambda-list '(m))
(cl:defmethod gnssId-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gnssId-val is deprecated.  Use ublox_msgs-msg:gnssId instead.")
  (gnssId m))

(cl:ensure-generic-function 'svId-val :lambda-list '(m))
(cl:defmethod svId-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svId-val is deprecated.  Use ublox_msgs-msg:svId instead.")
  (svId m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'freqId-val :lambda-list '(m))
(cl:defmethod freqId-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:freqId-val is deprecated.  Use ublox_msgs-msg:freqId instead.")
  (freqId m))

(cl:ensure-generic-function 'numWords-val :lambda-list '(m))
(cl:defmethod numWords-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numWords-val is deprecated.  Use ublox_msgs-msg:numWords instead.")
  (numWords m))

(cl:ensure-generic-function 'chn-val :lambda-list '(m))
(cl:defmethod chn-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:chn-val is deprecated.  Use ublox_msgs-msg:chn instead.")
  (chn m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'dwrd-val :lambda-list '(m))
(cl:defmethod dwrd-val ((m <RxmSFRBX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dwrd-val is deprecated.  Use ublox_msgs-msg:dwrd instead.")
  (dwrd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmSFRBX>)))
    "Constants for message type '<RxmSFRBX>"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 19))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmSFRBX)))
    "Constants for message type 'RxmSFRBX"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 19))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmSFRBX>) ostream)
  "Serializes a message object of type '<RxmSFRBX>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numWords)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmSFRBX>) istream)
  "Deserializes a message object of type '<RxmSFRBX>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnssId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numWords)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmSFRBX>)))
  "Returns string type for a message object of type '<RxmSFRBX>"
  "ublox_msgs/RxmSFRBX")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmSFRBX)))
  "Returns string type for a message object of type 'RxmSFRBX"
  "ublox_msgs/RxmSFRBX")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmSFRBX>)))
  "Returns md5sum for a message object of type '<RxmSFRBX>"
  "c76473d828cc8e80de3a2d83cd6b9dff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmSFRBX)))
  "Returns md5sum for a message object of type 'RxmSFRBX"
  "c76473d828cc8e80de3a2d83cd6b9dff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmSFRBX>)))
  "Returns full string definition for message of type '<RxmSFRBX>"
  (cl:format cl:nil "# RXM-SFRB (0x02 0x13)~%# Subframe Buffer~%#~%# This message reports a complete subframe of broadcast navigation data decoded ~%# from a single signal. The number of data words reported in each message~%# depends on the nature of the signal. See the section on Broadcast Navigation~%# Data for further details.~%#~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 19~%~%uint8 gnssId            # GNSS identifier (see Cfg GNSS for constants)~%~%uint8 svId              # Satellite identifier within corresponding GNSS system~%uint8 reserved0         # Reserved~%uint8 freqId            # Only used for GLONASS: This is the frequency~%                        # slot + 7 (range from 0 to 13)~%uint8 numWords          # The number of data words contained in this message (up~%                        # to 10, for currently supported signals)~%uint8 chn               # The tracking channel number the message was received~%                        # on~%uint8 version           # Message version, (0x02 for this version)~%uint8 reserved1         # Reserved~%~%# Start of repeated block (numWords times)~%uint32[] dwrd           # The data words~%# End of repeated block~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmSFRBX)))
  "Returns full string definition for message of type 'RxmSFRBX"
  (cl:format cl:nil "# RXM-SFRB (0x02 0x13)~%# Subframe Buffer~%#~%# This message reports a complete subframe of broadcast navigation data decoded ~%# from a single signal. The number of data words reported in each message~%# depends on the nature of the signal. See the section on Broadcast Navigation~%# Data for further details.~%#~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 19~%~%uint8 gnssId            # GNSS identifier (see Cfg GNSS for constants)~%~%uint8 svId              # Satellite identifier within corresponding GNSS system~%uint8 reserved0         # Reserved~%uint8 freqId            # Only used for GLONASS: This is the frequency~%                        # slot + 7 (range from 0 to 13)~%uint8 numWords          # The number of data words contained in this message (up~%                        # to 10, for currently supported signals)~%uint8 chn               # The tracking channel number the message was received~%                        # on~%uint8 version           # Message version, (0x02 for this version)~%uint8 reserved1         # Reserved~%~%# Start of repeated block (numWords times)~%uint32[] dwrd           # The data words~%# End of repeated block~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmSFRBX>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dwrd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmSFRBX>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmSFRBX
    (cl:cons ':gnssId (gnssId msg))
    (cl:cons ':svId (svId msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':freqId (freqId msg))
    (cl:cons ':numWords (numWords msg))
    (cl:cons ':chn (chn msg))
    (cl:cons ':version (version msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':dwrd (dwrd msg))
))
