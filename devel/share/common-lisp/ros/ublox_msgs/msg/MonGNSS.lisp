; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude MonGNSS.msg.html

(cl:defclass <MonGNSS> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (supported
    :reader supported
    :initarg :supported
    :type cl:fixnum
    :initform 0)
   (defaultGnss
    :reader defaultGnss
    :initarg :defaultGnss
    :type cl:fixnum
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:fixnum
    :initform 0)
   (simultaneous
    :reader simultaneous
    :initarg :simultaneous
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MonGNSS (<MonGNSS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonGNSS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonGNSS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<MonGNSS> is deprecated: use ublox_msgs-msg:MonGNSS instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <MonGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'supported-val :lambda-list '(m))
(cl:defmethod supported-val ((m <MonGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:supported-val is deprecated.  Use ublox_msgs-msg:supported instead.")
  (supported m))

(cl:ensure-generic-function 'defaultGnss-val :lambda-list '(m))
(cl:defmethod defaultGnss-val ((m <MonGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:defaultGnss-val is deprecated.  Use ublox_msgs-msg:defaultGnss instead.")
  (defaultGnss m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <MonGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:enabled-val is deprecated.  Use ublox_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'simultaneous-val :lambda-list '(m))
(cl:defmethod simultaneous-val ((m <MonGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:simultaneous-val is deprecated.  Use ublox_msgs-msg:simultaneous instead.")
  (simultaneous m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <MonGNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MonGNSS>)))
    "Constants for message type '<MonGNSS>"
  '((:CLASS_ID . 10)
    (:MESSAGE_ID . 40)
    (:BIT_MASK_GPS . 1)
    (:BIT_MASK_GLONASS . 2)
    (:BIT_MASK_BEIDOU . 4)
    (:BIT_MASK_GALILEO . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MonGNSS)))
    "Constants for message type 'MonGNSS"
  '((:CLASS_ID . 10)
    (:MESSAGE_ID . 40)
    (:BIT_MASK_GPS . 1)
    (:BIT_MASK_GLONASS . 2)
    (:BIT_MASK_BEIDOU . 4)
    (:BIT_MASK_GALILEO . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonGNSS>) ostream)
  "Serializes a message object of type '<MonGNSS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supported)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'defaultGnss)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'simultaneous)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonGNSS>) istream)
  "Deserializes a message object of type '<MonGNSS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supported)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'defaultGnss)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'simultaneous)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonGNSS>)))
  "Returns string type for a message object of type '<MonGNSS>"
  "ublox_msgs/MonGNSS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonGNSS)))
  "Returns string type for a message object of type 'MonGNSS"
  "ublox_msgs/MonGNSS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonGNSS>)))
  "Returns md5sum for a message object of type '<MonGNSS>"
  "0986728889e4abf5eac46b70b74047ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonGNSS)))
  "Returns md5sum for a message object of type 'MonGNSS"
  "0986728889e4abf5eac46b70b74047ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonGNSS>)))
  "Returns full string definition for message of type '<MonGNSS>"
  (cl:format cl:nil "# MON-GNSS (0x0A 0x28)~%# Information message major GNSS selection~%#~%# This message reports major GNSS selection. Augmentation systems are not~%# reported.~%# ~%~%uint8 CLASS_ID = 10~%uint8 MESSAGE_ID = 40~%~%uint8 version         # Message version (0x01 for this version)~%~%uint8 BIT_MASK_GPS = 1~%uint8 BIT_MASK_GLONASS = 2~%uint8 BIT_MASK_BEIDOU = 4~%uint8 BIT_MASK_GALILEO = 8~%~%uint8 supported       # The major GNSS that can be supported by this receiver~%uint8 defaultGnss     # Default major GNSS selection. If the default major GNSS ~%                      # selection is currently configured in the efuse for this ~%                      # receiver, it takes precedence over the default major ~%                      # GNSS selection configured in the executing firmware of ~%                      # this receiver.~%                      # see bit mask constants~%uint8 enabled         # Current major GNSS selection enabled for this receiver~%                      # see bit mask constants~%~%uint8 simultaneous    # Maximum number of concurrent major GNSS that can be ~%                      # supported by this receiver~%~%uint8[3] reserved1    # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonGNSS)))
  "Returns full string definition for message of type 'MonGNSS"
  (cl:format cl:nil "# MON-GNSS (0x0A 0x28)~%# Information message major GNSS selection~%#~%# This message reports major GNSS selection. Augmentation systems are not~%# reported.~%# ~%~%uint8 CLASS_ID = 10~%uint8 MESSAGE_ID = 40~%~%uint8 version         # Message version (0x01 for this version)~%~%uint8 BIT_MASK_GPS = 1~%uint8 BIT_MASK_GLONASS = 2~%uint8 BIT_MASK_BEIDOU = 4~%uint8 BIT_MASK_GALILEO = 8~%~%uint8 supported       # The major GNSS that can be supported by this receiver~%uint8 defaultGnss     # Default major GNSS selection. If the default major GNSS ~%                      # selection is currently configured in the efuse for this ~%                      # receiver, it takes precedence over the default major ~%                      # GNSS selection configured in the executing firmware of ~%                      # this receiver.~%                      # see bit mask constants~%uint8 enabled         # Current major GNSS selection enabled for this receiver~%                      # see bit mask constants~%~%uint8 simultaneous    # Maximum number of concurrent major GNSS that can be ~%                      # supported by this receiver~%~%uint8[3] reserved1    # Reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonGNSS>))
  (cl:+ 0
     1
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonGNSS>))
  "Converts a ROS message object to a list"
  (cl:list 'MonGNSS
    (cl:cons ':version (version msg))
    (cl:cons ':supported (supported msg))
    (cl:cons ':defaultGnss (defaultGnss msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':simultaneous (simultaneous msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
