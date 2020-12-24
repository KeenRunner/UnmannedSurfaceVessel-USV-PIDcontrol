; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude UpdSOS.msg.html

(cl:defclass <UpdSOS> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UpdSOS (<UpdSOS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdSOS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdSOS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<UpdSOS> is deprecated: use ublox_msgs-msg:UpdSOS instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <UpdSOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cmd-val is deprecated.  Use ublox_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <UpdSOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UpdSOS>)))
    "Constants for message type '<UpdSOS>"
  '((:CLASS_ID . 9)
    (:MESSAGE_ID . 20)
    (:CMD_FLASH_BACKUP_CREATE . 0)
    (:CMD_FLASH_BACKUP_CLEAR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UpdSOS)))
    "Constants for message type 'UpdSOS"
  '((:CLASS_ID . 9)
    (:MESSAGE_ID . 20)
    (:CMD_FLASH_BACKUP_CREATE . 0)
    (:CMD_FLASH_BACKUP_CLEAR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdSOS>) ostream)
  "Serializes a message object of type '<UpdSOS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdSOS>) istream)
  "Deserializes a message object of type '<UpdSOS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdSOS>)))
  "Returns string type for a message object of type '<UpdSOS>"
  "ublox_msgs/UpdSOS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdSOS)))
  "Returns string type for a message object of type 'UpdSOS"
  "ublox_msgs/UpdSOS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdSOS>)))
  "Returns md5sum for a message object of type '<UpdSOS>"
  "fdc2e32dbb00126a932ae76a6222eec4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdSOS)))
  "Returns md5sum for a message object of type 'UpdSOS"
  "fdc2e32dbb00126a932ae76a6222eec4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdSOS>)))
  "Returns full string definition for message of type '<UpdSOS>"
  (cl:format cl:nil "# UPD-SOS (0x09 0x14)~%#~%# Firmware Supported on:~%# u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01~%#~%~%uint8 CLASS_ID = 9~%uint8 MESSAGE_ID = 20~%~%uint8 cmd                   # Command~%# The host can send this message in order to save part of the BBR memory in a ~%# file in flash file system. The feature is designed in order to emulate the ~%# presence of the backup battery even if it is not present; the host can issue ~%# the save on shutdown command before switching off the device supply. It is ~%# recommended to issue a GNSS stop command before, in order to keep the BBR ~%# memory content consistent.~%uint8 CMD_FLASH_BACKUP_CREATE = 0    # Create Backup File in Flash~%# The host can send this message in order to erase the backup file present in ~%# flash. It is recommended that the clear operation is issued after the host has ~%# received the notification that the memory has been restored after a reset. ~%# Alternatively the host can parse the startup string 'Restored data saved on ~%# shutdown' or poll the UBX-UPD-SOS message for getting the status.~%uint8 CMD_FLASH_BACKUP_CLEAR = 1     # Clear Backup File in Flash~%~%uint8[3] reserved1          # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdSOS)))
  "Returns full string definition for message of type 'UpdSOS"
  (cl:format cl:nil "# UPD-SOS (0x09 0x14)~%#~%# Firmware Supported on:~%# u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01~%#~%~%uint8 CLASS_ID = 9~%uint8 MESSAGE_ID = 20~%~%uint8 cmd                   # Command~%# The host can send this message in order to save part of the BBR memory in a ~%# file in flash file system. The feature is designed in order to emulate the ~%# presence of the backup battery even if it is not present; the host can issue ~%# the save on shutdown command before switching off the device supply. It is ~%# recommended to issue a GNSS stop command before, in order to keep the BBR ~%# memory content consistent.~%uint8 CMD_FLASH_BACKUP_CREATE = 0    # Create Backup File in Flash~%# The host can send this message in order to erase the backup file present in ~%# flash. It is recommended that the clear operation is issued after the host has ~%# received the notification that the memory has been restored after a reset. ~%# Alternatively the host can parse the startup string 'Restored data saved on ~%# shutdown' or poll the UBX-UPD-SOS message for getting the status.~%uint8 CMD_FLASH_BACKUP_CLEAR = 1     # Clear Backup File in Flash~%~%uint8[3] reserved1          # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdSOS>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdSOS>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdSOS
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
