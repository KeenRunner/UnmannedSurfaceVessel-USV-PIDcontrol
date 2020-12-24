; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude MonVER.msg.html

(cl:defclass <MonVER> (roslisp-msg-protocol:ros-message)
  ((swVersion
    :reader swVersion
    :initarg :swVersion
    :type (cl:vector cl:integer)
   :initform (cl:make-array 30 :element-type 'cl:integer :initial-element 0))
   (hwVersion
    :reader hwVersion
    :initarg :hwVersion
    :type (cl:vector cl:integer)
   :initform (cl:make-array 10 :element-type 'cl:integer :initial-element 0))
   (extension
    :reader extension
    :initarg :extension
    :type (cl:vector ublox_msgs-msg:MonVER_Extension)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:MonVER_Extension :initial-element (cl:make-instance 'ublox_msgs-msg:MonVER_Extension))))
)

(cl:defclass MonVER (<MonVER>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonVER>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonVER)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<MonVER> is deprecated: use ublox_msgs-msg:MonVER instead.")))

(cl:ensure-generic-function 'swVersion-val :lambda-list '(m))
(cl:defmethod swVersion-val ((m <MonVER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:swVersion-val is deprecated.  Use ublox_msgs-msg:swVersion instead.")
  (swVersion m))

(cl:ensure-generic-function 'hwVersion-val :lambda-list '(m))
(cl:defmethod hwVersion-val ((m <MonVER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:hwVersion-val is deprecated.  Use ublox_msgs-msg:hwVersion instead.")
  (hwVersion m))

(cl:ensure-generic-function 'extension-val :lambda-list '(m))
(cl:defmethod extension-val ((m <MonVER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:extension-val is deprecated.  Use ublox_msgs-msg:extension instead.")
  (extension m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MonVER>)))
    "Constants for message type '<MonVER>"
  '((:CLASS_ID . 10)
    (:MESSAGE_ID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MonVER)))
    "Constants for message type 'MonVER"
  '((:CLASS_ID . 10)
    (:MESSAGE_ID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonVER>) ostream)
  "Serializes a message object of type '<MonVER>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'swVersion))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'hwVersion))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'extension))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'extension))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonVER>) istream)
  "Deserializes a message object of type '<MonVER>"
  (cl:setf (cl:slot-value msg 'swVersion) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'swVersion)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'hwVersion) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'hwVersion)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'extension) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'extension)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:MonVER_Extension))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonVER>)))
  "Returns string type for a message object of type '<MonVER>"
  "ublox_msgs/MonVER")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonVER)))
  "Returns string type for a message object of type 'MonVER"
  "ublox_msgs/MonVER")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonVER>)))
  "Returns md5sum for a message object of type '<MonVER>"
  "83c8a03d7744e76cc085d953e1a5a293")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonVER)))
  "Returns md5sum for a message object of type 'MonVER"
  "83c8a03d7744e76cc085d953e1a5a293")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonVER>)))
  "Returns full string definition for message of type '<MonVER>"
  (cl:format cl:nil "# MON-VER (0x0A 0x04)~%#~%# Receiver/Software Version~%# Returned when the version is polled.~%~%uint8 CLASS_ID = 10~%uint8 MESSAGE_ID = 4~%~%char[30] swVersion    # Zero-terminated software version string.~%char[10] hwVersion    # Zero-terminated hardware version string.~%~%# Start of repeated block (N times)~%MonVER_Extension[] extension~%# End of repeated block~%~%================================================================================~%MSG: ublox_msgs/MonVER_Extension~%# see MonVER message~%#~%~%char[30] field~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonVER)))
  "Returns full string definition for message of type 'MonVER"
  (cl:format cl:nil "# MON-VER (0x0A 0x04)~%#~%# Receiver/Software Version~%# Returned when the version is polled.~%~%uint8 CLASS_ID = 10~%uint8 MESSAGE_ID = 4~%~%char[30] swVersion    # Zero-terminated software version string.~%char[10] hwVersion    # Zero-terminated hardware version string.~%~%# Start of repeated block (N times)~%MonVER_Extension[] extension~%# End of repeated block~%~%================================================================================~%MSG: ublox_msgs/MonVER_Extension~%# see MonVER message~%#~%~%char[30] field~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonVER>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'swVersion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'hwVersion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'extension) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonVER>))
  "Converts a ROS message object to a list"
  (cl:list 'MonVER
    (cl:cons ':swVersion (swVersion msg))
    (cl:cons ':hwVersion (hwVersion msg))
    (cl:cons ':extension (extension msg))
))
