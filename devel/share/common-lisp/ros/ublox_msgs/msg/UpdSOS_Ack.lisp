; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude UpdSOS_Ack.msg.html

(cl:defclass <UpdSOS_Ack> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (response
    :reader response
    :initarg :response
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UpdSOS_Ack (<UpdSOS_Ack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdSOS_Ack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdSOS_Ack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<UpdSOS_Ack> is deprecated: use ublox_msgs-msg:UpdSOS_Ack instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <UpdSOS_Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:cmd-val is deprecated.  Use ublox_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <UpdSOS_Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved0-val is deprecated.  Use ublox_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <UpdSOS_Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:response-val is deprecated.  Use ublox_msgs-msg:response instead.")
  (response m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <UpdSOS_Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:reserved1-val is deprecated.  Use ublox_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UpdSOS_Ack>)))
    "Constants for message type '<UpdSOS_Ack>"
  '((:CLASS_ID . 9)
    (:MESSAGE_ID . 20)
    (:CMD_BACKUP_CREATE_ACK . 2)
    (:CMD_SYSTEM_RESTORED . 3)
    (:BACKUP_CREATE_NACK . 0)
    (:BACKUP_CREATE_ACK . 1)
    (:SYSTEM_RESTORED_RESPONSE_UNKNOWN . 0)
    (:SYSTEM_RESTORED_RESPONSE_FAILED . 1)
    (:SYSTEM_RESTORED_RESPONSE_RESTORED . 2)
    (:SYSTEM_RESTORED_RESPONSE_NOT_RESTORED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UpdSOS_Ack)))
    "Constants for message type 'UpdSOS_Ack"
  '((:CLASS_ID . 9)
    (:MESSAGE_ID . 20)
    (:CMD_BACKUP_CREATE_ACK . 2)
    (:CMD_SYSTEM_RESTORED . 3)
    (:BACKUP_CREATE_NACK . 0)
    (:BACKUP_CREATE_ACK . 1)
    (:SYSTEM_RESTORED_RESPONSE_UNKNOWN . 0)
    (:SYSTEM_RESTORED_RESPONSE_FAILED . 1)
    (:SYSTEM_RESTORED_RESPONSE_RESTORED . 2)
    (:SYSTEM_RESTORED_RESPONSE_NOT_RESTORED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdSOS_Ack>) ostream)
  "Serializes a message object of type '<UpdSOS_Ack>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdSOS_Ack>) istream)
  "Deserializes a message object of type '<UpdSOS_Ack>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdSOS_Ack>)))
  "Returns string type for a message object of type '<UpdSOS_Ack>"
  "ublox_msgs/UpdSOS_Ack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdSOS_Ack)))
  "Returns string type for a message object of type 'UpdSOS_Ack"
  "ublox_msgs/UpdSOS_Ack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdSOS_Ack>)))
  "Returns md5sum for a message object of type '<UpdSOS_Ack>"
  "028d9bc0701daf71dcd1ad8cef68594c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdSOS_Ack)))
  "Returns md5sum for a message object of type 'UpdSOS_Ack"
  "028d9bc0701daf71dcd1ad8cef68594c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdSOS_Ack>)))
  "Returns full string definition for message of type '<UpdSOS_Ack>"
  (cl:format cl:nil "# UPD-SOS (0x09 0x14)~%#~%# Backup File Creation Acknowledge / System Restored from Backup~%# ~%# Firmware Supported on:~%# u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01~%#~%~%uint8 CLASS_ID = 9~%uint8 MESSAGE_ID = 20~%~%uint8 cmd                   # Command~%uint8 CMD_BACKUP_CREATE_ACK = 2   # Backup File Creation Acknowledge~%                                  # The message is sent from the device as ~%                                  # confirmation of creation of a backup file ~%                                  # in flash. The host can safely shut down the ~%                                  # device after received this message.~%uint8 CMD_SYSTEM_RESTORED = 3     # System Restored from Backup~%                                  # The message is sent from the device to ~%                                  # notify the host the BBR has been restored ~%                                  # from a backup file in flash. The host ~%                                  # should clear the backup file after ~%                                  # receiving this message. If the UBX-UPD-SOS ~%                                  # message is polled, this message will be ~%                                  # present.~%~%uint8[3] reserved0          # Reserved~%~%uint8 response                                  # Response:~%uint8 BACKUP_CREATE_NACK = 0                      # Not acknowledged~%uint8 BACKUP_CREATE_ACK = 1                       # Acknowledged~%uint8 SYSTEM_RESTORED_RESPONSE_UNKNOWN = 0        # Unknown~%uint8 SYSTEM_RESTORED_RESPONSE_FAILED = 1         # Failed restoring from backup ~%                                                  # file~%uint8 SYSTEM_RESTORED_RESPONSE_RESTORED = 2       # Restored from backup file~%uint8 SYSTEM_RESTORED_RESPONSE_NOT_RESTORED = 3   # Not restored (no backup)~%~%uint8[3] reserved1          # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdSOS_Ack)))
  "Returns full string definition for message of type 'UpdSOS_Ack"
  (cl:format cl:nil "# UPD-SOS (0x09 0x14)~%#~%# Backup File Creation Acknowledge / System Restored from Backup~%# ~%# Firmware Supported on:~%# u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01~%#~%~%uint8 CLASS_ID = 9~%uint8 MESSAGE_ID = 20~%~%uint8 cmd                   # Command~%uint8 CMD_BACKUP_CREATE_ACK = 2   # Backup File Creation Acknowledge~%                                  # The message is sent from the device as ~%                                  # confirmation of creation of a backup file ~%                                  # in flash. The host can safely shut down the ~%                                  # device after received this message.~%uint8 CMD_SYSTEM_RESTORED = 3     # System Restored from Backup~%                                  # The message is sent from the device to ~%                                  # notify the host the BBR has been restored ~%                                  # from a backup file in flash. The host ~%                                  # should clear the backup file after ~%                                  # receiving this message. If the UBX-UPD-SOS ~%                                  # message is polled, this message will be ~%                                  # present.~%~%uint8[3] reserved0          # Reserved~%~%uint8 response                                  # Response:~%uint8 BACKUP_CREATE_NACK = 0                      # Not acknowledged~%uint8 BACKUP_CREATE_ACK = 1                       # Acknowledged~%uint8 SYSTEM_RESTORED_RESPONSE_UNKNOWN = 0        # Unknown~%uint8 SYSTEM_RESTORED_RESPONSE_FAILED = 1         # Failed restoring from backup ~%                                                  # file~%uint8 SYSTEM_RESTORED_RESPONSE_RESTORED = 2       # Restored from backup file~%uint8 SYSTEM_RESTORED_RESPONSE_NOT_RESTORED = 3   # Not restored (no backup)~%~%uint8[3] reserved1          # Reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdSOS_Ack>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdSOS_Ack>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdSOS_Ack
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':response (response msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
