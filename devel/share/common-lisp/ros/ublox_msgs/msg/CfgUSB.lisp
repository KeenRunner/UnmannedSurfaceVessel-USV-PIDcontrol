; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgUSB.msg.html

(cl:defclass <CfgUSB> (roslisp-msg-protocol:ros-message)
  ((vendorID
    :reader vendorID
    :initarg :vendorID
    :type cl:fixnum
    :initform 0)
   (productID
    :reader productID
    :initarg :productID
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (powerConsumption
    :reader powerConsumption
    :initarg :powerConsumption
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (vendorString
    :reader vendorString
    :initarg :vendorString
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 32 :element-type 'cl:fixnum :initial-element 0))
   (productString
    :reader productString
    :initarg :productString
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 32 :element-type 'cl:fixnum :initial-element 0))
   (serialNumber
    :reader serialNumber
    :initarg :serialNumber
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 32 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CfgUSB (<CfgUSB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgUSB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgUSB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgUSB> is deprecated: use ublox_msgs-msg:CfgUSB instead.")))

(cl:ensure-generic-function 'vendorID-val :lambda-list '(m))
(cl:defmethod vendorID-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:vendorID-val is deprecated.  Use ublox_msgs-msg:vendorID instead.")
  (vendorID m))

(cl:ensure-generic-function 'productID-val :lambda-list '(m))
(cl:defmethod productID-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:productID-val is deprecated.  Use ublox_msgs-msg:productID instead.")
  (productID m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved2-val is deprecated.  Use ublox_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'powerConsumption-val :lambda-list '(m))
(cl:defmethod powerConsumption-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:powerConsumption-val is deprecated.  Use ublox_msgs-msg:powerConsumption instead.")
  (powerConsumption m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:flags-val is deprecated.  Use ublox_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'vendorString-val :lambda-list '(m))
(cl:defmethod vendorString-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:vendorString-val is deprecated.  Use ublox_msgs-msg:vendorString instead.")
  (vendorString m))

(cl:ensure-generic-function 'productString-val :lambda-list '(m))
(cl:defmethod productString-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:productString-val is deprecated.  Use ublox_msgs-msg:productString instead.")
  (productString m))

(cl:ensure-generic-function 'serialNumber-val :lambda-list '(m))
(cl:defmethod serialNumber-val ((m <CfgUSB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:serialNumber-val is deprecated.  Use ublox_msgs-msg:serialNumber instead.")
  (serialNumber m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgUSB>)))
    "Constants for message type '<CfgUSB>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 27)
    (:FLAGS_RE_ENUM . 0)
    (:FLAGS_POWER_MODE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgUSB)))
    "Constants for message type 'CfgUSB"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 27)
    (:FLAGS_RE_ENUM . 0)
    (:FLAGS_POWER_MODE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgUSB>) ostream)
  "Serializes a message object of type '<CfgUSB>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vendorID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vendorID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productID)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved2))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'powerConsumption)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'powerConsumption)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'vendorString))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'productString))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'serialNumber))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgUSB>) istream)
  "Deserializes a message object of type '<CfgUSB>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vendorID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vendorID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productID)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'reserved2) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reserved2)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'powerConsumption)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'powerConsumption)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vendorString) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'vendorString)))
    (cl:dotimes (i 32)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'productString) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'productString)))
    (cl:dotimes (i 32)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'serialNumber) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'serialNumber)))
    (cl:dotimes (i 32)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgUSB>)))
  "Returns string type for a message object of type '<CfgUSB>"
  "ublox_msgs/CfgUSB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgUSB)))
  "Returns string type for a message object of type 'CfgUSB"
  "ublox_msgs/CfgUSB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgUSB>)))
  "Returns md5sum for a message object of type '<CfgUSB>"
  "d1797a4ed330d6193bc42a443c001b03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgUSB)))
  "Returns md5sum for a message object of type 'CfgUSB"
  "d1797a4ed330d6193bc42a443c001b03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgUSB>)))
  "Returns full string definition for message of type '<CfgUSB>"
  (cl:format cl:nil "# UBX-CFG-USB (0x06 0x1B)~%# USB Configuration~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 27 ~%~%uint16 vendorID             # Only set to registered Vendor IDs.                     ~%                            # Changing this field requires special Host drivers.~%~%uint16 productID            # Product ID. Changing this field requires special  ~%                            # Host drivers.~%~%uint8[2] reserved1          # Reserved~%uint8[2] reserved2          # Reserved~%~%uint16 powerConsumption     # Power consumed by the device [mA]~%~%uint16 flags                # various configuration flags (see graphic below)~%uint16 FLAGS_RE_ENUM = 0       # force re-enumeration~%uint16 FLAGS_POWER_MODE = 2    # self-powered (1), bus-powered (0)~%~%int8[32] vendorString      # String containing the vendor name. ~%                           # 32 ASCII bytes including 0-termination.~%int8[32] productString     # String containing the product name. ~%                           # 32 ASCII bytes including 0-termination.~%int8[32] serialNumber      # String containing the serial number. ~%                           # 32 ASCII bytes including 0-termination. ~%                           # Changing the String fields requires special Host ~%                           # drivers.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgUSB)))
  "Returns full string definition for message of type 'CfgUSB"
  (cl:format cl:nil "# UBX-CFG-USB (0x06 0x1B)~%# USB Configuration~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 27 ~%~%uint16 vendorID             # Only set to registered Vendor IDs.                     ~%                            # Changing this field requires special Host drivers.~%~%uint16 productID            # Product ID. Changing this field requires special  ~%                            # Host drivers.~%~%uint8[2] reserved1          # Reserved~%uint8[2] reserved2          # Reserved~%~%uint16 powerConsumption     # Power consumed by the device [mA]~%~%uint16 flags                # various configuration flags (see graphic below)~%uint16 FLAGS_RE_ENUM = 0       # force re-enumeration~%uint16 FLAGS_POWER_MODE = 2    # self-powered (1), bus-powered (0)~%~%int8[32] vendorString      # String containing the vendor name. ~%                           # 32 ASCII bytes including 0-termination.~%int8[32] productString     # String containing the product name. ~%                           # 32 ASCII bytes including 0-termination.~%int8[32] serialNumber      # String containing the serial number. ~%                           # 32 ASCII bytes including 0-termination. ~%                           # Changing the String fields requires special Host ~%                           # drivers.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgUSB>))
  (cl:+ 0
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vendorString) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'productString) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'serialNumber) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgUSB>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgUSB
    (cl:cons ':vendorID (vendorID msg))
    (cl:cons ':productID (productID msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':powerConsumption (powerConsumption msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':vendorString (vendorString msg))
    (cl:cons ':productString (productString msg))
    (cl:cons ':serialNumber (serialNumber msg))
))
