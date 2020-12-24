;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::AidEPH)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'AidEPH (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::AIDEPH")
  (make-package "UBLOX_MSGS::AIDEPH"))

(in-package "ROS")
;;//! \htmlinclude AidEPH.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::AIDEPH"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::AIDEPH"))
(defconstant ublox_msgs::AidEPH::*CLASS_ID* 11)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::AIDEPH"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::AIDEPH"))
(defconstant ublox_msgs::AidEPH::*MESSAGE_ID* 49)
(defclass ublox_msgs::AidEPH
  :super ros::object
  :slots (_svid _how _sf1d _sf2d _sf3d ))

(defmethod ublox_msgs::AidEPH
  (:init
   (&key
    ((:svid __svid) 0)
    ((:how __how) 0)
    ((:sf1d __sf1d) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sf2d __sf2d) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sf3d __sf3d) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _svid (round __svid))
   (setq _how (round __how))
   (setq _sf1d __sf1d)
   (setq _sf2d __sf2d)
   (setq _sf3d __sf3d)
   self)
  (:svid
   (&optional __svid)
   (if __svid (setq _svid __svid)) _svid)
  (:how
   (&optional __how)
   (if __how (setq _how __how)) _how)
  (:sf1d
   (&optional __sf1d)
   (if __sf1d (setq _sf1d __sf1d)) _sf1d)
  (:sf2d
   (&optional __sf2d)
   (if __sf2d (setq _sf2d __sf2d)) _sf2d)
  (:sf3d
   (&optional __sf3d)
   (if __sf3d (setq _sf3d __sf3d)) _sf3d)
  (:serialization-length
   ()
   (+
    ;; uint32 _svid
    4
    ;; uint32 _how
    4
    ;; uint32[] _sf1d
    (* 4    (length _sf1d)) 4
    ;; uint32[] _sf2d
    (* 4    (length _sf2d)) 4
    ;; uint32[] _sf3d
    (* 4    (length _sf3d)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _svid
       (write-long _svid s)
     ;; uint32 _how
       (write-long _how s)
     ;; uint32[] _sf1d
     (write-long (length _sf1d) s)
     (dotimes (i (length _sf1d))
       (write-long (elt _sf1d i) s)
       )
     ;; uint32[] _sf2d
     (write-long (length _sf2d) s)
     (dotimes (i (length _sf2d))
       (write-long (elt _sf2d i) s)
       )
     ;; uint32[] _sf3d
     (write-long (length _sf3d) s)
     (dotimes (i (length _sf3d))
       (write-long (elt _sf3d i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _svid
     (setq _svid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _how
     (setq _how (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _sf1d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sf1d (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sf1d i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _sf2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sf2d (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sf2d i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _sf3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sf3d (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sf3d i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ublox_msgs::AidEPH :md5sum-) "796d86b27ebfe497b3a42695f2e69e13")
(setf (get ublox_msgs::AidEPH :datatype-) "ublox_msgs/AidEPH")
(setf (get ublox_msgs::AidEPH :definition-)
      "# AID-EPH (0x0B 0x31)
# GPS Aiding Ephemeris Input/Output Message
#
# All UBX-AID messages are deprecated; use UBX-MGA messages instead
# - SF1D0 to SF3D7 is only sent if ephemeris is available for this SV. If not, the payload may
#   be reduced to 8 Bytes, or all bytes are set to zero, indicating that this SV Number does
#   not have valid ephemeris for the moment. This may happen even if NAV-SVINFO and
#   RXM-SVSI are indicating ephemeris availability as the internal data may not represent the
#   content of an original broadcast ephemeris (or only parts thereof).
# - SF1D0 to SF3D7 contain the 24 words following the Hand-Over Word ( HOW ) from the
#   GPS navigation message, subframes 1 to 3. The Truncated TOW Count is not valid and
#   cannot be used. See IS-GPS-200 for a full description of the contents of the Subframes.
# - In SF1D0 to SF3D7, the parity bits have been removed, and the 24 bits of data are
#   located in Bits 0 to 23. Bits 24 to 31 shall be ignored.
# - When polled, the data contained in this message does not represent the full original
#   ephemeris broadcast. Some fields that are irrelevant to u-blox receivers may be missing.
#   The week number in Subframe 1 has already been modified to match the Time Of
#   Ephemeris (TOE).

uint8 CLASS_ID = 11
uint8 MESSAGE_ID = 49

uint32 svid             # SV ID for which this ephemeris data is 
                        # (Valid Range: 1 .. 32).
uint32 how              # Hand-Over Word of first Subframe. This is
                        # required if data is sent to the receiver.
                        # 0 indicates that no Ephemeris Data is following.

# Start of optional block
uint32[] sf1d          # Subframe 1 Words 3..10 (SF1D0..SF1D7)
uint32[] sf2d          # Subframe 2 Words 3..10 (SF2D0..SF2D7)
uint32[] sf3d          # Subframe 3 Words 3..10 (SF3D0..SF3D7)
# End of optional block

")



(provide :ublox_msgs/AidEPH "796d86b27ebfe497b3a42695f2e69e13")


