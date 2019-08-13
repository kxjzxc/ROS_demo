;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetHHTTrigMode)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetHHTTrigMode (find-package "DOBOT")))
(unless (find-package "DOBOT::GETHHTTRIGMODE")
  (make-package "DOBOT::GETHHTTRIGMODE"))
(unless (find-package "DOBOT::GETHHTTRIGMODEREQUEST")
  (make-package "DOBOT::GETHHTTRIGMODEREQUEST"))
(unless (find-package "DOBOT::GETHHTTRIGMODERESPONSE")
  (make-package "DOBOT::GETHHTTRIGMODERESPONSE"))

(in-package "ROS")





(defclass dobot::GetHHTTrigModeRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetHHTTrigModeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dobot::GetHHTTrigModeResponse
  :super ros::object
  :slots (_tagHHTTrigMode _result ))

(defmethod dobot::GetHHTTrigModeResponse
  (:init
   (&key
    ((:tagHHTTrigMode __tagHHTTrigMode) 0)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _tagHHTTrigMode (round __tagHHTTrigMode))
   (setq _result (round __result))
   self)
  (:tagHHTTrigMode
   (&optional __tagHHTTrigMode)
   (if __tagHHTTrigMode (setq _tagHHTTrigMode __tagHHTTrigMode)) _tagHHTTrigMode)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _tagHHTTrigMode
    1
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _tagHHTTrigMode
       (write-byte _tagHHTTrigMode s)
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _tagHHTTrigMode
     (setq _tagHHTTrigMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetHHTTrigMode
  :super ros::object
  :slots ())

(setf (get dobot::GetHHTTrigMode :md5sum-) "1abcbcf9addf5b1ea080766e6d75545f")
(setf (get dobot::GetHHTTrigMode :datatype-) "dobot/GetHHTTrigMode")
(setf (get dobot::GetHHTTrigMode :request) dobot::GetHHTTrigModeRequest)
(setf (get dobot::GetHHTTrigMode :response) dobot::GetHHTTrigModeResponse)

(defmethod dobot::GetHHTTrigModeRequest
  (:response () (instance dobot::GetHHTTrigModeResponse :init)))

(setf (get dobot::GetHHTTrigModeRequest :md5sum-) "1abcbcf9addf5b1ea080766e6d75545f")
(setf (get dobot::GetHHTTrigModeRequest :datatype-) "dobot/GetHHTTrigModeRequest")
(setf (get dobot::GetHHTTrigModeRequest :definition-)
      "---
uint8 tagHHTTrigMode
int32 result

")

(setf (get dobot::GetHHTTrigModeResponse :md5sum-) "1abcbcf9addf5b1ea080766e6d75545f")
(setf (get dobot::GetHHTTrigModeResponse :datatype-) "dobot/GetHHTTrigModeResponse")
(setf (get dobot::GetHHTTrigModeResponse :definition-)
      "---
uint8 tagHHTTrigMode
int32 result

")



(provide :dobot/GetHHTTrigMode "1abcbcf9addf5b1ea080766e6d75545f")


