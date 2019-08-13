;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetHHTTrigMode)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetHHTTrigMode (find-package "DOBOT")))
(unless (find-package "DOBOT::SETHHTTRIGMODE")
  (make-package "DOBOT::SETHHTTRIGMODE"))
(unless (find-package "DOBOT::SETHHTTRIGMODEREQUEST")
  (make-package "DOBOT::SETHHTTRIGMODEREQUEST"))
(unless (find-package "DOBOT::SETHHTTRIGMODERESPONSE")
  (make-package "DOBOT::SETHHTTRIGMODERESPONSE"))

(in-package "ROS")





(defclass dobot::SetHHTTrigModeRequest
  :super ros::object
  :slots (_tagHHTTrigMode ))

(defmethod dobot::SetHHTTrigModeRequest
  (:init
   (&key
    ((:tagHHTTrigMode __tagHHTTrigMode) 0)
    )
   (send-super :init)
   (setq _tagHHTTrigMode (round __tagHHTTrigMode))
   self)
  (:tagHHTTrigMode
   (&optional __tagHHTTrigMode)
   (if __tagHHTTrigMode (setq _tagHHTTrigMode __tagHHTTrigMode)) _tagHHTTrigMode)
  (:serialization-length
   ()
   (+
    ;; uint8 _tagHHTTrigMode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _tagHHTTrigMode
       (write-byte _tagHHTTrigMode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _tagHHTTrigMode
     (setq _tagHHTTrigMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetHHTTrigModeResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetHHTTrigModeResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetHHTTrigMode
  :super ros::object
  :slots ())

(setf (get dobot::SetHHTTrigMode :md5sum-) "856f63db51d715161eae0ac2b7d97f56")
(setf (get dobot::SetHHTTrigMode :datatype-) "dobot/SetHHTTrigMode")
(setf (get dobot::SetHHTTrigMode :request) dobot::SetHHTTrigModeRequest)
(setf (get dobot::SetHHTTrigMode :response) dobot::SetHHTTrigModeResponse)

(defmethod dobot::SetHHTTrigModeRequest
  (:response () (instance dobot::SetHHTTrigModeResponse :init)))

(setf (get dobot::SetHHTTrigModeRequest :md5sum-) "856f63db51d715161eae0ac2b7d97f56")
(setf (get dobot::SetHHTTrigModeRequest :datatype-) "dobot/SetHHTTrigModeRequest")
(setf (get dobot::SetHHTTrigModeRequest :definition-)
      "uint8 tagHHTTrigMode
---
int32 result

")

(setf (get dobot::SetHHTTrigModeResponse :md5sum-) "856f63db51d715161eae0ac2b7d97f56")
(setf (get dobot::SetHHTTrigModeResponse :datatype-) "dobot/SetHHTTrigModeResponse")
(setf (get dobot::SetHHTTrigModeResponse :definition-)
      "uint8 tagHHTTrigMode
---
int32 result

")



(provide :dobot/SetHHTTrigMode "856f63db51d715161eae0ac2b7d97f56")


