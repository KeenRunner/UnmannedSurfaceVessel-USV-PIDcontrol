; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude EsfSTATUS_Sens.msg.html

(cl:defclass <EsfSTATUS_Sens> (roslisp-msg-protocol:ros-message)
  ((sensStatus1
    :reader sensStatus1
    :initarg :sensStatus1
    :type cl:fixnum
    :initform 0)
   (sensStatus2
    :reader sensStatus2
    :initarg :sensStatus2
    :type cl:fixnum
    :initform 0)
   (freq
    :reader freq
    :initarg :freq
    :type cl:fixnum
    :initform 0)
   (faults
    :reader faults
    :initarg :faults
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EsfSTATUS_Sens (<EsfSTATUS_Sens>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EsfSTATUS_Sens>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EsfSTATUS_Sens)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<EsfSTATUS_Sens> is deprecated: use ublox_msgs-msg:EsfSTATUS_Sens instead.")))

(cl:ensure-generic-function 'sensStatus1-val :lambda-list '(m))
(cl:defmethod sensStatus1-val ((m <EsfSTATUS_Sens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sensStatus1-val is deprecated.  Use ublox_msgs-msg:sensStatus1 instead.")
  (sensStatus1 m))

(cl:ensure-generic-function 'sensStatus2-val :lambda-list '(m))
(cl:defmethod sensStatus2-val ((m <EsfSTATUS_Sens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sensStatus2-val is deprecated.  Use ublox_msgs-msg:sensStatus2 instead.")
  (sensStatus2 m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <EsfSTATUS_Sens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:freq-val is deprecated.  Use ublox_msgs-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'faults-val :lambda-list '(m))
(cl:defmethod faults-val ((m <EsfSTATUS_Sens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:faults-val is deprecated.  Use ublox_msgs-msg:faults instead.")
  (faults m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EsfSTATUS_Sens>) ostream)
  "Serializes a message object of type '<EsfSTATUS_Sens>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensStatus1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensStatus2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faults)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EsfSTATUS_Sens>) istream)
  "Deserializes a message object of type '<EsfSTATUS_Sens>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensStatus1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensStatus2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faults)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EsfSTATUS_Sens>)))
  "Returns string type for a message object of type '<EsfSTATUS_Sens>"
  "ublox_msgs/EsfSTATUS_Sens")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EsfSTATUS_Sens)))
  "Returns string type for a message object of type 'EsfSTATUS_Sens"
  "ublox_msgs/EsfSTATUS_Sens")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EsfSTATUS_Sens>)))
  "Returns md5sum for a message object of type '<EsfSTATUS_Sens>"
  "642a0b5f53044e3a4dd28074dc540ef3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EsfSTATUS_Sens)))
  "Returns md5sum for a message object of type 'EsfSTATUS_Sens"
  "642a0b5f53044e3a4dd28074dc540ef3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EsfSTATUS_Sens>)))
  "Returns full string definition for message of type '<EsfSTATUS_Sens>"
  (cl:format cl:nil "# See Esf-STATUS~%#~%~%uint8 sensStatus1   # Sensor status, part 1 (see graphic below)~%uint8 sensStatus2   # Sensor status, part 2 (see graphic below)~%uint8 freq          # Observation frequency [Hz]~%uint8 faults        # Sensor faults (see graphic below)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EsfSTATUS_Sens)))
  "Returns full string definition for message of type 'EsfSTATUS_Sens"
  (cl:format cl:nil "# See Esf-STATUS~%#~%~%uint8 sensStatus1   # Sensor status, part 1 (see graphic below)~%uint8 sensStatus2   # Sensor status, part 2 (see graphic below)~%uint8 freq          # Observation frequency [Hz]~%uint8 faults        # Sensor faults (see graphic below)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EsfSTATUS_Sens>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EsfSTATUS_Sens>))
  "Converts a ROS message object to a list"
  (cl:list 'EsfSTATUS_Sens
    (cl:cons ':sensStatus1 (sensStatus1 msg))
    (cl:cons ':sensStatus2 (sensStatus2 msg))
    (cl:cons ':freq (freq msg))
    (cl:cons ':faults (faults msg))
))
