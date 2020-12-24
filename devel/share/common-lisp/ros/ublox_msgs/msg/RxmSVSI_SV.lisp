; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude RxmSVSI_SV.msg.html

(cl:defclass <RxmSVSI_SV> (roslisp-msg-protocol:ros-message)
  ((svid
    :reader svid
    :initarg :svid
    :type cl:fixnum
    :initform 0)
   (svFlag
    :reader svFlag
    :initarg :svFlag
    :type cl:fixnum
    :initform 0)
   (azim
    :reader azim
    :initarg :azim
    :type cl:fixnum
    :initform 0)
   (elev
    :reader elev
    :initarg :elev
    :type cl:fixnum
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxmSVSI_SV (<RxmSVSI_SV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxmSVSI_SV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxmSVSI_SV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<RxmSVSI_SV> is deprecated: use ublox_msgs-msg:RxmSVSI_SV instead.")))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <RxmSVSI_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'svFlag-val :lambda-list '(m))
(cl:defmethod svFlag-val ((m <RxmSVSI_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svFlag-val is deprecated.  Use ublox_msgs-msg:svFlag instead.")
  (svFlag m))

(cl:ensure-generic-function 'azim-val :lambda-list '(m))
(cl:defmethod azim-val ((m <RxmSVSI_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:azim-val is deprecated.  Use ublox_msgs-msg:azim instead.")
  (azim m))

(cl:ensure-generic-function 'elev-val :lambda-list '(m))
(cl:defmethod elev-val ((m <RxmSVSI_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:elev-val is deprecated.  Use ublox_msgs-msg:elev instead.")
  (elev m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <RxmSVSI_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:age-val is deprecated.  Use ublox_msgs-msg:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RxmSVSI_SV>)))
    "Constants for message type '<RxmSVSI_SV>"
  '((:FLAG_URA_MASK . 15)
    (:FLAG_HEALTHY . 16)
    (:FLAG_EPH_VAL . 32)
    (:FLAG_ALM_VAL . 64)
    (:FLAG_NOT_AVAIL . 128)
    (:AGE_ALM_MASK . 15)
    (:AGE_EPH_MASK . 240))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RxmSVSI_SV)))
    "Constants for message type 'RxmSVSI_SV"
  '((:FLAG_URA_MASK . 15)
    (:FLAG_HEALTHY . 16)
    (:FLAG_EPH_VAL . 32)
    (:FLAG_ALM_VAL . 64)
    (:FLAG_NOT_AVAIL . 128)
    (:AGE_ALM_MASK . 15)
    (:AGE_EPH_MASK . 240))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxmSVSI_SV>) ostream)
  "Serializes a message object of type '<RxmSVSI_SV>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svFlag)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'azim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'elev)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxmSVSI_SV>) istream)
  "Deserializes a message object of type '<RxmSVSI_SV>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svFlag)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'azim) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elev) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxmSVSI_SV>)))
  "Returns string type for a message object of type '<RxmSVSI_SV>"
  "ublox_msgs/RxmSVSI_SV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxmSVSI_SV)))
  "Returns string type for a message object of type 'RxmSVSI_SV"
  "ublox_msgs/RxmSVSI_SV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxmSVSI_SV>)))
  "Returns md5sum for a message object of type '<RxmSVSI_SV>"
  "055e3ca33052c1635aff80c3f8ab6197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxmSVSI_SV)))
  "Returns md5sum for a message object of type 'RxmSVSI_SV"
  "055e3ca33052c1635aff80c3f8ab6197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxmSVSI_SV>)))
  "Returns full string definition for message of type '<RxmSVSI_SV>"
  (cl:format cl:nil "# see message RxmSVSI~%#~%~%uint8 svid            # Satellite ID~%~%uint8 svFlag          # Information Flags~%uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15~%uint8 FLAG_HEALTHY = 16       # SV healthy flag~%uint8 FLAG_EPH_VAL = 32       # Ephemeris valid~%uint8 FLAG_ALM_VAL = 64       # Almanac valid~%uint8 FLAG_NOT_AVAIL = 128    # SV not available~%~%int16 azim            # Azimuth~%int8 elev             # Elevation~%~%uint8 age             # Age of Almanac and Ephemeris~%uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4~%                              # i.e. the reference time may be in the future:~%                              # ageOfAlm = (age & 0x0f) - 4~%uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.~%                              # i.e. the reference time may be in the future:~%                              # ageOfEph = ((age & 0xf0) >> 4) - 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxmSVSI_SV)))
  "Returns full string definition for message of type 'RxmSVSI_SV"
  (cl:format cl:nil "# see message RxmSVSI~%#~%~%uint8 svid            # Satellite ID~%~%uint8 svFlag          # Information Flags~%uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15~%uint8 FLAG_HEALTHY = 16       # SV healthy flag~%uint8 FLAG_EPH_VAL = 32       # Ephemeris valid~%uint8 FLAG_ALM_VAL = 64       # Almanac valid~%uint8 FLAG_NOT_AVAIL = 128    # SV not available~%~%int16 azim            # Azimuth~%int8 elev             # Elevation~%~%uint8 age             # Age of Almanac and Ephemeris~%uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4~%                              # i.e. the reference time may be in the future:~%                              # ageOfAlm = (age & 0x0f) - 4~%uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.~%                              # i.e. the reference time may be in the future:~%                              # ageOfEph = ((age & 0xf0) >> 4) - 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxmSVSI_SV>))
  (cl:+ 0
     1
     1
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxmSVSI_SV>))
  "Converts a ROS message object to a list"
  (cl:list 'RxmSVSI_SV
    (cl:cons ':svid (svid msg))
    (cl:cons ':svFlag (svFlag msg))
    (cl:cons ':azim (azim msg))
    (cl:cons ':elev (elev msg))
    (cl:cons ':age (age msg))
))
