; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude MgaGAL.msg.html

(cl:defclass <MgaGAL> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (svid
    :reader svid
    :initarg :svid
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type cl:fixnum
    :initform 0)
   (iodNav
    :reader iodNav
    :initarg :iodNav
    :type cl:fixnum
    :initform 0)
   (deltaN
    :reader deltaN
    :initarg :deltaN
    :type cl:fixnum
    :initform 0)
   (m0
    :reader m0
    :initarg :m0
    :type cl:integer
    :initform 0)
   (e
    :reader e
    :initarg :e
    :type cl:integer
    :initform 0)
   (sqrtA
    :reader sqrtA
    :initarg :sqrtA
    :type cl:integer
    :initform 0)
   (omega0
    :reader omega0
    :initarg :omega0
    :type cl:integer
    :initform 0)
   (i0
    :reader i0
    :initarg :i0
    :type cl:integer
    :initform 0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:integer
    :initform 0)
   (omegaDot
    :reader omegaDot
    :initarg :omegaDot
    :type cl:integer
    :initform 0)
   (iDot
    :reader iDot
    :initarg :iDot
    :type cl:fixnum
    :initform 0)
   (cuc
    :reader cuc
    :initarg :cuc
    :type cl:fixnum
    :initform 0)
   (cus
    :reader cus
    :initarg :cus
    :type cl:fixnum
    :initform 0)
   (crc
    :reader crc
    :initarg :crc
    :type cl:fixnum
    :initform 0)
   (crs
    :reader crs
    :initarg :crs
    :type cl:fixnum
    :initform 0)
   (cic
    :reader cic
    :initarg :cic
    :type cl:fixnum
    :initform 0)
   (cis
    :reader cis
    :initarg :cis
    :type cl:fixnum
    :initform 0)
   (toe
    :reader toe
    :initarg :toe
    :type cl:fixnum
    :initform 0)
   (af0
    :reader af0
    :initarg :af0
    :type cl:integer
    :initform 0)
   (af1
    :reader af1
    :initarg :af1
    :type cl:integer
    :initform 0)
   (af2
    :reader af2
    :initarg :af2
    :type cl:fixnum
    :initform 0)
   (sisaindexE1E5b
    :reader sisaindexE1E5b
    :initarg :sisaindexE1E5b
    :type cl:fixnum
    :initform 0)
   (toc
    :reader toc
    :initarg :toc
    :type cl:fixnum
    :initform 0)
   (bgdE1E5b
    :reader bgdE1E5b
    :initarg :bgdE1E5b
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (healthE1B
    :reader healthE1B
    :initarg :healthE1B
    :type cl:fixnum
    :initform 0)
   (dataValidityE1B
    :reader dataValidityE1B
    :initarg :dataValidityE1B
    :type cl:fixnum
    :initform 0)
   (healthE5b
    :reader healthE5b
    :initarg :healthE5b
    :type cl:fixnum
    :initform 0)
   (dataValidityE5b
    :reader dataValidityE5b
    :initarg :dataValidityE5b
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MgaGAL (<MgaGAL>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MgaGAL>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MgaGAL)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<MgaGAL> is deprecated: use ublox_msgs-msg:MgaGAL instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:type-val is deprecated.  Use ublox_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'iodNav-val :lambda-list '(m))
(cl:defmethod iodNav-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iodNav-val is deprecated.  Use ublox_msgs-msg:iodNav instead.")
  (iodNav m))

(cl:ensure-generic-function 'deltaN-val :lambda-list '(m))
(cl:defmethod deltaN-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:deltaN-val is deprecated.  Use ublox_msgs-msg:deltaN instead.")
  (deltaN m))

(cl:ensure-generic-function 'm0-val :lambda-list '(m))
(cl:defmethod m0-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:m0-val is deprecated.  Use ublox_msgs-msg:m0 instead.")
  (m0 m))

(cl:ensure-generic-function 'e-val :lambda-list '(m))
(cl:defmethod e-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:e-val is deprecated.  Use ublox_msgs-msg:e instead.")
  (e m))

(cl:ensure-generic-function 'sqrtA-val :lambda-list '(m))
(cl:defmethod sqrtA-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sqrtA-val is deprecated.  Use ublox_msgs-msg:sqrtA instead.")
  (sqrtA m))

(cl:ensure-generic-function 'omega0-val :lambda-list '(m))
(cl:defmethod omega0-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:omega0-val is deprecated.  Use ublox_msgs-msg:omega0 instead.")
  (omega0 m))

(cl:ensure-generic-function 'i0-val :lambda-list '(m))
(cl:defmethod i0-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:i0-val is deprecated.  Use ublox_msgs-msg:i0 instead.")
  (i0 m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:omega-val is deprecated.  Use ublox_msgs-msg:omega instead.")
  (omega m))

(cl:ensure-generic-function 'omegaDot-val :lambda-list '(m))
(cl:defmethod omegaDot-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:omegaDot-val is deprecated.  Use ublox_msgs-msg:omegaDot instead.")
  (omegaDot m))

(cl:ensure-generic-function 'iDot-val :lambda-list '(m))
(cl:defmethod iDot-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iDot-val is deprecated.  Use ublox_msgs-msg:iDot instead.")
  (iDot m))

(cl:ensure-generic-function 'cuc-val :lambda-list '(m))
(cl:defmethod cuc-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cuc-val is deprecated.  Use ublox_msgs-msg:cuc instead.")
  (cuc m))

(cl:ensure-generic-function 'cus-val :lambda-list '(m))
(cl:defmethod cus-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cus-val is deprecated.  Use ublox_msgs-msg:cus instead.")
  (cus m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:crc-val is deprecated.  Use ublox_msgs-msg:crc instead.")
  (crc m))

(cl:ensure-generic-function 'crs-val :lambda-list '(m))
(cl:defmethod crs-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:crs-val is deprecated.  Use ublox_msgs-msg:crs instead.")
  (crs m))

(cl:ensure-generic-function 'cic-val :lambda-list '(m))
(cl:defmethod cic-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cic-val is deprecated.  Use ublox_msgs-msg:cic instead.")
  (cic m))

(cl:ensure-generic-function 'cis-val :lambda-list '(m))
(cl:defmethod cis-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cis-val is deprecated.  Use ublox_msgs-msg:cis instead.")
  (cis m))

(cl:ensure-generic-function 'toe-val :lambda-list '(m))
(cl:defmethod toe-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:toe-val is deprecated.  Use ublox_msgs-msg:toe instead.")
  (toe m))

(cl:ensure-generic-function 'af0-val :lambda-list '(m))
(cl:defmethod af0-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:af0-val is deprecated.  Use ublox_msgs-msg:af0 instead.")
  (af0 m))

(cl:ensure-generic-function 'af1-val :lambda-list '(m))
(cl:defmethod af1-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:af1-val is deprecated.  Use ublox_msgs-msg:af1 instead.")
  (af1 m))

(cl:ensure-generic-function 'af2-val :lambda-list '(m))
(cl:defmethod af2-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:af2-val is deprecated.  Use ublox_msgs-msg:af2 instead.")
  (af2 m))

(cl:ensure-generic-function 'sisaindexE1E5b-val :lambda-list '(m))
(cl:defmethod sisaindexE1E5b-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sisaindexE1E5b-val is deprecated.  Use ublox_msgs-msg:sisaindexE1E5b instead.")
  (sisaindexE1E5b m))

(cl:ensure-generic-function 'toc-val :lambda-list '(m))
(cl:defmethod toc-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:toc-val is deprecated.  Use ublox_msgs-msg:toc instead.")
  (toc m))

(cl:ensure-generic-function 'bgdE1E5b-val :lambda-list '(m))
(cl:defmethod bgdE1E5b-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:bgdE1E5b-val is deprecated.  Use ublox_msgs-msg:bgdE1E5b instead.")
  (bgdE1E5b m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'healthE1B-val :lambda-list '(m))
(cl:defmethod healthE1B-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:healthE1B-val is deprecated.  Use ublox_msgs-msg:healthE1B instead.")
  (healthE1B m))

(cl:ensure-generic-function 'dataValidityE1B-val :lambda-list '(m))
(cl:defmethod dataValidityE1B-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dataValidityE1B-val is deprecated.  Use ublox_msgs-msg:dataValidityE1B instead.")
  (dataValidityE1B m))

(cl:ensure-generic-function 'healthE5b-val :lambda-list '(m))
(cl:defmethod healthE5b-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:healthE5b-val is deprecated.  Use ublox_msgs-msg:healthE5b instead.")
  (healthE5b m))

(cl:ensure-generic-function 'dataValidityE5b-val :lambda-list '(m))
(cl:defmethod dataValidityE5b-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:dataValidityE5b-val is deprecated.  Use ublox_msgs-msg:dataValidityE5b instead.")
  (dataValidityE5b m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <MgaGAL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MgaGAL>)))
    "Constants for message type '<MgaGAL>"
  '((:CLASS_ID . 19)
    (:MESSAGE_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MgaGAL)))
    "Constants for message type 'MgaGAL"
  '((:CLASS_ID . 19)
    (:MESSAGE_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MgaGAL>) ostream)
  "Serializes a message object of type '<MgaGAL>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iodNav)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iodNav)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'deltaN)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'm0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sqrtA)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sqrtA)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sqrtA)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sqrtA)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'omega0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'i0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omegaDot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iDot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cuc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'crc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'crs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cic)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'toe)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'toe)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'af0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'af1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'af2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sisaindexE1E5b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'toc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'toc)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'bgdE1E5b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'healthE1B)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dataValidityE1B)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'healthE5b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dataValidityE5b)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MgaGAL>) istream)
  "Deserializes a message object of type '<MgaGAL>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iodNav)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iodNav)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deltaN) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sqrtA)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sqrtA)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sqrtA)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sqrtA)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'i0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omegaDot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iDot) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cuc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cus) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'crc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'crs) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cic) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'toe)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'toe)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'af0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'af1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'af2) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sisaindexE1E5b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'toc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'toc)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bgdE1E5b) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'healthE1B)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dataValidityE1B)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'healthE5b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dataValidityE5b)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved2) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'reserved2)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MgaGAL>)))
  "Returns string type for a message object of type '<MgaGAL>"
  "ublox_msgs/MgaGAL")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MgaGAL)))
  "Returns string type for a message object of type 'MgaGAL"
  "ublox_msgs/MgaGAL")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MgaGAL>)))
  "Returns md5sum for a message object of type '<MgaGAL>"
  "916efe401cfebd852654e34c3cd97512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MgaGAL)))
  "Returns md5sum for a message object of type 'MgaGAL"
  "916efe401cfebd852654e34c3cd97512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MgaGAL>)))
  "Returns full string definition for message of type '<MgaGAL>"
  (cl:format cl:nil "# MGA-GAL (0x13 0x02)~%# Galileo Ephemeris Assistance~%#~%# This message allows the delivery of Galileo ephemeris assistance to a ~%# receiver. See the description of AssistNow Online for details.~%# ~%~%uint8 CLASS_ID = 19~%uint8 MESSAGE_ID = 2~%~%uint8 type              # Message type (0x01 for this type)~%uint8 version           # Message version (0x00 for this version)~%uint8 svid              # Galileo Satellite identifier~%~%uint8 reserved0         # Reserved~%~%uint16 iodNav           # Ephemeris and clock correction issue of Data~%int16 deltaN            # Mean motion difference from computed value ~%                        # [semi-cir cles/s * 2^-43]~%int32 m0                # Mean anomaly at reference time [semi-cir cles 2^-31]~%uint32 e                # Eccentricity [2^-33]~%uint32 sqrtA            # Square root of the semi-major axis [m^0.5 * 2^-19]~%int32 omega0            # Longitude of ascending node of orbital plane at weekly~%                        # epoch [semi-cir cles 2^-31]~%int32 i0                # inclination angle at reference time ~%                        # [semi-cir cles 2^-31]~%int32 omega             # Argument of perigee [semi-cir cles 2^-31]~%int32 omegaDot          # Rate of change of right ascension ~%                        # [semi-cir cles/s 2^-43]~%int16 iDot              # Rate of change of inclination angle ~%                        # [semi-cir cles/s 2^-43]~%int16 cuc               # Amplitude of the cosine harmonic correction term to ~%                        # the argument of latitude [radians * 2^-29]~%int16 cus               # Amplitude of the sine harmonic correction term to ~%                        # the argument of latitude [radians * 2^-29]~%int16 crc               # Amplitude of the cosine harmonic correction term ~%                        # to the orbit radius [radians * 2^-5]~%int16 crs               # Amplitude of the sine harmonic correction term to the ~%                        # orbit radius [radians * 2^-5]~%int16 cic               # Amplitude of the cosine harmonic correction term to ~%                        # the angle of inclination [radians * 2^-29]~%int16 cis               # Amplitude of the sine harmonic correction term to the ~%                        # angle of inclination [radians * 2^-29]~%uint16 toe              # Ephemeris reference time [60 * s]~%int32 af0               # clock bias correction coefficient [s * 2^-34]~%int32 af1               # SV clock drift correction coefficient [s/s * 2^-46]~%int8 af2               # SV clock drift rate correction coefficient ~%                        # [s/s^2 * 2^-59]~%uint8 sisaindexE1E5b   # Signal-in-Space Accuracy index for dual frequency ~%                        # E1-E5b~%uint16 toc              # Clock correction data reference Time of Week [60 * s]~%int16 bgdE1E5b          # E1-E5b Broadcast Group Delay~%~%uint8[2] reserved1     # Reserved~%~%uint8 healthE1B        # E1-B Signal Health Status~%uint8 dataValidityE1B  # E1-B Data Validity Status~%uint8 healthE5b        # E5b Signal Health Status~%uint8 dataValidityE5b  # E5b Data Validity Status~%~%uint8[4] reserved2     # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MgaGAL)))
  "Returns full string definition for message of type 'MgaGAL"
  (cl:format cl:nil "# MGA-GAL (0x13 0x02)~%# Galileo Ephemeris Assistance~%#~%# This message allows the delivery of Galileo ephemeris assistance to a ~%# receiver. See the description of AssistNow Online for details.~%# ~%~%uint8 CLASS_ID = 19~%uint8 MESSAGE_ID = 2~%~%uint8 type              # Message type (0x01 for this type)~%uint8 version           # Message version (0x00 for this version)~%uint8 svid              # Galileo Satellite identifier~%~%uint8 reserved0         # Reserved~%~%uint16 iodNav           # Ephemeris and clock correction issue of Data~%int16 deltaN            # Mean motion difference from computed value ~%                        # [semi-cir cles/s * 2^-43]~%int32 m0                # Mean anomaly at reference time [semi-cir cles 2^-31]~%uint32 e                # Eccentricity [2^-33]~%uint32 sqrtA            # Square root of the semi-major axis [m^0.5 * 2^-19]~%int32 omega0            # Longitude of ascending node of orbital plane at weekly~%                        # epoch [semi-cir cles 2^-31]~%int32 i0                # inclination angle at reference time ~%                        # [semi-cir cles 2^-31]~%int32 omega             # Argument of perigee [semi-cir cles 2^-31]~%int32 omegaDot          # Rate of change of right ascension ~%                        # [semi-cir cles/s 2^-43]~%int16 iDot              # Rate of change of inclination angle ~%                        # [semi-cir cles/s 2^-43]~%int16 cuc               # Amplitude of the cosine harmonic correction term to ~%                        # the argument of latitude [radians * 2^-29]~%int16 cus               # Amplitude of the sine harmonic correction term to ~%                        # the argument of latitude [radians * 2^-29]~%int16 crc               # Amplitude of the cosine harmonic correction term ~%                        # to the orbit radius [radians * 2^-5]~%int16 crs               # Amplitude of the sine harmonic correction term to the ~%                        # orbit radius [radians * 2^-5]~%int16 cic               # Amplitude of the cosine harmonic correction term to ~%                        # the angle of inclination [radians * 2^-29]~%int16 cis               # Amplitude of the sine harmonic correction term to the ~%                        # angle of inclination [radians * 2^-29]~%uint16 toe              # Ephemeris reference time [60 * s]~%int32 af0               # clock bias correction coefficient [s * 2^-34]~%int32 af1               # SV clock drift correction coefficient [s/s * 2^-46]~%int8 af2               # SV clock drift rate correction coefficient ~%                        # [s/s^2 * 2^-59]~%uint8 sisaindexE1E5b   # Signal-in-Space Accuracy index for dual frequency ~%                        # E1-E5b~%uint16 toc              # Clock correction data reference Time of Week [60 * s]~%int16 bgdE1E5b          # E1-E5b Broadcast Group Delay~%~%uint8[2] reserved1     # Reserved~%~%uint8 healthE1B        # E1-B Signal Health Status~%uint8 dataValidityE1B  # E1-B Data Validity Status~%uint8 healthE5b        # E5b Signal Health Status~%uint8 dataValidityE5b  # E5b Data Validity Status~%~%uint8[4] reserved2     # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MgaGAL>))
  (cl:+ 0
     1
     1
     1
     1
     2
     2
     4
     4
     4
     4
     4
     4
     4
     2
     2
     2
     2
     2
     2
     2
     2
     4
     4
     1
     1
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MgaGAL>))
  "Converts a ROS message object to a list"
  (cl:list 'MgaGAL
    (cl:cons ':type (type msg))
    (cl:cons ':version (version msg))
    (cl:cons ':svid (svid msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':iodNav (iodNav msg))
    (cl:cons ':deltaN (deltaN msg))
    (cl:cons ':m0 (m0 msg))
    (cl:cons ':e (e msg))
    (cl:cons ':sqrtA (sqrtA msg))
    (cl:cons ':omega0 (omega0 msg))
    (cl:cons ':i0 (i0 msg))
    (cl:cons ':omega (omega msg))
    (cl:cons ':omegaDot (omegaDot msg))
    (cl:cons ':iDot (iDot msg))
    (cl:cons ':cuc (cuc msg))
    (cl:cons ':cus (cus msg))
    (cl:cons ':crc (crc msg))
    (cl:cons ':crs (crs msg))
    (cl:cons ':cic (cic msg))
    (cl:cons ':cis (cis msg))
    (cl:cons ':toe (toe msg))
    (cl:cons ':af0 (af0 msg))
    (cl:cons ':af1 (af1 msg))
    (cl:cons ':af2 (af2 msg))
    (cl:cons ':sisaindexE1E5b (sisaindexE1E5b msg))
    (cl:cons ':toc (toc msg))
    (cl:cons ':bgdE1E5b (bgdE1E5b msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':healthE1B (healthE1B msg))
    (cl:cons ':dataValidityE1B (dataValidityE1B msg))
    (cl:cons ':healthE5b (healthE5b msg))
    (cl:cons ':dataValidityE5b (dataValidityE5b msg))
    (cl:cons ':reserved2 (reserved2 msg))
))
