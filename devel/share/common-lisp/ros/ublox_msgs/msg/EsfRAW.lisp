; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude EsfRAW.msg.html

(cl:defclass <EsfRAW> (roslisp-msg-protocol:ros-message)
  ((reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (blocks
    :reader blocks
    :initarg :blocks
    :type (cl:vector ublox_msgs-msg:EsfRAW_Block)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:EsfRAW_Block :initial-element (cl:make-instance 'ublox_msgs-msg:EsfRAW_Block))))
)

(cl:defclass EsfRAW (<EsfRAW>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EsfRAW>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EsfRAW)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<EsfRAW> is deprecated: use ublox_msgs-msg:EsfRAW instead.")))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <EsfRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'blocks-val :lambda-list '(m))
(cl:defmethod blocks-val ((m <EsfRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:blocks-val is deprecated.  Use ublox_msgs-msg:blocks instead.")
  (blocks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EsfRAW>)))
    "Constants for message type '<EsfRAW>"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EsfRAW)))
    "Constants for message type 'EsfRAW"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EsfRAW>) ostream)
  "Serializes a message object of type '<EsfRAW>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blocks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blocks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EsfRAW>) istream)
  "Deserializes a message object of type '<EsfRAW>"
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blocks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blocks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:EsfRAW_Block))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EsfRAW>)))
  "Returns string type for a message object of type '<EsfRAW>"
  "ublox_msgs/EsfRAW")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EsfRAW)))
  "Returns string type for a message object of type 'EsfRAW"
  "ublox_msgs/EsfRAW")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EsfRAW>)))
  "Returns md5sum for a message object of type '<EsfRAW>"
  "b942250c5ec94c6b6e69c63d82d9a946")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EsfRAW)))
  "Returns md5sum for a message object of type 'EsfRAW"
  "b942250c5ec94c6b6e69c63d82d9a946")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EsfRAW>)))
  "Returns full string definition for message of type '<EsfRAW>"
  (cl:format cl:nil "# ESF-RAW (0x10 0x03)~%# Raw sensor measurements~%#~%# The message contains measurements from the active inertial sensors connected~%# to the GNSS chip. Possible data types for the data field are accelerometer,~%# gyroscope and temperature readings as described in the ESF Measurement Data~%# section. Note that the rate selected in CFG-MSG is not respected. If a~%# positive rate is selected then all raw measurements will be output. ~%#~%# Supported on ADR/UDR products.~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 3~%~%uint8[4] reserved0 # Reserved~%~%EsfRAW_Block[] blocks~%================================================================================~%MSG: ublox_msgs/EsfRAW_Block~%# See ESF-RAW~%~%uint32 data      # Its scaling and unit depends on the type and is~%                # the same as in ESF-MEAS~%uint32 DATA_FIELD_MASK = 16777215~%uint32 DATA_TYPE_MASK = 4278190080    # type of data ~%                                      # (0 = no data; 1..255 = data type)~%uint32 sTtag     # sensor time tag~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EsfRAW)))
  "Returns full string definition for message of type 'EsfRAW"
  (cl:format cl:nil "# ESF-RAW (0x10 0x03)~%# Raw sensor measurements~%#~%# The message contains measurements from the active inertial sensors connected~%# to the GNSS chip. Possible data types for the data field are accelerometer,~%# gyroscope and temperature readings as described in the ESF Measurement Data~%# section. Note that the rate selected in CFG-MSG is not respected. If a~%# positive rate is selected then all raw measurements will be output. ~%#~%# Supported on ADR/UDR products.~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 3~%~%uint8[4] reserved0 # Reserved~%~%EsfRAW_Block[] blocks~%================================================================================~%MSG: ublox_msgs/EsfRAW_Block~%# See ESF-RAW~%~%uint32 data      # Its scaling and unit depends on the type and is~%                # the same as in ESF-MEAS~%uint32 DATA_FIELD_MASK = 16777215~%uint32 DATA_TYPE_MASK = 4278190080    # type of data ~%                                      # (0 = no data; 1..255 = data type)~%uint32 sTtag     # sensor time tag~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EsfRAW>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blocks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EsfRAW>))
  "Converts a ROS message object to a list"
  (cl:list 'EsfRAW
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':blocks (blocks msg))
))
