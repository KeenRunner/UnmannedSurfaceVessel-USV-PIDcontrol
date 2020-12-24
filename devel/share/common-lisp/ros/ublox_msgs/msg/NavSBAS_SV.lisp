; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavSBAS_SV.msg.html

(cl:defclass <NavSBAS_SV> (roslisp-msg-protocol:ros-message)
  ((svid
    :reader svid
    :initarg :svid
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (udre
    :reader udre
    :initarg :udre
    :type cl:fixnum
    :initform 0)
   (svSys
    :reader svSys
    :initarg :svSys
    :type cl:fixnum
    :initform 0)
   (svService
    :reader svService
    :initarg :svService
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (prc
    :reader prc
    :initarg :prc
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:fixnum
    :initform 0)
   (ic
    :reader ic
    :initarg :ic
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavSBAS_SV (<NavSBAS_SV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSBAS_SV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSBAS_SV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavSBAS_SV> is deprecated: use ublox_msgs-msg:NavSBAS_SV instead.")))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svid-val is deprecated.  Use ublox_msgs-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'udre-val :lambda-list '(m))
(cl:defmethod udre-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:udre-val is deprecated.  Use ublox_msgs-msg:udre instead.")
  (udre m))

(cl:ensure-generic-function 'svSys-val :lambda-list '(m))
(cl:defmethod svSys-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svSys-val is deprecated.  Use ublox_msgs-msg:svSys instead.")
  (svSys m))

(cl:ensure-generic-function 'svService-val :lambda-list '(m))
(cl:defmethod svService-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:svService-val is deprecated.  Use ublox_msgs-msg:svService instead.")
  (svService m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'prc-val :lambda-list '(m))
(cl:defmethod prc-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:prc-val is deprecated.  Use ublox_msgs-msg:prc instead.")
  (prc m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'ic-val :lambda-list '(m))
(cl:defmethod ic-val ((m <NavSBAS_SV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:ic-val is deprecated.  Use ublox_msgs-msg:ic instead.")
  (ic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSBAS_SV>) ostream)
  "Serializes a message object of type '<NavSBAS_SV>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udre)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svSys)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svService)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'prc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ic)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSBAS_SV>) istream)
  "Deserializes a message object of type '<NavSBAS_SV>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udre)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svSys)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svService)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ic) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSBAS_SV>)))
  "Returns string type for a message object of type '<NavSBAS_SV>"
  "ublox_msgs/NavSBAS_SV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSBAS_SV)))
  "Returns string type for a message object of type 'NavSBAS_SV"
  "ublox_msgs/NavSBAS_SV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSBAS_SV>)))
  "Returns md5sum for a message object of type '<NavSBAS_SV>"
  "45259031fe19a4df2f5a4a667356a0bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSBAS_SV)))
  "Returns md5sum for a message object of type 'NavSBAS_SV"
  "45259031fe19a4df2f5a4a667356a0bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSBAS_SV>)))
  "Returns full string definition for message of type '<NavSBAS_SV>"
  (cl:format cl:nil "# see message NavSBAS~%#~%~%uint8 svid              # SV Id~%uint8 flags             # Flags for this SV~%uint8 udre              # Monitoring status~%uint8 svSys             # System (WAAS/EGNOS/...), same as SYS~%uint8 svService         # Services available, same as SERVICE~%uint8 reserved1         # Reserved~%int16 prc               # Pseudo Range correction in [cm]~%uint16 reserved2        # Reserved~%int16 ic                # Ionosphere correction in [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSBAS_SV)))
  "Returns full string definition for message of type 'NavSBAS_SV"
  (cl:format cl:nil "# see message NavSBAS~%#~%~%uint8 svid              # SV Id~%uint8 flags             # Flags for this SV~%uint8 udre              # Monitoring status~%uint8 svSys             # System (WAAS/EGNOS/...), same as SYS~%uint8 svService         # Services available, same as SERVICE~%uint8 reserved1         # Reserved~%int16 prc               # Pseudo Range correction in [cm]~%uint16 reserved2        # Reserved~%int16 ic                # Ionosphere correction in [cm]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSBAS_SV>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSBAS_SV>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSBAS_SV
    (cl:cons ':svid (svid msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':udre (udre msg))
    (cl:cons ':svSys (svSys msg))
    (cl:cons ':svService (svService msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':prc (prc msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':ic (ic msg))
))
