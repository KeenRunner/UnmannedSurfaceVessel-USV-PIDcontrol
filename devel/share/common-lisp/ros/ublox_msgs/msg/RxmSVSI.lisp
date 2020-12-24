; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmSVSI.msg.html

(cl:defclass <RxmSVSI> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (week
    :reader week
    :initarg :week
    :type cl:fixnum
    :initform 0)
   (numVis
    :reader numVis
    :initarg :numVis
    :type cl:fixnum
    :initform 0)
   (numSV
    :reader numSV
    :initarg :numSV
    :type cl:fixnum
    :initform 0)
   (sv
    :reader sv
    :initarg :sv
    :type (cl:vector ublox_msgs-msg:RxmSVSI_SV)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:RxmSVSI_SV :initial-element (cl:make-instance 'ublox_msgs-msg:RxmSVSI_SV))))
)

(cl:defclass RxmSVSI (<RxmSVSI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmSVSI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmSVSI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmSVSI> is deprecated: use ublox_msgs-msg:RxmSVSI instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <RxmSVSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <RxmSVSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:week-val is deprecated.  Use ublox_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'numVis-val :lambda-list '(m))
(cl:defmethod numVis-val ((m <RxmSVSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numVis-val is deprecated.  Use ublox_msgs-msg:numVis instead.")
  (numVis m))

(cl:ensure-generic-function 'numSV-val :lambda-list '(m))
(cl:defmethod numSV-val ((m <RxmSVSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numSV-val is deprecated.  Use ublox_msgs-msg:numSV instead.")
  (numSV m))

(cl:ensure-generic-function 'sv-val :lambda-list '(m))
(cl:defmethod sv-val ((m <RxmSVSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sv-val is deprecated.  Use ublox_msgs-msg:sv instead.")
  (sv m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmSVSI>)))
    "Constants for message type '<RxmSVSI>"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmSVSI)))
    "Constants for message type 'RxmSVSI"
  '((:CLASS_ID . 2)
    (:MESSAGE_ID . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmSVSI>) ostream)
  "Serializes a message object of type '<RxmSVSI>"
  (cl:let* ((signed (cl:slot-value msg 'iTOW)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numVis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmSVSI>) istream)
  "Deserializes a message object of type '<RxmSVSI>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iTOW) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'week) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numVis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sv)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:RxmSVSI_SV))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmSVSI>)))
  "Returns string type for a message object of type '<RxmSVSI>"
  "ublox_msgs/RxmSVSI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmSVSI)))
  "Returns string type for a message object of type 'RxmSVSI"
  "ublox_msgs/RxmSVSI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmSVSI>)))
  "Returns md5sum for a message object of type '<RxmSVSI>"
  "8358c0613232b962d48cf13f5bda0070")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmSVSI)))
  "Returns md5sum for a message object of type 'RxmSVSI"
  "8358c0613232b962d48cf13f5bda0070")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmSVSI>)))
  "Returns full string definition for message of type '<RxmSVSI>"
  (cl:format cl:nil "# RXM-SVSI (0x02 0x20)~%# SV Status Info~%#~%# Status of the receiver manager knowledge about GPS Orbit Validity~%#~%# This message has only been retained for backwards compatibility; users are~%# recommended to use the UBX-NAV-ORB message in preference.~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 32~%~%int32 iTOW              # GPS time of week of the navigation epoch [ms]~%int16 week              # GPS week number of the navigation epoch [weeks]~%~%uint8 numVis            # Number of visible satellites~%uint8 numSV             # Number of per-SV data blocks following~%~%RxmSVSI_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/RxmSVSI_SV~%# see message RxmSVSI~%#~%~%uint8 svid            # Satellite ID~%~%uint8 svFlag          # Information Flags~%uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15~%uint8 FLAG_HEALTHY = 16       # SV healthy flag~%uint8 FLAG_EPH_VAL = 32       # Ephemeris valid~%uint8 FLAG_ALM_VAL = 64       # Almanac valid~%uint8 FLAG_NOT_AVAIL = 128    # SV not available~%~%int16 azim            # Azimuth~%int8 elev             # Elevation~%~%uint8 age             # Age of Almanac and Ephemeris~%uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4~%                              # i.e. the reference time may be in the future:~%                              # ageOfAlm = (age & 0x0f) - 4~%uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.~%                              # i.e. the reference time may be in the future:~%                              # ageOfEph = ((age & 0xf0) >> 4) - 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmSVSI)))
  "Returns full string definition for message of type 'RxmSVSI"
  (cl:format cl:nil "# RXM-SVSI (0x02 0x20)~%# SV Status Info~%#~%# Status of the receiver manager knowledge about GPS Orbit Validity~%#~%# This message has only been retained for backwards compatibility; users are~%# recommended to use the UBX-NAV-ORB message in preference.~%~%uint8 CLASS_ID = 2~%uint8 MESSAGE_ID = 32~%~%int32 iTOW              # GPS time of week of the navigation epoch [ms]~%int16 week              # GPS week number of the navigation epoch [weeks]~%~%uint8 numVis            # Number of visible satellites~%uint8 numSV             # Number of per-SV data blocks following~%~%RxmSVSI_SV[] sv~%~%================================================================================~%MSG: ublox_msgs/RxmSVSI_SV~%# see message RxmSVSI~%#~%~%uint8 svid            # Satellite ID~%~%uint8 svFlag          # Information Flags~%uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15~%uint8 FLAG_HEALTHY = 16       # SV healthy flag~%uint8 FLAG_EPH_VAL = 32       # Ephemeris valid~%uint8 FLAG_ALM_VAL = 64       # Almanac valid~%uint8 FLAG_NOT_AVAIL = 128    # SV not available~%~%int16 azim            # Azimuth~%int8 elev             # Elevation~%~%uint8 age             # Age of Almanac and Ephemeris~%uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4~%                              # i.e. the reference time may be in the future:~%                              # ageOfAlm = (age & 0x0f) - 4~%uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.~%                              # i.e. the reference time may be in the future:~%                              # ageOfEph = ((age & 0xf0) >> 4) - 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmSVSI>))
  (cl:+ 0
     4
     2
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmSVSI>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmSVSI
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':week (week msg))
    (cl:cons ':numVis (numVis msg))
    (cl:cons ':numSV (numSV msg))
    (cl:cons ':sv (sv msg))
))
