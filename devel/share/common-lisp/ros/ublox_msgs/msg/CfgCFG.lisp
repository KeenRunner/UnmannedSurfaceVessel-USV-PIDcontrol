; Auto-generated. Do not edit!


(cl:in-package ublox_msgs-msg)


;//! \htmlinclude CfgCFG.msg.html

(cl:defclass <CfgCFG> (roslisp-msg-protocol:ros-message)
  ((clearMask
    :reader clearMask
    :initarg :clearMask
    :type cl:integer
    :initform 0)
   (saveMask
    :reader saveMask
    :initarg :saveMask
    :type cl:integer
    :initform 0)
   (loadMask
    :reader loadMask
    :initarg :loadMask
    :type cl:integer
    :initform 0)
   (deviceMask
    :reader deviceMask
    :initarg :deviceMask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CfgCFG (<CfgCFG>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CfgCFG>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CfgCFG)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox_msgs-msg:<CfgCFG> is deprecated: use ublox_msgs-msg:CfgCFG instead.")))

(cl:ensure-generic-function 'clearMask-val :lambda-list '(m))
(cl:defmethod clearMask-val ((m <CfgCFG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:clearMask-val is deprecated.  Use ublox_msgs-msg:clearMask instead.")
  (clearMask m))

(cl:ensure-generic-function 'saveMask-val :lambda-list '(m))
(cl:defmethod saveMask-val ((m <CfgCFG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:saveMask-val is deprecated.  Use ublox_msgs-msg:saveMask instead.")
  (saveMask m))

(cl:ensure-generic-function 'loadMask-val :lambda-list '(m))
(cl:defmethod loadMask-val ((m <CfgCFG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:loadMask-val is deprecated.  Use ublox_msgs-msg:loadMask instead.")
  (loadMask m))

(cl:ensure-generic-function 'deviceMask-val :lambda-list '(m))
(cl:defmethod deviceMask-val ((m <CfgCFG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox_msgs-msg:deviceMask-val is deprecated.  Use ublox_msgs-msg:deviceMask instead.")
  (deviceMask m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CfgCFG>)))
    "Constants for message type '<CfgCFG>"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 9)
    (:MASK_IO_PORT . 1)
    (:MASK_MSG_CONF . 2)
    (:MASK_INF_MSG . 4)
    (:MASK_NAV_CONF . 8)
    (:MASK_RXM_CONF . 16)
    (:MASK_SEN_CONF . 256)
    (:MASK_RINV_CONF . 512)
    (:MASK_ANT_CONF . 1024)
    (:MASK_LOG_CONF . 2048)
    (:MASK_FTS_CONF . 4096)
    (:DEV_BBR . 1)
    (:DEV_FLASH . 2)
    (:DEV_EEPROM . 4)
    (:DEV_SPI_FLASH . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CfgCFG)))
    "Constants for message type 'CfgCFG"
  '((:CLASS_ID . 6)
    (:MESSAGE_ID . 9)
    (:MASK_IO_PORT . 1)
    (:MASK_MSG_CONF . 2)
    (:MASK_INF_MSG . 4)
    (:MASK_NAV_CONF . 8)
    (:MASK_RXM_CONF . 16)
    (:MASK_SEN_CONF . 256)
    (:MASK_RINV_CONF . 512)
    (:MASK_ANT_CONF . 1024)
    (:MASK_LOG_CONF . 2048)
    (:MASK_FTS_CONF . 4096)
    (:DEV_BBR . 1)
    (:DEV_FLASH . 2)
    (:DEV_EEPROM . 4)
    (:DEV_SPI_FLASH . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CfgCFG>) ostream)
  "Serializes a message object of type '<CfgCFG>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clearMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clearMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clearMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clearMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'saveMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'saveMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'saveMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'saveMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loadMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'loadMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'loadMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'loadMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceMask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CfgCFG>) istream)
  "Deserializes a message object of type '<CfgCFG>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clearMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clearMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clearMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clearMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'saveMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'saveMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'saveMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'saveMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loadMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'loadMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'loadMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'loadMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceMask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CfgCFG>)))
  "Returns string type for a message object of type '<CfgCFG>"
  "ublox_msgs/CfgCFG")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CfgCFG)))
  "Returns string type for a message object of type 'CfgCFG"
  "ublox_msgs/CfgCFG")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CfgCFG>)))
  "Returns md5sum for a message object of type '<CfgCFG>"
  "82e4847c642bca8fb5b8af4595e063a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CfgCFG)))
  "Returns md5sum for a message object of type 'CfgCFG"
  "82e4847c642bca8fb5b8af4595e063a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CfgCFG>)))
  "Returns full string definition for message of type '<CfgCFG>"
  (cl:format cl:nil "# CFG-CFG (0x06 0x09)~%# Clear, Save and Load configurations~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 9~%~%uint32 clearMask          # Mask with configuration sub-sections to Clear~%                          # (=Load Default Configurations to Permanent~%                          # Configurations in non-volatile memory)~%uint32 saveMask           # Mask with configuration sub-section to Save~%                          # (=Save Current Configuration to Non-volatile~%                          # Memory)~%uint32 loadMask           # Mask with configuration sub-sections to Load~%                          # (=Load Permanent Configurations from~%                          # Non-volatile Memory to Current Configurations)~%~%uint32 MASK_IO_PORT = 1       # Communications port settings. Modifying this ~%                              # sub-section results in an IO system reset. ~%                              # Because of this undefined data may be output ~%                              # for a short period of time after receiving the~%                              # message.~%uint32 MASK_MSG_CONF = 2      # Message Configuration~%uint32 MASK_INF_MSG = 4       # INF Message Configuration~%uint32 MASK_NAV_CONF = 8      # Navigation Configuration~%uint32 MASK_RXM_CONF = 16     # Receiver Manager Configuration~%uint32 MASK_SEN_CONF = 256    # Sensor Interface Configuration, protocol >= 19~%uint32 MASK_RINV_CONF = 512   # Remote Inventory Configuration~%uint32 MASK_ANT_CONF = 1024   # Antenna Configuration~%uint32 MASK_LOG_CONF = 2048   # Logging Configuration~%uint32 MASK_FTS_CONF = 4096   # FTS Configuration. Only applicable to the ~%                              # FTS product variant.~%~%uint8 deviceMask          # Mask which selects the devices for this command~%uint8 DEV_BBR = 1             # device battery backed RAM~%uint8 DEV_FLASH = 2           # device Flash~%uint8 DEV_EEPROM = 4          # device EEPROM~%uint8 DEV_SPI_FLASH = 16      # device SPI Flash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CfgCFG)))
  "Returns full string definition for message of type 'CfgCFG"
  (cl:format cl:nil "# CFG-CFG (0x06 0x09)~%# Clear, Save and Load configurations~%#~%~%uint8 CLASS_ID = 6~%uint8 MESSAGE_ID = 9~%~%uint32 clearMask          # Mask with configuration sub-sections to Clear~%                          # (=Load Default Configurations to Permanent~%                          # Configurations in non-volatile memory)~%uint32 saveMask           # Mask with configuration sub-section to Save~%                          # (=Save Current Configuration to Non-volatile~%                          # Memory)~%uint32 loadMask           # Mask with configuration sub-sections to Load~%                          # (=Load Permanent Configurations from~%                          # Non-volatile Memory to Current Configurations)~%~%uint32 MASK_IO_PORT = 1       # Communications port settings. Modifying this ~%                              # sub-section results in an IO system reset. ~%                              # Because of this undefined data may be output ~%                              # for a short period of time after receiving the~%                              # message.~%uint32 MASK_MSG_CONF = 2      # Message Configuration~%uint32 MASK_INF_MSG = 4       # INF Message Configuration~%uint32 MASK_NAV_CONF = 8      # Navigation Configuration~%uint32 MASK_RXM_CONF = 16     # Receiver Manager Configuration~%uint32 MASK_SEN_CONF = 256    # Sensor Interface Configuration, protocol >= 19~%uint32 MASK_RINV_CONF = 512   # Remote Inventory Configuration~%uint32 MASK_ANT_CONF = 1024   # Antenna Configuration~%uint32 MASK_LOG_CONF = 2048   # Logging Configuration~%uint32 MASK_FTS_CONF = 4096   # FTS Configuration. Only applicable to the ~%                              # FTS product variant.~%~%uint8 deviceMask          # Mask which selects the devices for this command~%uint8 DEV_BBR = 1             # device battery backed RAM~%uint8 DEV_FLASH = 2           # device Flash~%uint8 DEV_EEPROM = 4          # device EEPROM~%uint8 DEV_SPI_FLASH = 16      # device SPI Flash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CfgCFG>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CfgCFG>))
  "Converts a ROS message object to a list"
  (cl:list 'CfgCFG
    (cl:cons ':clearMask (clearMask msg))
    (cl:cons ':saveMask (saveMask msg))
    (cl:cons ':loadMask (loadMask msg))
    (cl:cons ':deviceMask (deviceMask msg))
))
