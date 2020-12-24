; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSOL.msg.html

(cl:defclass <NavSOL> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (fTOW
    :reader fTOW
    :initarg :fTOW
    :type cl:integer
    :initform 0)
   (week
    :reader week
    :initarg :week
    :type cl:fixnum
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
   (ecefX
    :reader ecefX
    :initarg :ecefX
    :type cl:integer
    :initform 0)
   (ecefY
    :reader ecefY
    :initarg :ecefY
    :type cl:integer
    :initform 0)
   (ecefZ
    :reader ecefZ
    :initarg :ecefZ
    :type cl:integer
    :initform 0)
   (pAcc
    :reader pAcc
    :initarg :pAcc
    :type cl:integer
    :initform 0)
   (ecefVX
    :reader ecefVX
    :initarg :ecefVX
    :type cl:integer
    :initform 0)
   (ecefVY
    :reader ecefVY
    :initarg :ecefVY
    :type cl:integer
    :initform 0)
   (ecefVZ
    :reader ecefVZ
    :initarg :ecefVZ
    :type cl:integer
    :initform 0)
   (sAcc
    :reader sAcc
    :initarg :sAcc
    :type cl:integer
    :initform 0)
   (pDOP
    :reader pDOP
    :initarg :pDOP
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (numSV
    :reader numSV
    :initarg :numSV
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:integer
    :initform 0))
)

(cl:defclass NavSOL (<NavSOL>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSOL>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSOL)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSOL> is deprecated: use ublox_msgs-msg:NavSOL instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'fTOW-val :lambda-list '(m))
(cl:defmethod fTOW-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:fTOW-val is deprecated.  Use ublox_msgs-msg:fTOW instead.")
  (fTOW m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:week-val is deprecated.  Use ublox_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'gpsFix-val :lambda-list '(m))
(cl:defmethod gpsFix-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:gpsFix-val is deprecated.  Use ublox_msgs-msg:gpsFix instead.")
  (gpsFix m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'ecefX-val :lambda-list '(m))
(cl:defmethod ecefX-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefX-val is deprecated.  Use ublox_msgs-msg:ecefX instead.")
  (ecefX m))

(cl:ensure-generic-function 'ecefY-val :lambda-list '(m))
(cl:defmethod ecefY-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefY-val is deprecated.  Use ublox_msgs-msg:ecefY instead.")
  (ecefY m))

(cl:ensure-generic-function 'ecefZ-val :lambda-list '(m))
(cl:defmethod ecefZ-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefZ-val is deprecated.  Use ublox_msgs-msg:ecefZ instead.")
  (ecefZ m))

(cl:ensure-generic-function 'pAcc-val :lambda-list '(m))
(cl:defmethod pAcc-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pAcc-val is deprecated.  Use ublox_msgs-msg:pAcc instead.")
  (pAcc m))

(cl:ensure-generic-function 'ecefVX-val :lambda-list '(m))
(cl:defmethod ecefVX-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefVX-val is deprecated.  Use ublox_msgs-msg:ecefVX instead.")
  (ecefVX m))

(cl:ensure-generic-function 'ecefVY-val :lambda-list '(m))
(cl:defmethod ecefVY-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefVY-val is deprecated.  Use ublox_msgs-msg:ecefVY instead.")
  (ecefVY m))

(cl:ensure-generic-function 'ecefVZ-val :lambda-list '(m))
(cl:defmethod ecefVZ-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ecefVZ-val is deprecated.  Use ublox_msgs-msg:ecefVZ instead.")
  (ecefVZ m))

(cl:ensure-generic-function 'sAcc-val :lambda-list '(m))
(cl:defmethod sAcc-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sAcc-val is deprecated.  Use ublox_msgs-msg:sAcc instead.")
  (sAcc m))

(cl:ensure-generic-function 'pDOP-val :lambda-list '(m))
(cl:defmethod pDOP-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:pDOP-val is deprecated.  Use ublox_msgs-msg:pDOP instead.")
  (pDOP m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'numSV-val :lambda-list '(m))
(cl:defmethod numSV-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numSV-val is deprecated.  Use ublox_msgs-msg:numSV instead.")
  (numSV m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <NavSOL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSOL>)))
    "Constants for message type '<NavSOL>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 6)
    (:GPS_NO_FIX . 0)
    (:GPS_DEAD_RECKONING_ONLY . 1)
    (:GPS_2D_FIX . 2)
    (:GPS_3D_FIX . 3)
    (:GPS_GPS_DEAD_RECKONING_COMBINED . 4)
    (:GPS_TIME_ONLY_FIX . 5)
    (:FLAGS_GPS_FIX_OK . 1)
    (:FLAGS_DIFF_SOLN . 2)
    (:FLAGS_WKNSET . 4)
    (:FLAGS_TOWSET . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSOL)))
    "Constants for message type 'NavSOL"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 6)
    (:GPS_NO_FIX . 0)
    (:GPS_DEAD_RECKONING_ONLY . 1)
    (:GPS_2D_FIX . 2)
    (:GPS_3D_FIX . 3)
    (:GPS_GPS_DEAD_RECKONING_COMBINED . 4)
    (:GPS_TIME_ONLY_FIX . 5)
    (:FLAGS_GPS_FIX_OK . 1)
    (:FLAGS_DIFF_SOLN . 2)
    (:FLAGS_WKNSET . 4)
    (:FLAGS_TOWSET . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSOL>) ostream)
  "Serializes a message object of type '<NavSOL>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'fTOW)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpsFix)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ecefX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pAcc)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ecefVX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefVY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ecefVZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pDOP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSOL>) istream)
  "Deserializes a message object of type '<NavSOL>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fTOW) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'week) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpsFix)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefZ) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pAcc)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefVX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefVY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ecefVZ) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pDOP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSOL>)))
  "Returns string type for a message object of type '<NavSOL>"
  "ublox_msgs/NavSOL")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSOL)))
  "Returns string type for a message object of type 'NavSOL"
  "ublox_msgs/NavSOL")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSOL>)))
  "Returns md5sum for a message object of type '<NavSOL>"
  "fbabf6cbcea22aacacf0f8dbb86da71f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSOL)))
  "Returns md5sum for a message object of type 'NavSOL"
  "fbabf6cbcea22aacacf0f8dbb86da71f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSOL>)))
  "Returns full string definition for message of type '<NavSOL>"
  (cl:format cl:nil "# NAV-SOL (0x01 0x06)~%# Navigation Solution Information~%#~%# This message combines Position, velocity and time solution in ECEF, including ~%# accuracy figures~%# This message has only been retained for backwards compatibility; users are ~%# recommended to use the UBX-NAV-PVT message in preference.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 6~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%int32 fTOW              # Fractional Nanoseconds remainder of rounded~%                        # ms above, range -500000 .. 500000 [ns]~%int16 week              # GPS week (GPS time)~%~%uint8 gpsFix            # GPSfix Type, range 0..5~%uint8 GPS_NO_FIX = 0~%uint8 GPS_DEAD_RECKONING_ONLY = 1~%uint8 GPS_2D_FIX = 2~%uint8 GPS_3D_FIX = 3~%uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4~%uint8 GPS_TIME_ONLY_FIX = 5~%~%uint8 flags             # Fix Status Flags~%uint8 FLAGS_GPS_FIX_OK = 1      # Fix within limits i.e. within DOP & ACC Masks~%uint8 FLAGS_DIFF_SOLN = 2       # DGPS used~%uint8 FLAGS_WKNSET = 4          # Week Number valid~%uint8 FLAGS_TOWSET = 8          # Time of Week valid~%~%int32 ecefX             # ECEF X coordinate [cm]~%int32 ecefY             # ECEF Y coordinate [cm]~%int32 ecefZ             # ECEF Z coordinate [cm]~%uint32 pAcc             # 3D Position Accuracy Estimate [cm]~%int32 ecefVX            # ECEF X velocity [cm/s]~%int32 ecefVY            # ECEF Y velocity [cm/s]~%int32 ecefVZ            # ECEF Z velocity [cm/s]~%uint32 sAcc             # Speed Accuracy Estimate [cm/s]~%uint16 pDOP             # Position DOP [1 / 0.01]~%uint8 reserved1         # Reserved~%uint8 numSV             # Number of SVs used in Nav Solution~%uint32 reserved2        # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSOL)))
  "Returns full string definition for message of type 'NavSOL"
  (cl:format cl:nil "# NAV-SOL (0x01 0x06)~%# Navigation Solution Information~%#~%# This message combines Position, velocity and time solution in ECEF, including ~%# accuracy figures~%# This message has only been retained for backwards compatibility; users are ~%# recommended to use the UBX-NAV-PVT message in preference.~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 6~%~%uint32 iTOW             # GPS Millisecond time of week [ms]~%int32 fTOW              # Fractional Nanoseconds remainder of rounded~%                        # ms above, range -500000 .. 500000 [ns]~%int16 week              # GPS week (GPS time)~%~%uint8 gpsFix            # GPSfix Type, range 0..5~%uint8 GPS_NO_FIX = 0~%uint8 GPS_DEAD_RECKONING_ONLY = 1~%uint8 GPS_2D_FIX = 2~%uint8 GPS_3D_FIX = 3~%uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4~%uint8 GPS_TIME_ONLY_FIX = 5~%~%uint8 flags             # Fix Status Flags~%uint8 FLAGS_GPS_FIX_OK = 1      # Fix within limits i.e. within DOP & ACC Masks~%uint8 FLAGS_DIFF_SOLN = 2       # DGPS used~%uint8 FLAGS_WKNSET = 4          # Week Number valid~%uint8 FLAGS_TOWSET = 8          # Time of Week valid~%~%int32 ecefX             # ECEF X coordinate [cm]~%int32 ecefY             # ECEF Y coordinate [cm]~%int32 ecefZ             # ECEF Z coordinate [cm]~%uint32 pAcc             # 3D Position Accuracy Estimate [cm]~%int32 ecefVX            # ECEF X velocity [cm/s]~%int32 ecefVY            # ECEF Y velocity [cm/s]~%int32 ecefVZ            # ECEF Z velocity [cm/s]~%uint32 sAcc             # Speed Accuracy Estimate [cm/s]~%uint16 pDOP             # Position DOP [1 / 0.01]~%uint8 reserved1         # Reserved~%uint8 numSV             # Number of SVs used in Nav Solution~%uint32 reserved2        # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSOL>))
  (cl:+ 0
     4
     4
     2
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     2
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSOL>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSOL
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':fTOW (fTOW msg))
    (cl:cons ':week (week msg))
    (cl:cons ':gpsFix (gpsFix msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':ecefX (ecefX msg))
    (cl:cons ':ecefY (ecefY msg))
    (cl:cons ':ecefZ (ecefZ msg))
    (cl:cons ':pAcc (pAcc msg))
    (cl:cons ':ecefVX (ecefVX msg))
    (cl:cons ':ecefVY (ecefVY msg))
    (cl:cons ':ecefVZ (ecefVZ msg))
    (cl:cons ':sAcc (sAcc msg))
    (cl:cons ':pDOP (pDOP msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':numSV (numSV msg))
    (cl:cons ':reserved2 (reserved2 msg))
))
