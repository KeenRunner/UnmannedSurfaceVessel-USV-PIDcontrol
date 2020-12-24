; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude AidHUI.msg.html

(cl:defclass <AidHUI> (roslisp-msg-protocol:ros-message)
  ((health
    :reader health
    :initarg :health
    :type cl:integer
    :initform 0)
   (utcA0
    :reader utcA0
    :initarg :utcA0
    :type cl:float
    :initform 0.0)
   (utcA1
    :reader utcA1
    :initarg :utcA1
    :type cl:float
    :initform 0.0)
   (utcTOW
    :reader utcTOW
    :initarg :utcTOW
    :type cl:integer
    :initform 0)
   (utcWNT
    :reader utcWNT
    :initarg :utcWNT
    :type cl:fixnum
    :initform 0)
   (utcLS
    :reader utcLS
    :initarg :utcLS
    :type cl:fixnum
    :initform 0)
   (utcWNF
    :reader utcWNF
    :initarg :utcWNF
    :type cl:fixnum
    :initform 0)
   (utcDN
    :reader utcDN
    :initarg :utcDN
    :type cl:fixnum
    :initform 0)
   (utcLSF
    :reader utcLSF
    :initarg :utcLSF
    :type cl:fixnum
    :initform 0)
   (utcSpare
    :reader utcSpare
    :initarg :utcSpare
    :type cl:fixnum
    :initform 0)
   (klobA0
    :reader klobA0
    :initarg :klobA0
    :type cl:float
    :initform 0.0)
   (klobA1
    :reader klobA1
    :initarg :klobA1
    :type cl:float
    :initform 0.0)
   (klobA2
    :reader klobA2
    :initarg :klobA2
    :type cl:float
    :initform 0.0)
   (klobA3
    :reader klobA3
    :initarg :klobA3
    :type cl:float
    :initform 0.0)
   (klobB0
    :reader klobB0
    :initarg :klobB0
    :type cl:float
    :initform 0.0)
   (klobB1
    :reader klobB1
    :initarg :klobB1
    :type cl:float
    :initform 0.0)
   (klobB2
    :reader klobB2
    :initarg :klobB2
    :type cl:float
    :initform 0.0)
   (klobB3
    :reader klobB3
    :initarg :klobB3
    :type cl:float
    :initform 0.0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:integer
    :initform 0))
)

(cl:defclass AidHUI (<AidHUI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AidHUI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AidHUI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<AidHUI> is deprecated: use ublox_msgs-msg:AidHUI instead.")))

(cl:ensure-generic-function 'health-val :lambda-list '(m))
(cl:defmethod health-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:health-val is deprecated.  Use ublox_msgs-msg:health instead.")
  (health m))

(cl:ensure-generic-function 'utcA0-val :lambda-list '(m))
(cl:defmethod utcA0-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcA0-val is deprecated.  Use ublox_msgs-msg:utcA0 instead.")
  (utcA0 m))

(cl:ensure-generic-function 'utcA1-val :lambda-list '(m))
(cl:defmethod utcA1-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcA1-val is deprecated.  Use ublox_msgs-msg:utcA1 instead.")
  (utcA1 m))

(cl:ensure-generic-function 'utcTOW-val :lambda-list '(m))
(cl:defmethod utcTOW-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcTOW-val is deprecated.  Use ublox_msgs-msg:utcTOW instead.")
  (utcTOW m))

(cl:ensure-generic-function 'utcWNT-val :lambda-list '(m))
(cl:defmethod utcWNT-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcWNT-val is deprecated.  Use ublox_msgs-msg:utcWNT instead.")
  (utcWNT m))

(cl:ensure-generic-function 'utcLS-val :lambda-list '(m))
(cl:defmethod utcLS-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcLS-val is deprecated.  Use ublox_msgs-msg:utcLS instead.")
  (utcLS m))

(cl:ensure-generic-function 'utcWNF-val :lambda-list '(m))
(cl:defmethod utcWNF-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcWNF-val is deprecated.  Use ublox_msgs-msg:utcWNF instead.")
  (utcWNF m))

(cl:ensure-generic-function 'utcDN-val :lambda-list '(m))
(cl:defmethod utcDN-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcDN-val is deprecated.  Use ublox_msgs-msg:utcDN instead.")
  (utcDN m))

(cl:ensure-generic-function 'utcLSF-val :lambda-list '(m))
(cl:defmethod utcLSF-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcLSF-val is deprecated.  Use ublox_msgs-msg:utcLSF instead.")
  (utcLSF m))

(cl:ensure-generic-function 'utcSpare-val :lambda-list '(m))
(cl:defmethod utcSpare-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:utcSpare-val is deprecated.  Use ublox_msgs-msg:utcSpare instead.")
  (utcSpare m))

(cl:ensure-generic-function 'klobA0-val :lambda-list '(m))
(cl:defmethod klobA0-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobA0-val is deprecated.  Use ublox_msgs-msg:klobA0 instead.")
  (klobA0 m))

(cl:ensure-generic-function 'klobA1-val :lambda-list '(m))
(cl:defmethod klobA1-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobA1-val is deprecated.  Use ublox_msgs-msg:klobA1 instead.")
  (klobA1 m))

(cl:ensure-generic-function 'klobA2-val :lambda-list '(m))
(cl:defmethod klobA2-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobA2-val is deprecated.  Use ublox_msgs-msg:klobA2 instead.")
  (klobA2 m))

(cl:ensure-generic-function 'klobA3-val :lambda-list '(m))
(cl:defmethod klobA3-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobA3-val is deprecated.  Use ublox_msgs-msg:klobA3 instead.")
  (klobA3 m))

(cl:ensure-generic-function 'klobB0-val :lambda-list '(m))
(cl:defmethod klobB0-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobB0-val is deprecated.  Use ublox_msgs-msg:klobB0 instead.")
  (klobB0 m))

(cl:ensure-generic-function 'klobB1-val :lambda-list '(m))
(cl:defmethod klobB1-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobB1-val is deprecated.  Use ublox_msgs-msg:klobB1 instead.")
  (klobB1 m))

(cl:ensure-generic-function 'klobB2-val :lambda-list '(m))
(cl:defmethod klobB2-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobB2-val is deprecated.  Use ublox_msgs-msg:klobB2 instead.")
  (klobB2 m))

(cl:ensure-generic-function 'klobB3-val :lambda-list '(m))
(cl:defmethod klobB3-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:klobB3-val is deprecated.  Use ublox_msgs-msg:klobB3 instead.")
  (klobB3 m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <AidHUI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AidHUI>)))
    "Constants for message type '<AidHUI>"
  '((:CLASS_ID . 11)
    (:MESSAGE_ID . 2)
    (:FLAGS_HEALTH . 1)
    (:FLAGS_UTC . 2)
    (:FLAGS_KLOB . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AidHUI)))
    "Constants for message type 'AidHUI"
  '((:CLASS_ID . 11)
    (:MESSAGE_ID . 2)
    (:FLAGS_HEALTH . 1)
    (:FLAGS_UTC . 2)
    (:FLAGS_KLOB . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AidHUI>) ostream)
  "Serializes a message object of type '<AidHUI>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'health)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utcA0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utcA1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'utcTOW)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utcWNT)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utcLS)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utcWNF)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utcDN)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utcLSF)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utcSpare)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobA0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobA1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobA2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobA3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobB0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobB1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobB2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'klobB3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AidHUI>) istream)
  "Deserializes a message object of type '<AidHUI>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utcA0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utcA1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utcTOW) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utcWNT) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utcLS) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utcWNF) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utcDN) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utcLSF) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utcSpare) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobA0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobA1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobA2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobA3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobB0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobB1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobB2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'klobB3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AidHUI>)))
  "Returns string type for a message object of type '<AidHUI>"
  "ublox_msgs/AidHUI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AidHUI)))
  "Returns string type for a message object of type 'AidHUI"
  "ublox_msgs/AidHUI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AidHUI>)))
  "Returns md5sum for a message object of type '<AidHUI>"
  "60cd4ce940333cb9b38edd447085ce5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AidHUI)))
  "Returns md5sum for a message object of type 'AidHUI"
  "60cd4ce940333cb9b38edd447085ce5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AidHUI>)))
  "Returns full string definition for message of type '<AidHUI>"
  (cl:format cl:nil "# AID-HUI (0x0B 0x02)~%# GPS Health, UTC and ionosphere parameters~%#~%# All UBX-AID messages are deprecated; use UBX-MGA messages instead.~%# This message contains a health bit mask, UTC time and Klobuchar parameters. For more~%# information on these parameters, please see the ICD-GPS-200 documentation.~%~%uint8 CLASS_ID = 11~%uint8 MESSAGE_ID = 2~%~%uint32  health          # Bitmask, every bit represents a GPS SV (1-32). ~%                        # If the bit is set the SV is healthy.~%float64 utcA0           # UTC - parameter A0~%float64 utcA1           # UTC - parameter A1~%int32   utcTOW          # UTC - reference time of week~%int16   utcWNT          # UTC - reference week number~%int16   utcLS           # UTC - time difference due to leap seconds before event~%int16   utcWNF          # UTC - week number when next leap second event occurs~%int16   utcDN           # UTC - day of week when next leap second event occurs~%int16   utcLSF          # UTC - time difference due to leap seconds after event~%int16   utcSpare        # UTC - Spare to ensure structure is a multiple of 4 ~%                        # bytes~%float32 klobA0          # Klobuchar - alpha 0 [s]~%float32 klobA1          # Klobuchar - alpha 1 [s/semicircle]~%float32 klobA2          # Klobuchar - alpha 2 [s/semicircle^2]~%float32 klobA3          # Klobuchar - alpha 3 [s/semicircle^3]~%float32 klobB0          # Klobuchar - beta 0  [s]~%float32 klobB1          # Klobuchar - beta 1  [s/semicircle]~%float32 klobB2          # Klobuchar - beta 2  [s/semicircle^2]~%float32 klobB3          # Klobuchar - beta 3  [s/semicircle^3]~%uint32 flags            # flags~%uint32 FLAGS_HEALTH = 1     # Healthmask field in this message is valid~%uint32 FLAGS_UTC = 2        # UTC parameter fields in this message are valid~%uint32 FLAGS_KLOB = 4       # Klobuchar parameter fields in this message are ~%                            # valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AidHUI)))
  "Returns full string definition for message of type 'AidHUI"
  (cl:format cl:nil "# AID-HUI (0x0B 0x02)~%# GPS Health, UTC and ionosphere parameters~%#~%# All UBX-AID messages are deprecated; use UBX-MGA messages instead.~%# This message contains a health bit mask, UTC time and Klobuchar parameters. For more~%# information on these parameters, please see the ICD-GPS-200 documentation.~%~%uint8 CLASS_ID = 11~%uint8 MESSAGE_ID = 2~%~%uint32  health          # Bitmask, every bit represents a GPS SV (1-32). ~%                        # If the bit is set the SV is healthy.~%float64 utcA0           # UTC - parameter A0~%float64 utcA1           # UTC - parameter A1~%int32   utcTOW          # UTC - reference time of week~%int16   utcWNT          # UTC - reference week number~%int16   utcLS           # UTC - time difference due to leap seconds before event~%int16   utcWNF          # UTC - week number when next leap second event occurs~%int16   utcDN           # UTC - day of week when next leap second event occurs~%int16   utcLSF          # UTC - time difference due to leap seconds after event~%int16   utcSpare        # UTC - Spare to ensure structure is a multiple of 4 ~%                        # bytes~%float32 klobA0          # Klobuchar - alpha 0 [s]~%float32 klobA1          # Klobuchar - alpha 1 [s/semicircle]~%float32 klobA2          # Klobuchar - alpha 2 [s/semicircle^2]~%float32 klobA3          # Klobuchar - alpha 3 [s/semicircle^3]~%float32 klobB0          # Klobuchar - beta 0  [s]~%float32 klobB1          # Klobuchar - beta 1  [s/semicircle]~%float32 klobB2          # Klobuchar - beta 2  [s/semicircle^2]~%float32 klobB3          # Klobuchar - beta 3  [s/semicircle^3]~%uint32 flags            # flags~%uint32 FLAGS_HEALTH = 1     # Healthmask field in this message is valid~%uint32 FLAGS_UTC = 2        # UTC parameter fields in this message are valid~%uint32 FLAGS_KLOB = 4       # Klobuchar parameter fields in this message are ~%                            # valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AidHUI>))
  (cl:+ 0
     4
     8
     8
     4
     2
     2
     2
     2
     2
     2
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AidHUI>))
  "Converts a ROS message object to a list"
  (cl:list 'AidHUI
    (cl:cons ':health (health msg))
    (cl:cons ':utcA0 (utcA0 msg))
    (cl:cons ':utcA1 (utcA1 msg))
    (cl:cons ':utcTOW (utcTOW msg))
    (cl:cons ':utcWNT (utcWNT msg))
    (cl:cons ':utcLS (utcLS msg))
    (cl:cons ':utcWNF (utcWNF msg))
    (cl:cons ':utcDN (utcDN msg))
    (cl:cons ':utcLSF (utcLSF msg))
    (cl:cons ':utcSpare (utcSpare msg))
    (cl:cons ':klobA0 (klobA0 msg))
    (cl:cons ':klobA1 (klobA1 msg))
    (cl:cons ':klobA2 (klobA2 msg))
    (cl:cons ':klobA3 (klobA3 msg))
    (cl:cons ':klobB0 (klobB0 msg))
    (cl:cons ':klobB1 (klobB1 msg))
    (cl:cons ':klobB2 (klobB2 msg))
    (cl:cons ':klobB3 (klobB3 msg))
    (cl:cons ':flags (flags msg))
))
