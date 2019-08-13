;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetHHTTrigOutputEnabled)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetHHTTrigOutputEnabled (find-package "DOBOT")))
(unless (find-package "DOBOT::GETHHTTRIGOUTPUTENABLED")
  (make-package "DOBOT::GETHHTTRIGOUTPUTENABLED"))
(unless (find-package "DOBOT::GETHHTTRIGOUTPUTENABLEDREQUEST")
  (make-package "DOBOT::GETHHTTRIGOUTPUTENABLEDREQUEST"))
(unless (find-package "DOBOT::GETHHTTRIGOUTPUTENABLEDRESPONSE")
  (make-package "DOBOT::GETHHTTRIGOUTPUTENABLEDRESPONSE"))

(in-package "ROS")





(defclass dobot::GetHHTTrigOutputEnabledRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetHHTTrigOutputEnabledRequest
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

(defclass dobot::GetHHTTrigOutputEnabledResponse
  :super ros::object
  :slots (_isEnabled _result ))

(defmethod dobot::GetHHTTrigOutputEnabledResponse
  (:init
   (&key
    ((:isEnabled __isEnabled) nil)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _isEnabled __isEnabled)
   (setq _result (round __result))
   self)
  (:isEnabled
   (&optional __isEnabled)
   (if __isEnabled (setq _isEnabled __isEnabled)) _isEnabled)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _isEnabled
    1
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isEnabled
       (if _isEnabled (write-byte -1 s) (write-byte 0 s))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isEnabled
     (setq _isEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetHHTTrigOutputEnabled
  :super ros::object
  :slots ())

(setf (get dobot::GetHHTTrigOutputEnabled :md5sum-) "fffefdf4aa925b9b5df75fa9274cb7be")
(setf (get dobot::GetHHTTrigOutputEnabled :datatype-) "dobot/GetHHTTrigOutputEnabled")
(setf (get dobot::GetHHTTrigOutputEnabled :request) dobot::GetHHTTrigOutputEnabledRequest)
(setf (get dobot::GetHHTTrigOutputEnabled :response) dobot::GetHHTTrigOutputEnabledResponse)

(defmethod dobot::GetHHTTrigOutputEnabledRequest
  (:response () (instance dobot::GetHHTTrigOutputEnabledResponse :init)))

(setf (get dobot::GetHHTTrigOutputEnabledRequest :md5sum-) "fffefdf4aa925b9b5df75fa9274cb7be")
(setf (get dobot::GetHHTTrigOutputEnabledRequest :datatype-) "dobot/GetHHTTrigOutputEnabledRequest")
(setf (get dobot::GetHHTTrigOutputEnabledRequest :definition-)
      "---
bool isEnabled
int32 result


")

(setf (get dobot::GetHHTTrigOutputEnabledResponse :md5sum-) "fffefdf4aa925b9b5df75fa9274cb7be")
(setf (get dobot::GetHHTTrigOutputEnabledResponse :datatype-) "dobot/GetHHTTrigOutputEnabledResponse")
(setf (get dobot::GetHHTTrigOutputEnabledResponse :definition-)
      "---
bool isEnabled
int32 result


")



(provide :dobot/GetHHTTrigOutputEnabled "fffefdf4aa925b9b5df75fa9274cb7be")


