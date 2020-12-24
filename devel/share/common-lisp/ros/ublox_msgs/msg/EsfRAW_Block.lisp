; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude EsfRAW_Block.msg.html

(cl:defclass <EsfRAW_Block> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0)
   (sTtag
    :reader sTtag
    :initarg :sTtag
    :type cl:integer
    :initform 0))
)

(cl:defclass EsfRAW_Block (<EsfRAW_Block>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EsfRAW_Block>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EsfRAW_Block)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<EsfRAW_Block> is deprecated: use ublox_msgs-msg:EsfRAW_Block instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EsfRAW_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:data-val is deprecated.  Use ublox_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'sTtag-val :lambda-list '(m))
(cl:defmethod sTtag-val ((m <EsfRAW_Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sTtag-val is deprecated.  Use ublox_msgs-msg:sTtag instead.")
  (sTtag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EsfRAW_Block>)))
    "Constants for message type '<EsfRAW_Block>"
  '((:DATA_FIELD_MASK . 16777215)
    (:DATA_TYPE_MASK . 4278190080))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EsfRAW_Block)))
    "Constants for message type 'EsfRAW_Block"
  '((:DATA_FIELD_MASK . 16777215)
    (:DATA_TYPE_MASK . 4278190080))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EsfRAW_Block>) ostream)
  "Serializes a message object of type '<EsfRAW_Block>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sTtag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sTtag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sTtag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sTtag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EsfRAW_Block>) istream)
  "Deserializes a message object of type '<EsfRAW_Block>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sTtag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sTtag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sTtag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sTtag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EsfRAW_Block>)))
  "Returns string type for a message object of type '<EsfRAW_Block>"
  "ublox_msgs/EsfRAW_Block")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EsfRAW_Block)))
  "Returns string type for a message object of type 'EsfRAW_Block"
  "ublox_msgs/EsfRAW_Block")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EsfRAW_Block>)))
  "Returns md5sum for a message object of type '<EsfRAW_Block>"
  "b688443e4ebc6f99b9ac9276b838d477")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EsfRAW_Block)))
  "Returns md5sum for a message object of type 'EsfRAW_Block"
  "b688443e4ebc6f99b9ac9276b838d477")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EsfRAW_Block>)))
  "Returns full string definition for message of type '<EsfRAW_Block>"
  (cl:format cl:nil "# See ESF-RAW~%~%uint32 data      # Its scaling and unit depends on the type and is~%                # the same as in ESF-MEAS~%uint32 DATA_FIELD_MASK = 16777215~%uint32 DATA_TYPE_MASK = 4278190080    # type of data ~%                                      # (0 = no data; 1..255 = data type)~%uint32 sTtag     # sensor time tag~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EsfRAW_Block)))
  "Returns full string definition for message of type 'EsfRAW_Block"
  (cl:format cl:nil "# See ESF-RAW~%~%uint32 data      # Its scaling and unit depends on the type and is~%                # the same as in ESF-MEAS~%uint32 DATA_FIELD_MASK = 16777215~%uint32 DATA_TYPE_MASK = 4278190080    # type of data ~%                                      # (0 = no data; 1..255 = data type)~%uint32 sTtag     # sensor time tag~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EsfRAW_Block>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EsfRAW_Block>))
  "Converts a ROS message object to a list"
  (cl:list 'EsfRAW_Block
    (cl:cons ':data (data msg))
    (cl:cons ':sTtag (sTtag msg))
))
