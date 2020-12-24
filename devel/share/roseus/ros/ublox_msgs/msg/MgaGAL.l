;; Auto-generated. Do not edit!


(when (boundp 'ublox_msgs::MgaGAL)
  (if (not (find-package "UBLOX_MSGS"))
    (make-package "UBLOX_MSGS"))
  (shadow 'MgaGAL (find-package "UBLOX_MSGS")))
(unless (find-package "UBLOX_MSGS::MGAGAL")
  (make-package "UBLOX_MSGS::MGAGAL"))

(in-package "ROS")
;;//! \htmlinclude MgaGAL.msg.html


(intern "*CLASS_ID*" (find-package "UBLOX_MSGS::MGAGAL"))
(shadow '*CLASS_ID* (find-package "UBLOX_MSGS::MGAGAL"))
(defconstant ublox_msgs::MgaGAL::*CLASS_ID* 19)
(intern "*MESSAGE_ID*" (find-package "UBLOX_MSGS::MGAGAL"))
(shadow '*MESSAGE_ID* (find-package "UBLOX_MSGS::MGAGAL"))
(defconstant ublox_msgs::MgaGAL::*MESSAGE_ID* 2)
(defclass ublox_msgs::MgaGAL
  :super ros::object
  :slots (_type _version _svid _reserved0 _iodNav _deltaN _m0 _e _sqrtA _omega0 _i0 _omega _omegaDot _iDot _cuc _cus _crc _crs _cic _cis _toe _af0 _af1 _af2 _sisaindexE1E5b _toc _bgdE1E5b _reserved1 _healthE1B _dataValidityE1B _healthE5b _dataValidityE5b _reserved2 ))

(defmethod ublox_msgs::MgaGAL
  (:init
   (&key
    ((:type __type) 0)
    ((:version __version) 0)
    ((:svid __svid) 0)
    ((:reserved0 __reserved0) 0)
    ((:iodNav __iodNav) 0)
    ((:deltaN __deltaN) 0)
    ((:m0 __m0) 0)
    ((:e __e) 0)
    ((:sqrtA __sqrtA) 0)
    ((:omega0 __omega0) 0)
    ((:i0 __i0) 0)
    ((:omega __omega) 0)
    ((:omegaDot __omegaDot) 0)
    ((:iDot __iDot) 0)
    ((:cuc __cuc) 0)
    ((:cus __cus) 0)
    ((:crc __crc) 0)
    ((:crs __crs) 0)
    ((:cic __cic) 0)
    ((:cis __cis) 0)
    ((:toe __toe) 0)
    ((:af0 __af0) 0)
    ((:af1 __af1) 0)
    ((:af2 __af2) 0)
    ((:sisaindexE1E5b __sisaindexE1E5b) 0)
    ((:toc __toc) 0)
    ((:bgdE1E5b __bgdE1E5b) 0)
    ((:reserved1 __reserved1) (make-array 2 :initial-element 0 :element-type :char))
    ((:healthE1B __healthE1B) 0)
    ((:dataValidityE1B __dataValidityE1B) 0)
    ((:healthE5b __healthE5b) 0)
    ((:dataValidityE5b __dataValidityE5b) 0)
    ((:reserved2 __reserved2) (make-array 4 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _version (round __version))
   (setq _svid (round __svid))
   (setq _reserved0 (round __reserved0))
   (setq _iodNav (round __iodNav))
   (setq _deltaN (round __deltaN))
   (setq _m0 (round __m0))
   (setq _e (round __e))
   (setq _sqrtA (round __sqrtA))
   (setq _omega0 (round __omega0))
   (setq _i0 (round __i0))
   (setq _omega (round __omega))
   (setq _omegaDot (round __omegaDot))
   (setq _iDot (round __iDot))
   (setq _cuc (round __cuc))
   (setq _cus (round __cus))
   (setq _crc (round __crc))
   (setq _crs (round __crs))
   (setq _cic (round __cic))
   (setq _cis (round __cis))
   (setq _toe (round __toe))
   (setq _af0 (round __af0))
   (setq _af1 (round __af1))
   (setq _af2 (round __af2))
   (setq _sisaindexE1E5b (round __sisaindexE1E5b))
   (setq _toc (round __toc))
   (setq _bgdE1E5b (round __bgdE1E5b))
   (setq _reserved1 __reserved1)
   (setq _healthE1B (round __healthE1B))
   (setq _dataValidityE1B (round __dataValidityE1B))
   (setq _healthE5b (round __healthE5b))
   (setq _dataValidityE5b (round __dataValidityE5b))
   (setq _reserved2 __reserved2)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:svid
   (&optional __svid)
   (if __svid (setq _svid __svid)) _svid)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:iodNav
   (&optional __iodNav)
   (if __iodNav (setq _iodNav __iodNav)) _iodNav)
  (:deltaN
   (&optional __deltaN)
   (if __deltaN (setq _deltaN __deltaN)) _deltaN)
  (:m0
   (&optional __m0)
   (if __m0 (setq _m0 __m0)) _m0)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:sqrtA
   (&optional __sqrtA)
   (if __sqrtA (setq _sqrtA __sqrtA)) _sqrtA)
  (:omega0
   (&optional __omega0)
   (if __omega0 (setq _omega0 __omega0)) _omega0)
  (:i0
   (&optional __i0)
   (if __i0 (setq _i0 __i0)) _i0)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:omegaDot
   (&optional __omegaDot)
   (if __omegaDot (setq _omegaDot __omegaDot)) _omegaDot)
  (:iDot
   (&optional __iDot)
   (if __iDot (setq _iDot __iDot)) _iDot)
  (:cuc
   (&optional __cuc)
   (if __cuc (setq _cuc __cuc)) _cuc)
  (:cus
   (&optional __cus)
   (if __cus (setq _cus __cus)) _cus)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:crs
   (&optional __crs)
   (if __crs (setq _crs __crs)) _crs)
  (:cic
   (&optional __cic)
   (if __cic (setq _cic __cic)) _cic)
  (:cis
   (&optional __cis)
   (if __cis (setq _cis __cis)) _cis)
  (:toe
   (&optional __toe)
   (if __toe (setq _toe __toe)) _toe)
  (:af0
   (&optional __af0)
   (if __af0 (setq _af0 __af0)) _af0)
  (:af1
   (&optional __af1)
   (if __af1 (setq _af1 __af1)) _af1)
  (:af2
   (&optional __af2)
   (if __af2 (setq _af2 __af2)) _af2)
  (:sisaindexE1E5b
   (&optional __sisaindexE1E5b)
   (if __sisaindexE1E5b (setq _sisaindexE1E5b __sisaindexE1E5b)) _sisaindexE1E5b)
  (:toc
   (&optional __toc)
   (if __toc (setq _toc __toc)) _toc)
  (:bgdE1E5b
   (&optional __bgdE1E5b)
   (if __bgdE1E5b (setq _bgdE1E5b __bgdE1E5b)) _bgdE1E5b)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:healthE1B
   (&optional __healthE1B)
   (if __healthE1B (setq _healthE1B __healthE1B)) _healthE1B)
  (:dataValidityE1B
   (&optional __dataValidityE1B)
   (if __dataValidityE1B (setq _dataValidityE1B __dataValidityE1B)) _dataValidityE1B)
  (:healthE5b
   (&optional __healthE5b)
   (if __healthE5b (setq _healthE5b __healthE5b)) _healthE5b)
  (:dataValidityE5b
   (&optional __dataValidityE5b)
   (if __dataValidityE5b (setq _dataValidityE5b __dataValidityE5b)) _dataValidityE5b)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint8 _version
    1
    ;; uint8 _svid
    1
    ;; uint8 _reserved0
    1
    ;; uint16 _iodNav
    2
    ;; int16 _deltaN
    2
    ;; int32 _m0
    4
    ;; uint32 _e
    4
    ;; uint32 _sqrtA
    4
    ;; int32 _omega0
    4
    ;; int32 _i0
    4
    ;; int32 _omega
    4
    ;; int32 _omegaDot
    4
    ;; int16 _iDot
    2
    ;; int16 _cuc
    2
    ;; int16 _cus
    2
    ;; int16 _crc
    2
    ;; int16 _crs
    2
    ;; int16 _cic
    2
    ;; int16 _cis
    2
    ;; uint16 _toe
    2
    ;; int32 _af0
    4
    ;; int32 _af1
    4
    ;; int8 _af2
    1
    ;; uint8 _sisaindexE1E5b
    1
    ;; uint16 _toc
    2
    ;; int16 _bgdE1E5b
    2
    ;; uint8[2] _reserved1
    (* 1    2)
    ;; uint8 _healthE1B
    1
    ;; uint8 _dataValidityE1B
    1
    ;; uint8 _healthE5b
    1
    ;; uint8 _dataValidityE5b
    1
    ;; uint8[4] _reserved2
    (* 1    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _version
       (write-byte _version s)
     ;; uint8 _svid
       (write-byte _svid s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint16 _iodNav
       (write-word _iodNav s)
     ;; int16 _deltaN
       (write-word _deltaN s)
     ;; int32 _m0
       (write-long _m0 s)
     ;; uint32 _e
       (write-long _e s)
     ;; uint32 _sqrtA
       (write-long _sqrtA s)
     ;; int32 _omega0
       (write-long _omega0 s)
     ;; int32 _i0
       (write-long _i0 s)
     ;; int32 _omega
       (write-long _omega s)
     ;; int32 _omegaDot
       (write-long _omegaDot s)
     ;; int16 _iDot
       (write-word _iDot s)
     ;; int16 _cuc
       (write-word _cuc s)
     ;; int16 _cus
       (write-word _cus s)
     ;; int16 _crc
       (write-word _crc s)
     ;; int16 _crs
       (write-word _crs s)
     ;; int16 _cic
       (write-word _cic s)
     ;; int16 _cis
       (write-word _cis s)
     ;; uint16 _toe
       (write-word _toe s)
     ;; int32 _af0
       (write-long _af0 s)
     ;; int32 _af1
       (write-long _af1 s)
     ;; int8 _af2
       (write-byte _af2 s)
     ;; uint8 _sisaindexE1E5b
       (write-byte _sisaindexE1E5b s)
     ;; uint16 _toc
       (write-word _toc s)
     ;; int16 _bgdE1E5b
       (write-word _bgdE1E5b s)
     ;; uint8[2] _reserved1
     (princ _reserved1 s)
     ;; uint8 _healthE1B
       (write-byte _healthE1B s)
     ;; uint8 _dataValidityE1B
       (write-byte _dataValidityE1B s)
     ;; uint8 _healthE5b
       (write-byte _healthE5b s)
     ;; uint8 _dataValidityE5b
       (write-byte _dataValidityE5b s)
     ;; uint8[4] _reserved2
     (princ _reserved2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version
     (setq _version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svid
     (setq _svid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _iodNav
     (setq _iodNav (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _deltaN
     (setq _deltaN (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _m0
     (setq _m0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _e
     (setq _e (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sqrtA
     (setq _sqrtA (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _omega0
     (setq _omega0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _i0
     (setq _i0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _omega
     (setq _omega (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _omegaDot
     (setq _omegaDot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _iDot
     (setq _iDot (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cuc
     (setq _cuc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cus
     (setq _cus (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _crc
     (setq _crc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _crs
     (setq _crs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cic
     (setq _cic (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cis
     (setq _cis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _toe
     (setq _toe (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _af0
     (setq _af0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _af1
     (setq _af1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _af2
     (setq _af2 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _af2 127) (setq _af2 (- _af2 256)))
   ;; uint8 _sisaindexE1E5b
     (setq _sisaindexE1E5b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _toc
     (setq _toc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bgdE1E5b
     (setq _bgdE1E5b (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[2] _reserved1
   (setq _reserved1 (make-array 2 :element-type :char))
   (replace _reserved1 buf :start2 ptr-) (incf ptr- 2)
   ;; uint8 _healthE1B
     (setq _healthE1B (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dataValidityE1B
     (setq _dataValidityE1B (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _healthE5b
     (setq _healthE5b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dataValidityE5b
     (setq _dataValidityE5b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[4] _reserved2
   (setq _reserved2 (make-array 4 :element-type :char))
   (replace _reserved2 buf :start2 ptr-) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ublox_msgs::MgaGAL :md5sum-) "916efe401cfebd852654e34c3cd97512")
(setf (get ublox_msgs::MgaGAL :datatype-) "ublox_msgs/MgaGAL")
(setf (get ublox_msgs::MgaGAL :definition-)
      "# MGA-GAL (0x13 0x02)
# Galileo Ephemeris Assistance
#
# This message allows the delivery of Galileo ephemeris assistance to a 
# receiver. See the description of AssistNow Online for details.
# 

uint8 CLASS_ID = 19
uint8 MESSAGE_ID = 2

uint8 type              # Message type (0x01 for this type)
uint8 version           # Message version (0x00 for this version)
uint8 svid              # Galileo Satellite identifier

uint8 reserved0         # Reserved

uint16 iodNav           # Ephemeris and clock correction issue of Data
int16 deltaN            # Mean motion difference from computed value 
                        # [semi-cir cles/s * 2^-43]
int32 m0                # Mean anomaly at reference time [semi-cir cles 2^-31]
uint32 e                # Eccentricity [2^-33]
uint32 sqrtA            # Square root of the semi-major axis [m^0.5 * 2^-19]
int32 omega0            # Longitude of ascending node of orbital plane at weekly
                        # epoch [semi-cir cles 2^-31]
int32 i0                # inclination angle at reference time 
                        # [semi-cir cles 2^-31]
int32 omega             # Argument of perigee [semi-cir cles 2^-31]
int32 omegaDot          # Rate of change of right ascension 
                        # [semi-cir cles/s 2^-43]
int16 iDot              # Rate of change of inclination angle 
                        # [semi-cir cles/s 2^-43]
int16 cuc               # Amplitude of the cosine harmonic correction term to 
                        # the argument of latitude [radians * 2^-29]
int16 cus               # Amplitude of the sine harmonic correction term to 
                        # the argument of latitude [radians * 2^-29]
int16 crc               # Amplitude of the cosine harmonic correction term 
                        # to the orbit radius [radians * 2^-5]
int16 crs               # Amplitude of the sine harmonic correction term to the 
                        # orbit radius [radians * 2^-5]
int16 cic               # Amplitude of the cosine harmonic correction term to 
                        # the angle of inclination [radians * 2^-29]
int16 cis               # Amplitude of the sine harmonic correction term to the 
                        # angle of inclination [radians * 2^-29]
uint16 toe              # Ephemeris reference time [60 * s]
int32 af0               # clock bias correction coefficient [s * 2^-34]
int32 af1               # SV clock drift correction coefficient [s/s * 2^-46]
int8 af2               # SV clock drift rate correction coefficient 
                        # [s/s^2 * 2^-59]
uint8 sisaindexE1E5b   # Signal-in-Space Accuracy index for dual frequency 
                        # E1-E5b
uint16 toc              # Clock correction data reference Time of Week [60 * s]
int16 bgdE1E5b          # E1-E5b Broadcast Group Delay

uint8[2] reserved1     # Reserved

uint8 healthE1B        # E1-B Signal Health Status
uint8 dataValidityE1B  # E1-B Data Validity Status
uint8 healthE5b        # E5b Signal Health Status
uint8 dataValidityE5b  # E5b Data Validity Status

uint8[4] reserved2     # Reserved
")



(provide :ublox_msgs/MgaGAL "916efe401cfebd852654e34c3cd97512")


