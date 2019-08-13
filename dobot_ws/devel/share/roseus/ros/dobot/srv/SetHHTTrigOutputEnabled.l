;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetHHTTrigOutputEnabled)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetHHTTrigOutputEnabled (find-package "DOBOT")))
(unless (find-package "DOBOT::SETHHTTRIGOUTPUTENABLED")
  (make-package "DOBOT::SETHHTTRIGOUTPUTENABLED"))
(unless (find-package "DOBOT::SETHHTTRIGOUTPUTENABLEDREQUEST")
  (make-package "DOBOT::SETHHTTRIGOUTPUTENABLEDREQUEST"))
(unless (find-package "DOBOT::SETHHTTRIGOUTPUTENABLEDRESPONSE")
  (make-package "DOBOT::SETHHTTRIGOUTPUTENABLEDRESPONSE"))

(in-package "ROS")





(defclass dobot::SetHHTTrigOutputEnabledRequest
  :super ros::object
  :slots (_isEnabled ))

(defmethod dobot::SetHHTTrigOutputEnabledRequest
  (:init
   (&key
    ((:isEnabled __isEnabled) nil)
    )
   (send-super :init)
   (setq _isEnabled __isEnabled)
   self)
  (:isEnabled
   (&optional __isEnabled)
   (if __isEnabled (setq _isEnabled __isEnabled)) _isEnabled)
  (:serialization-length
   ()
   (+
    ;; bool _isEnabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isEnabled
       (if _isEnabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isEnabled
     (setq _isEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetHHTTrigOutputEnabledResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetHHTTrigOutputEnabledResponse
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

(defclass dobot::SetHHTTrigOutputEnabled
  :super ros::object
  :slots ())

(setf (get dobot::SetHHTTrigOutputEnabled :md5sum-) "39404d9e9bcc553c4bcaae6963186b7e")
(setf (get dobot::SetHHTTrigOutputEnabled :datatype-) "dobot/SetHHTTrigOutputEnabled")
(setf (get dobot::SetHHTTrigOutputEnabled :request) dobot::SetHHTTrigOutputEnabledRequest)
(setf (get dobot::SetHHTTrigOutputEnabled :response) dobot::SetHHTTrigOutputEnabledResponse)

(defmethod dobot::SetHHTTrigOutputEnabledRequest
  (:response () (instance dobot::SetHHTTrigOutputEnabledResponse :init)))

(setf (get dobot::SetHHTTrigOutputEnabledRequest :md5sum-) "39404d9e9bcc553c4bcaae6963186b7e")
(setf (get dobot::SetHHTTrigOutputEnabledRequest :datatype-) "dobot/SetHHTTrigOutputEnabledRequest")
(setf (get dobot::SetHHTTrigOutputEnabledRequest :definition-)
      "bool isEnabled
---
int32 result

")

(setf (get dobot::SetHHTTrigOutputEnabledResponse :md5sum-) "39404d9e9bcc553c4bcaae6963186b7e")
(setf (get dobot::SetHHTTrigOutputEnabledResponse :datatype-) "dobot/SetHHTTrigOutputEnabledResponse")
(setf (get dobot::SetHHTTrigOutputEnabledResponse :definition-)
      "bool isEnabled
---
int32 result

")



(provide :dobot/SetHHTTrigOutputEnabled "39404d9e9bcc553c4bcaae6963186b7e")


