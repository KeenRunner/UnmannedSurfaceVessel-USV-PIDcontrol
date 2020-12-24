; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude NavCLOCK.msg.html

(cl:defclass <NavCLOCK> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (clkB
    :reader clkB
    :initarg :clkB
    :type cl:integer
    :initform 0)
   (clkD
    :reader clkD
    :initarg :clkD
    :type cl:integer
    :initform 0)
   (tAcc
    :reader tAcc
    :initarg :tAcc
    :type cl:integer
    :initform 0)
   (fAcc
    :reader fAcc
    :initarg :fAcc
    :type cl:integer
    :initform 0))
)

(cl:defclass NavCLOCK (<NavCLOCK>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavCLOCK>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavCLOCK)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<NavCLOCK> is deprecated: use ublox_msgs-msg:NavCLOCK instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <NavCLOCK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'clkB-val :lambda-list '(m))
(cl:defmethod clkB-val ((m <NavCLOCK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:clkB-val is deprecated.  Use ublox_msgs-msg:clkB instead.")
  (clkB m))

(cl:ensure-generic-function 'clkD-val :lambda-list '(m))
(cl:defmethod clkD-val ((m <NavCLOCK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:clkD-val is deprecated.  Use ublox_msgs-msg:clkD instead.")
  (clkD m))

(cl:ensure-generic-function 'tAcc-val :lambda-list '(m))
(cl:defmethod tAcc-val ((m <NavCLOCK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:tAcc-val is deprecated.  Use ublox_msgs-msg:tAcc instead.")
  (tAcc m))

(cl:ensure-generic-function 'fAcc-val :lambda-list '(m))
(cl:defmethod fAcc-val ((m <NavCLOCK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:fAcc-val is deprecated.  Use ublox_msgs-msg:fAcc instead.")
  (fAcc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavCLOCK>)))
    "Constants for message type '<NavCLOCK>"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 34))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavCLOCK)))
    "Constants for message type 'NavCLOCK"
  '((:CLASS_ID . 1)
    (:MESSAGE_ID . 34))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavCLOCK>) ostream)
  "Serializes a message object of type '<NavCLOCK>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'clkB)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'clkD)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fAcc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fAcc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavCLOCK>) istream)
  "Deserializes a message object of type '<NavCLOCK>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'clkB) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'clkD) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fAcc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fAcc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavCLOCK>)))
  "Returns string type for a message object of type '<NavCLOCK>"
  "ublox_msgs/NavCLOCK")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavCLOCK)))
  "Returns string type for a message object of type 'NavCLOCK"
  "ublox_msgs/NavCLOCK")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavCLOCK>)))
  "Returns md5sum for a message object of type '<NavCLOCK>"
  "a9acfdf2e7ac2bf086926ae4e6a182a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavCLOCK)))
  "Returns md5sum for a message object of type 'NavCLOCK"
  "a9acfdf2e7ac2bf086926ae4e6a182a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavCLOCK>)))
  "Returns full string definition for message of type '<NavCLOCK>"
  (cl:format cl:nil "# NAV-CLOCK (0x01 0x22)~%# Clock Solution~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 34~%~%uint32 iTOW             # GPS Millisecond Time of week [ms]~%~%int32 clkB              # Clock bias in nanoseconds [ns]~%int32 clkD              # Clock drift in nanoseconds per second [ns/s]~%uint32 tAcc             # Time Accuracy Estimate [ns]~%uint32 fAcc             # Frequency Accuracy Estimate [ps/s]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavCLOCK)))
  "Returns full string definition for message of type 'NavCLOCK"
  (cl:format cl:nil "# NAV-CLOCK (0x01 0x22)~%# Clock Solution~%#~%~%uint8 CLASS_ID = 1~%uint8 MESSAGE_ID = 34~%~%uint32 iTOW             # GPS Millisecond Time of week [ms]~%~%int32 clkB              # Clock bias in nanoseconds [ns]~%int32 clkD              # Clock drift in nanoseconds per second [ns/s]~%uint32 tAcc             # Time Accuracy Estimate [ns]~%uint32 fAcc             # Frequency Accuracy Estimate [ps/s]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavCLOCK>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavCLOCK>))
  "Converts a ROS message object to a list"
  (cl:list 'NavCLOCK
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':clkB (clkB msg))
    (cl:cons ':clkD (clkD msg))
    (cl:cons ':tAcc (tAcc msg))
    (cl:cons ':fAcc (fAcc msg))
))
