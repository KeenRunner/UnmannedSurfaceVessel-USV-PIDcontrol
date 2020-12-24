;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::CfgUSB)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'CfgUSB (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::CFGUSB")
  (make-package "UBLOX_MSGS::CFGUSB"))

(in-package "ROS")
;;//! \htmlinclude CfgUSB.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::CFGUSB"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::CFGUSB"))
(defconstant ublox_msgs::CfgUSB::*CLASS_ID* 6)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::CFGUSB"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::CFGUSB"))
(defconstant ublox_msgs::CfgUSB::*MESSAGE_ID* 27)
(intern "*FLAGS_RE_ENUM*" (find-package "UBLOX_MSGS::CFGUSB"))
(shadow '*FLAGS_RE_ENUM* (find-package "UBLOX_MSGS::CFGUSB"))
(defconstant ublox_msgs::CfgUSB::*FLAGS_RE_ENUM* 0)
(intern "*FLAGS_POWER_MODE*" (find-package "UBLOX_MSGS::CFGUSB"))
(shadow '*FLAGS_POWER_MODE* (find-package "UBLOX_MSGS::CFGUSB"))
(defconstant ublox_msgs::CfgUSB::*FLAGS_POWER_MODE* 2)
(defclass ublox_msgs::CfgUSB
  :super ros::object
  :slots (_vendorID _productID _reserved1 _reserved2 _powerConsumption _flags _vendorString _productString _serialNumber ))

(defmethod ublox_msgs::CfgUSB
  (:init
   (&key
    ((:vendorID __vendorID) 0)
    ((:productID __productID) 0)
    ((:reserved1 __reserved1) (make-array 2 :initial-element 0 :element-type :char))
    ((:reserved2 __reserved2) (make-array 2 :initial-element 0 :element-type :char))
    ((:powerConsumption __powerConsumption) 0)
    ((:flags __flags) 0)
    ((:vendorString __vendorString) (make-array 32 :initial-element 0 :element-type :integer))
    ((:productString __productString) (make-array 32 :initial-element 0 :element-type :integer))
    ((:serialNumber __serialNumber) (make-array 32 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _vendorID (round __vendorID))
   (setq _productID (round __productID))
   (setq _reserved1 __reserved1)
   (setq _reserved2 __reserved2)
   (setq _powerConsumption (round __powerConsumption))
   (setq _flags (round __flags))
   (setq _vendorString __vendorString)
   (setq _productString __productString)
   (setq _serialNumber __serialNumber)
   self)
  (:vendorID
   (&optional __vendorID)
   (if __vendorID (setq _vendorID __vendorID)) _vendorID)
  (:productID
   (&optional __productID)
   (if __productID (setq _productID __productID)) _productID)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:powerConsumption
   (&optional __powerConsumption)
   (if __powerConsumption (setq _powerConsumption __powerConsumption)) _powerConsumption)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:vendorString
   (&optional __vendorString)
   (if __vendorString (setq _vendorString __vendorString)) _vendorString)
  (:productString
   (&optional __productString)
   (if __productString (setq _productString __productString)) _productString)
  (:serialNumber
   (&optional __serialNumber)
   (if __serialNumber (setq _serialNumber __serialNumber)) _serialNumber)
  (:serialization-length
   ()
   (+
    ;; uint16 _vendorID
    2
    ;; uint16 _productID
    2
    ;; uint8[2] _reserved1
    (* 1    2)
    ;; uint8[2] _reserved2
    (* 1    2)
    ;; uint16 _powerConsumption
    2
    ;; uint16 _flags
    2
    ;; int8[32] _vendorString
    (* 1    32)
    ;; int8[32] _productString
    (* 1    32)
    ;; int8[32] _serialNumber
    (* 1    32)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _vendorID
       (write-word _vendorID s)
     ;; uint16 _productID
       (write-word _productID s)
     ;; uint8[2] _reserved1
     (princ _reserved1 s)
     ;; uint8[2] _reserved2
     (princ _reserved2 s)
     ;; uint16 _powerConsumption
       (write-word _powerConsumption s)
     ;; uint16 _flags
       (write-word _flags s)
     ;; int8[32] _vendorString
     (dotimes (i 32)
       (write-byte (elt _vendorString i) s)
       )
     ;; int8[32] _productString
     (dotimes (i 32)
       (write-byte (elt _productString i) s)
       )
     ;; int8[32] _serialNumber
     (dotimes (i 32)
       (write-byte (elt _serialNumber i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _vendorID
     (setq _vendorID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _productID
     (setq _productID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[2] _reserved1
   (setq _reserved1 (make-array 2 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 2)
   ;; uint8[2] _reserved2
   (setq _reserved2 (make-array 2 :element-type :char))
   (replace _reserved2 buf :start2 ptr-) (incf ptr- 2)
   ;; uint16 _powerConsumption
     (setq _powerConsumption (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8[32] _vendorString
   (dotimes (i (length _vendorString))
     (setf (elt _vendorString i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _vendorString i) 127) (setf (elt _vendorString i) (- (elt _vendorString i) 256)))
     )
   ;; int8[32] _productString
   (dotimes (i (length _productString))
     (setf (elt _productString i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _productString i) 127) (setf (elt _productString i) (- (elt _productString i) 256)))
     )
   ;; int8[32] _serialNumber
   (dotimes (i (length _serialNumber))
     (setf (elt _serialNumber i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _serialNumber i) 127) (setf (elt _serialNumber i) (- (elt _serialNumber i) 256)))
     )
   ;;
   self)
  )

(setf (get ublox_msgs::CfgUSB :md5sum-) "d1797a4ed330d6193bc42a443c001b03")
(setf (get ublox_msgs::CfgUSB :datatype-) "ublox_msgs/CfgUSB")
(setf (get ublox_msgs::CfgUSB :definition-)
      "# UBX-CFG-USB (0x06 0x1B)
# USB Configuration
#

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 27 

uint16 vendorID             # Only set to registered Vendor IDs.                     
                            # Changing this field requires special Host drivers.

uint16 productID            # Product ID. Changing this field requires special  
                            # Host drivers.

uint8[2] reserved1          # Reserved
uint8[2] reserved2          # Reserved

uint16 powerConsumption     # Power consumed by the device [mA]

uint16 flags                # various configuration flags (see graphic below)
uint16 FLAGS_RE_ENUM = 0       # force re-enumeration
uint16 FLAGS_POWER_MODE = 2    # self-powered (1), bus-powered (0)

int8[32] vendorString      # String containing the vendor name. 
                           # 32 ASCII bytes including 0-termination.
int8[32] productString     # String containing the product name. 
                           # 32 ASCII bytes including 0-termination.
int8[32] serialNumber      # String containing the serial number. 
                           # 32 ASCII bytes including 0-termination. 
                           # Changing the String fields requires special Host 
                           # drivers.
")



(provide :ublox_msgs/CfgUSB "d1797a4ed330d6193bc42a443c001b03")


