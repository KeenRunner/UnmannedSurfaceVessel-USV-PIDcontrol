; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude HnrPVT.msg.html

(cl:defclass <HnrPVT> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0)
   (hour
    :reader hour
    :initarg :hour
    :type cl:fixnum
    :initform 0)
   (min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (sec
    :reader sec
    :initarg :sec
    :type cl:fixnum
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:fixnum
    :initform 0)
   (nano
    :reader nano
    :initarg :nano
    :type cl:integer
    :initform 0)
   (gpsFix
    :reader gpsFix
    :initarg :gpsFix
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (lon
    :reader lon
    :initarg :lon
    :type cl:integer
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (hMSL
    :reader hMSL
    :initarg :hMSL
    :type cl:integer
    :initform 0)
   (gSpeed
    :reader gSpeed
    :initarg :gSpeed
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (headMot
    :reader headMot
    :initarg :headMot
    :type cl:integer
    :initform 0)
   (headVeh
    :reader headVeh
    :initarg :headVeh
    :type cl:integer
    :initform 0)
   (hAcc
    :reader hAcc
    :initarg :hAcc
    :type cl:integer
    :initform 0)
   (vAcc
    :reader vAcc
    :initarg :vAcc
    :type cl:integer
    :initform 0)
   (sAcc
    :reader sAcc
    :initarg :sAcc
    :type cl:integer
    :initform 0)
   (headAcc
    :reader headAcc
    :initarg :headAcc
    :type cl:integer
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass HnrPVT (<HnrPVT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HnrPVT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HnrPVT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<HnrPVT> is deprecated: use ublox_msgs-msg:HnrPVT instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:year-val is deprecated.  Use ublox_msgs-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:month-val is deprecated.  Use ublox_msgs-msg:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:day-val is deprecated.  Use ublox_msgs-msg:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hour-val is deprecated.  Use ublox_msgs-msg:hour instead.")
  (hour m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:min-val is deprecated.  Use ublox_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sec-val is deprecated.  Use ublox_msgs-msg:sec instead.")
  (sec m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:valid-val is deprecated.  Use ublox_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'nano-val :lambda-list '(m))
(cl:defmethod nano-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:nano-val is deprecated.  Use ublox_msgs-msg:nano instead.")
  (nano m))

(cl:ensure-generic-function 'gpsFix-val :lambda-list '(m))
(cl:defmethod gpsFix-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gpsFix-val is deprecated.  Use ublox_msgs-msg:gpsFix instead.")
  (gpsFix m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:lon-val is deprecated.  Use ublox_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:lat-val is deprecated.  Use ublox_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:height-val is deprecated.  Use ublox_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'hMSL-val :lambda-list '(m))
(cl:defmethod hMSL-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hMSL-val is deprecated.  Use ublox_msgs-msg:hMSL instead.")
  (hMSL m))

(cl:ensure-generic-function 'gSpeed-val :lambda-list '(m))
(cl:defmethod gSpeed-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gSpeed-val is deprecated.  Use ublox_msgs-msg:gSpeed instead.")
  (gSpeed m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:speed-val is deprecated.  Use ublox_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'headMot-val :lambda-list '(m))
(cl:defmethod headMot-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:headMot-val is deprecated.  Use ublox_msgs-msg:headMot instead.")
  (headMot m))

(cl:ensure-generic-function 'headVeh-val :lambda-list '(m))
(cl:defmethod headVeh-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:headVeh-val is deprecated.  Use ublox_msgs-msg:headVeh instead.")
  (headVeh m))

(cl:ensure-generic-function 'hAcc-val :lambda-list '(m))
(cl:defmethod hAcc-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hAcc-val is deprecated.  Use ublox_msgs-msg:hAcc instead.")
  (hAcc m))

(cl:ensure-generic-function 'vAcc-val :lambda-list '(m))
(cl:defmethod vAcc-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:vAcc-val is deprecated.  Use ublox_msgs-msg:vAcc instead.")
  (vAcc m))

(cl:ensure-generic-function 'sAcc-val :lambda-list '(m))
(cl:defmethod sAcc-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sAcc-val is deprecated.  Use ublox_msgs-msg:sAcc instead.")
  (sAcc m))

(cl:ensure-generic-function 'headAcc-val :lambda-list '(m))
(cl:defmethod headAcc-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:headAcc-val is deprecated.  Use ublox_msgs-msg:headAcc instead.")
  (headAcc m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <HnrPVT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HnrPVT>)))
    "Constants for message type '<HnrPVT>"
  '((:CLASS_ID . 40)
    (:MESSAGE_ID . 0)
    (:VALID_DATE . 1)
    (:VALID_TIME . 2)
    (:VALID_FULLY_RESOLVED . 4)
    (:VALID_MAG . 8)
    (:FIX_TYPE_NO_FIX . 0)
    (:FIX_TYPE_DEAD_RECKONING_ONLY . 1)
    (:FIX_TYPE_2D . 2)
    (:FIX_TYPE_3D . 3)
    (:FIX_TYPE_GPS_DEAD_RECKONING_COMBINED . 4)
    (:FIX_TYPE_TIME_ONLY . 5)
    (:FLAGS_GNSS_FIX_OK . 1)
    (:FLAGS_DIFF_SOLN . 2)
    (:FLAGS_WKN_SET . 4)
    (:FLAGS_TOW_SET . 8)
    (:FLAGS_HEAD_VEH_VALID . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HnrPVT)))
    "Constants for message type 'HnrPVT"
  '((:CLASS_ID . 40)
    (:MESSAGE_ID . 0)
    (:VALID_DATE . 1)
    (:VALID_TIME . 2)
    (:VALID_FULLY_RESOLVED . 4)
    (:VALID_MAG . 8)
    (:FIX_TYPE_NO_FIX . 0)
    (:FIX_TYPE_DEAD_RECKONING_ONLY . 1)
    (:FIX_TYPE_2D . 2)
    (:FIX_TYPE_3D . 3)
    (:FIX_TYPE_GPS_DEAD_RECKONING_COMBINED . 4)
    (:FIX_TYPE_TIME_ONLY . 5)
    (:FLAGS_GNSS_FIX_OK . 1)
    (:FLAGS_DIFF_SOLN . 2)
    (:FLAGS_WKN_SET . 4)
    (:FLAGS_TOW_SET . 8)
    (:FLAGS_HEAD_VEH_VALID . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HnrPVT>) ostream)
  "Serializes a message object of type '<HnrPVT>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'nano)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpsFix)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:let* ((signed (cl:slot-value msg 'lon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hMSL)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'headMot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'headVeh)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'headAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'headAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'headAcc)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HnrPVT>) istream)
  "Deserializes a message object of type '<HnrPVT>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nano) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpsFix)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hMSL) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gSpeed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'headMot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'headVeh) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'headAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'headAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'headAcc)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HnrPVT>)))
  "Returns string type for a message object of type '<HnrPVT>"
  "ublox_msgs/HnrPVT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HnrPVT)))
  "Returns string type for a message object of type 'HnrPVT"
  "ublox_msgs/HnrPVT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HnrPVT>)))
  "Returns md5sum for a message object of type '<HnrPVT>"
  "1803c15f4ff593453ea993864baf0f33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HnrPVT)))
  "Returns md5sum for a message object of type 'HnrPVT"
  "1803c15f4ff593453ea993864baf0f33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HnrPVT>)))
  "Returns full string definition for message of type '<HnrPVT>"
  (cl:format cl:nil "# HNR-PVT (0x28 0x00)~%# High Rate Output of PVT Solution~%#~%# Note that during a leap second there may be more (or less) than 60 seconds in~%# a minute; see the description of leap seconds for details.~%#~%# This message provides the position, velocity and time solution with high ~%# output rate.~%#~%# Supported on ADR and UDR products.~%#~%uint8 CLASS_ID = 40~%uint8 MESSAGE_ID = 0~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%uint16 year             # Year (UTC)~%uint8 month             # Month, range 1..12 (UTC)~%uint8 day               # Day of month, range 1..31 (UTC)~%uint8 hour              # Hour of day, range 0..23 (UTC)~%uint8 min               # Minute of hour, range 0..59 (UTC)~%uint8 sec               # Seconds of minute, range 0..60 (UTC)~%~%uint8 valid             # Validity flags~%uint8 VALID_DATE = 1            # Valid UTC Date~%uint8 VALID_TIME = 2            # Valid ~%uint8 VALID_FULLY_RESOLVED = 4  # UTC time of day has been fully resolved ~%                                # (no seconds uncertainty)~%uint8 VALID_MAG = 8             # Valid Magnetic Declination~%~%int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)~%~%uint8 gpsFix            # GPS fix Type, range 0..5~%uint8 FIX_TYPE_NO_FIX = 0~%uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1~%uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, ~%                                                # constant altitude assumed~%uint8 FIX_TYPE_3D = 3~%uint8 FIX_TYPE_GPS_DEAD_RECKONING_COMBINED = 4  # GPS + Dead reckoning~%uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix ~%~%uint8 flags             # Fix Status Flags~%uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks~%uint8 FLAGS_DIFF_SOLN = 2            # DGPS used~%uint8 FLAGS_WKN_SET = 4              # Valid GPS week number~%uint8 FLAGS_TOW_SET = 8              # Valid GPS time of week (iTOW & fTOW)~%uint8 FLAGS_HEAD_VEH_VALID = 32      # heading of vehicle is valid~%~%uint8[2] reserved0      # Reserved~%~%int32 lon               # Longitude [deg / 1e-7]~%int32 lat               # Latitude [deg / 1e-7]~%int32 height            # Height above Ellipsoid [mm]~%int32 hMSL              # Height above mean sea level [mm]~%~%int32 gSpeed            # Ground Speed (2-D) [mm/s]~%int32 speed             # Speed (3-D) [mm/s]~%~%int32 headMot           # Heading of motion (2-D) [deg / 1e-5]~%int32 headVeh           # Heading of vehicle (2-D) [deg / 1e-5]~%~%uint32 hAcc             # Horizontal Accuracy Estimate [mm]~%uint32 vAcc             # Vertical Accuracy Estimate [mm]~%uint32 sAcc             # Speed Accuracy Estimate [mm/s]~%uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) ~%                        # [deg / 1e-5]~%~%uint8[4] reserved1      # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HnrPVT)))
  "Returns full string definition for message of type 'HnrPVT"
  (cl:format cl:nil "# HNR-PVT (0x28 0x00)~%# High Rate Output of PVT Solution~%#~%# Note that during a leap second there may be more (or less) than 60 seconds in~%# a minute; see the description of leap seconds for details.~%#~%# This message provides the position, velocity and time solution with high ~%# output rate.~%#~%# Supported on ADR and UDR products.~%#~%uint8 CLASS_ID = 40~%uint8 MESSAGE_ID = 0~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%uint16 year             # Year (UTC)~%uint8 month             # Month, range 1..12 (UTC)~%uint8 day               # Day of month, range 1..31 (UTC)~%uint8 hour              # Hour of day, range 0..23 (UTC)~%uint8 min               # Minute of hour, range 0..59 (UTC)~%uint8 sec               # Seconds of minute, range 0..60 (UTC)~%~%uint8 valid             # Validity flags~%uint8 VALID_DATE = 1            # Valid UTC Date~%uint8 VALID_TIME = 2            # Valid ~%uint8 VALID_FULLY_RESOLVED = 4  # UTC time of day has been fully resolved ~%                                # (no seconds uncertainty)~%uint8 VALID_MAG = 8             # Valid Magnetic Declination~%~%int32 nano              # fraction of a second [ns], range -1e9 .. 1e9 (UTC)~%~%uint8 gpsFix            # GPS fix Type, range 0..5~%uint8 FIX_TYPE_NO_FIX = 0~%uint8 FIX_TYPE_DEAD_RECKONING_ONLY = 1~%uint8 FIX_TYPE_2D = 2                           # Signal from only 3 SVs, ~%                                                # constant altitude assumed~%uint8 FIX_TYPE_3D = 3~%uint8 FIX_TYPE_GPS_DEAD_RECKONING_COMBINED = 4  # GPS + Dead reckoning~%uint8 FIX_TYPE_TIME_ONLY = 5                    # Time only fix ~%~%uint8 flags             # Fix Status Flags~%uint8 FLAGS_GNSS_FIX_OK = 1          # i.e. within DOP & accuracy masks~%uint8 FLAGS_DIFF_SOLN = 2            # DGPS used~%uint8 FLAGS_WKN_SET = 4              # Valid GPS week number~%uint8 FLAGS_TOW_SET = 8              # Valid GPS time of week (iTOW & fTOW)~%uint8 FLAGS_HEAD_VEH_VALID = 32      # heading of vehicle is valid~%~%uint8[2] reserved0      # Reserved~%~%int32 lon               # Longitude [deg / 1e-7]~%int32 lat               # Latitude [deg / 1e-7]~%int32 height            # Height above Ellipsoid [mm]~%int32 hMSL              # Height above mean sea level [mm]~%~%int32 gSpeed            # Ground Speed (2-D) [mm/s]~%int32 speed             # Speed (3-D) [mm/s]~%~%int32 headMot           # Heading of motion (2-D) [deg / 1e-5]~%int32 headVeh           # Heading of vehicle (2-D) [deg / 1e-5]~%~%uint32 hAcc             # Horizontal Accuracy Estimate [mm]~%uint32 vAcc             # Vertical Accuracy Estimate [mm]~%uint32 sAcc             # Speed Accuracy Estimate [mm/s]~%uint32 headAcc          # Heading Accuracy Estimate (both motion & vehicle) ~%                        # [deg / 1e-5]~%~%uint8[4] reserved1      # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HnrPVT>))
  (cl:+ 0
     4
     2
     1
     1
     1
     1
     1
     1
     4
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HnrPVT>))
  "Converts a ROS message object to a list"
  (cl:list 'HnrPVT
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':min (min msg))
    (cl:cons ':sec (sec msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':nano (nano msg))
    (cl:cons ':gpsFix (gpsFix msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':height (height msg))
    (cl:cons ':hMSL (hMSL msg))
    (cl:cons ':gSpeed (gSpeed msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':headMot (headMot msg))
    (cl:cons ':headVeh (headVeh msg))
    (cl:cons ':hAcc (hAcc msg))
    (cl:cons ':vAcc (vAcc msg))
    (cl:cons ':sAcc (sAcc msg))
    (cl:cons ':headAcc (headAcc msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
