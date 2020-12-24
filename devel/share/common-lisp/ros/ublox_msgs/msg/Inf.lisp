; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude Inf.msg.html

(cl:defclass <Inf> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Inf (<Inf>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Inf>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Inf)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<Inf> is deprecated: use ublox_msgs-msg:Inf instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <Inf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:str-val is deprecated.  Use ublox_msgs-msg:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Inf>)))
    "Constants for message type '<Inf>"
  '((:CLASS_ID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Inf)))
    "Constants for message type 'Inf"
  '((:CLASS_ID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Inf>) ostream)
  "Serializes a message object of type '<Inf>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Inf>) istream)
  "Deserializes a message object of type '<Inf>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'str) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'str)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Inf>)))
  "Returns string type for a message object of type '<Inf>"
  "ublox_msgs/Inf")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Inf)))
  "Returns string type for a message object of type 'Inf"
  "ublox_msgs/Inf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Inf>)))
  "Returns md5sum for a message object of type '<Inf>"
  "d1c433234e5eccc57045e40aca48eb6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Inf)))
  "Returns md5sum for a message object of type 'Inf"
  "d1c433234e5eccc57045e40aca48eb6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Inf>)))
  "Returns full string definition for message of type '<Inf>"
  (cl:format cl:nil "# UBX-INF (0x04, 0x00...0x04)~%# ASCII output~%#~%# This message has a variable length payload, representing an ASCII string.~%#~%~%uint8 CLASS_ID = 4~%~%char[] str~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Inf)))
  "Returns full string definition for message of type 'Inf"
  (cl:format cl:nil "# UBX-INF (0x04, 0x00...0x04)~%# ASCII output~%#~%# This message has a variable length payload, representing an ASCII string.~%#~%~%uint8 CLASS_ID = 4~%~%char[] str~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Inf>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'str) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Inf>))
  "Converts a ROS message object to a list"
  (cl:list 'Inf
    (cl:cons ':str (str msg))
))
