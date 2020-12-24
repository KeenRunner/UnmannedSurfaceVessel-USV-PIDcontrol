; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude EsfSTATUS.msg.html

(cl:defclass <EsfSTATUS> (roslisp-msg-protocol:ros-message)
  ((iTOW
    :reader iTOW
    :initarg :iTOW
    :type cl:integer
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 7 :element-type 'cl:fixnum :initial-element 0))
   (fusionMode
    :reader fusionMode
    :initarg :fusionMode
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (numSens
    :reader numSens
    :initarg :numSens
    :type cl:fixnum
    :initform 0)
   (sens
    :reader sens
    :initarg :sens
    :type (cl:vector ublox_msgs-msg:EsfSTATUS_Sens)
   :initform (cl:make-array 0 :element-type 'ublox_msgs-msg:EsfSTATUS_Sens :initial-element (cl:make-instance 'ublox_msgs-msg:EsfSTATUS_Sens))))
)

(cl:defclass EsfSTATUS (<EsfSTATUS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EsfSTATUS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EsfSTATUS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<EsfSTATUS> is deprecated: use ublox_msgs-msg:EsfSTATUS instead.")))

(cl:ensure-generic-function 'iTOW-val :lambda-list '(m))
(cl:defmethod iTOW-val ((m <EsfSTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:iTOW-val is deprecated.  Use ublox_msgs-msg:iTOW instead.")
  (iTOW m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <EsfSTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:version-val is deprecated.  Use ublox_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <EsfSTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'fusionMode-val :lambda-list '(m))
(cl:defmethod fusionMode-val ((m <EsfSTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:fusionMode-val is deprecated.  Use ublox_msgs-msg:fusionMode instead.")
  (fusionMode m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <EsfSTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'numSens-val :lambda-list '(m))
(cl:defmethod numSens-val ((m <EsfSTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:numSens-val is deprecated.  Use ublox_msgs-msg:numSens instead.")
  (numSens m))

(cl:ensure-generic-function 'sens-val :lambda-list '(m))
(cl:defmethod sens-val ((m <EsfSTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:sens-val is deprecated.  Use ublox_msgs-msg:sens instead.")
  (sens m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EsfSTATUS>)))
    "Constants for message type '<EsfSTATUS>"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 16)
    (:FUSION_MODE_INIT . 0)
    (:FUSION_MODE_FUSION . 1)
    (:FUSION_MODE_SUSPENDED . 2)
    (:FUSION_MODE_DISABLED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EsfSTATUS)))
    "Constants for message type 'EsfSTATUS"
  '((:CLASS_ID . 16)
    (:MESSAGE_ID . 16)
    (:FUSION_MODE_INIT . 0)
    (:FUSION_MODE_FUSION . 1)
    (:FUSION_MODE_SUSPENDED . 2)
    (:FUSION_MODE_DISABLED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EsfSTATUS>) ostream)
  "Serializes a message object of type '<EsfSTATUS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fusionMode)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved2))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSens)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sens))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sens))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EsfSTATUS>) istream)
  "Deserializes a message object of type '<EsfSTATUS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iTOW)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 7)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fusionMode)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved2) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved2)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSens)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sens) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sens)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox_msgs-msg:EsfSTATUS_Sens))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EsfSTATUS>)))
  "Returns string type for a message object of type '<EsfSTATUS>"
  "ublox_msgs/EsfSTATUS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EsfSTATUS)))
  "Returns string type for a message object of type 'EsfSTATUS"
  "ublox_msgs/EsfSTATUS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EsfSTATUS>)))
  "Returns md5sum for a message object of type '<EsfSTATUS>"
  "006f2c0e3e6e9239781223dca67e519b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EsfSTATUS)))
  "Returns md5sum for a message object of type 'EsfSTATUS"
  "006f2c0e3e6e9239781223dca67e519b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EsfSTATUS>)))
  "Returns full string definition for message of type '<EsfSTATUS>"
  (cl:format cl:nil "# ESF-STATUS (0x10 0x10)~%# External Sensor Fusion (ESF) status information~%#~%# Supported on UDR/ADR products~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 16~%~%uint32 iTOW                   # GPS time of week of the navigation epoch [ms]~%uint8 version                 # Message version (2 for this version)~%~%uint8[7] reserved1            # Reserved~%~%uint8 fusionMode              # Fusion mode:~%uint8 FUSION_MODE_INIT = 0        # receiver is initializing some unknown values~%                                  # required for doing sensor fusion~%uint8 FUSION_MODE_FUSION = 1      # GNSS and sensor data are ~%                                  # used for navigation solution computation~%uint8 FUSION_MODE_SUSPENDED = 2   # sensor fusion is temporarily disabled ~%                                  # due to e.g. invalid sensor data or detected ~%                                  # ferry~%uint8 FUSION_MODE_DISABLED = 3    # sensor fusion is permanently disabled ~%                                  # until receiver reset due e.g. to sensor ~%                                  # error~%~%uint8[2] reserved2            # Reserved~%~%uint8 numSens                 # Number of sensors~%~%~%# Start of repeated block (numSens times)~%EsfSTATUS_Sens[] sens~%# End of repeated block~%================================================================================~%MSG: ublox_msgs/EsfSTATUS_Sens~%# See Esf-STATUS~%#~%~%uint8 sensStatus1   # Sensor status, part 1 (see graphic below)~%uint8 sensStatus2   # Sensor status, part 2 (see graphic below)~%uint8 freq          # Observation frequency [Hz]~%uint8 faults        # Sensor faults (see graphic below)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EsfSTATUS)))
  "Returns full string definition for message of type 'EsfSTATUS"
  (cl:format cl:nil "# ESF-STATUS (0x10 0x10)~%# External Sensor Fusion (ESF) status information~%#~%# Supported on UDR/ADR products~%#~%~%uint8 CLASS_ID = 16~%uint8 MESSAGE_ID = 16~%~%uint32 iTOW                   # GPS time of week of the navigation epoch [ms]~%uint8 version                 # Message version (2 for this version)~%~%uint8[7] reserved1            # Reserved~%~%uint8 fusionMode              # Fusion mode:~%uint8 FUSION_MODE_INIT = 0        # receiver is initializing some unknown values~%                                  # required for doing sensor fusion~%uint8 FUSION_MODE_FUSION = 1      # GNSS and sensor data are ~%                                  # used for navigation solution computation~%uint8 FUSION_MODE_SUSPENDED = 2   # sensor fusion is temporarily disabled ~%                                  # due to e.g. invalid sensor data or detected ~%                                  # ferry~%uint8 FUSION_MODE_DISABLED = 3    # sensor fusion is permanently disabled ~%                                  # until receiver reset due e.g. to sensor ~%                                  # error~%~%uint8[2] reserved2            # Reserved~%~%uint8 numSens                 # Number of sensors~%~%~%# Start of repeated block (numSens times)~%EsfSTATUS_Sens[] sens~%# End of repeated block~%================================================================================~%MSG: ublox_msgs/EsfSTATUS_Sens~%# See Esf-STATUS~%#~%~%uint8 sensStatus1   # Sensor status, part 1 (see graphic below)~%uint8 sensStatus2   # Sensor status, part 2 (see graphic below)~%uint8 freq          # Observation frequency [Hz]~%uint8 faults        # Sensor faults (see graphic below)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EsfSTATUS>))
  (cl:+ 0
     4
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sens) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EsfSTATUS>))
  "Converts a ROS message object to a list"
  (cl:list 'EsfSTATUS
    (cl:cons ':iTOW (iTOW msg))
    (cl:cons ':version (version msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':fusionMode (fusionMode msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':numSens (numSens msg))
    (cl:cons ':sens (sens msg))
))
