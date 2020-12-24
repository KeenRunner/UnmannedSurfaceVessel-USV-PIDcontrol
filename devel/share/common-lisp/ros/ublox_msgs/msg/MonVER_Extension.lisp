; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude MonVER_Extension.msg.html

(cl:defclass <MonVER_Extension> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type (cl:vector cl:integer)
   :initform (cl:make-array 30 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MonVER_Extension (<MonVER_Extension>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonVER_Extension>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonVER_Extension)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<MonVER_Extension> is deprecated: use ublox_msgs-msg:MonVER_Extension instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <MonVER_Extension>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:field-val is deprecated.  Use ublox_msgs-msg:field instead.")
  (field m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonVER_Extension>) ostream)
  "Serializes a message object of type '<MonVER_Extension>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'field))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonVER_Extension>) istream)
  "Deserializes a message object of type '<MonVER_Extension>"
  (cl:setf (cl:slot-value msg 'field) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'field)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonVER_Extension>)))
  "Returns string type for a message object of type '<MonVER_Extension>"
  "ublox_msgs/MonVER_Extension")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonVER_Extension)))
  "Returns string type for a message object of type 'MonVER_Extension"
  "ublox_msgs/MonVER_Extension")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonVER_Extension>)))
  "Returns md5sum for a message object of type '<MonVER_Extension>"
  "ef92c9d93e6bd2c2701384b0595ac2b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonVER_Extension)))
  "Returns md5sum for a message object of type 'MonVER_Extension"
  "ef92c9d93e6bd2c2701384b0595ac2b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonVER_Extension>)))
  "Returns full string definition for message of type '<MonVER_Extension>"
  (cl:format cl:nil "# see MonVER message~%#~%~%char[30] field~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonVER_Extension)))
  "Returns full string definition for message of type 'MonVER_Extension"
  (cl:format cl:nil "# see MonVER message~%#~%~%char[30] field~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonVER_Extension>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'field) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonVER_Extension>))
  "Converts a ROS message object to a list"
  (cl:list 'MonVER_Extension
    (cl:cons ':field (field msg))
))
