;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetHHTTrigOutput)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetHHTTrigOutput (find-package "DOBOT")))
(unless (find-package "DOBOT::GETHHTTRIGOUTPUT")
  (make-package "DOBOT::GETHHTTRIGOUTPUT"))
(unless (find-package "DOBOT::GETHHTTRIGOUTPUTREQUEST")
  (make-package "DOBOT::GETHHTTRIGOUTPUTREQUEST"))
(unless (find-package "DOBOT::GETHHTTRIGOUTPUTRESPONSE")
  (make-package "DOBOT::GETHHTTRIGOUTPUTRESPONSE"))

(in-package "ROS")





(defclass dobot::GetHHTTrigOutputRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetHHTTrigOutputRequest
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

(defclass dobot::GetHHTTrigOutputResponse
  :super ros::object
  :slots (_isTriggered _result ))

(defmethod dobot::GetHHTTrigOutputResponse
  (:init
   (&key
    ((:isTriggered __isTriggered) nil)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _isTriggered __isTriggered)
   (setq _result (round __result))
   self)
  (:isTriggered
   (&optional __isTriggered)
   (if __isTriggered (setq _isTriggered __isTriggered)) _isTriggered)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _isTriggered
    1
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isTriggered
       (if _isTriggered (write-byte -1 s) (write-byte 0 s))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isTriggered
     (setq _isTriggered (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetHHTTrigOutput
  :super ros::object
  :slots ())

(setf (get dobot::GetHHTTrigOutput :md5sum-) "1946bbc3a20603520250b54a04604eab")
(setf (get dobot::GetHHTTrigOutput :datatype-) "dobot/GetHHTTrigOutput")
(setf (get dobot::GetHHTTrigOutput :request) dobot::GetHHTTrigOutputRequest)
(setf (get dobot::GetHHTTrigOutput :response) dobot::GetHHTTrigOutputResponse)

(defmethod dobot::GetHHTTrigOutputRequest
  (:response () (instance dobot::GetHHTTrigOutputResponse :init)))

(setf (get dobot::GetHHTTrigOutputRequest :md5sum-) "1946bbc3a20603520250b54a04604eab")
(setf (get dobot::GetHHTTrigOutputRequest :datatype-) "dobot/GetHHTTrigOutputRequest")
(setf (get dobot::GetHHTTrigOutputRequest :definition-)
      "---
bool isTriggered
int32 result

")

(setf (get dobot::GetHHTTrigOutputResponse :md5sum-) "1946bbc3a20603520250b54a04604eab")
(setf (get dobot::GetHHTTrigOutputResponse :datatype-) "dobot/GetHHTTrigOutputResponse")
(setf (get dobot::GetHHTTrigOutputResponse :definition-)
      "---
bool isTriggered
int32 result

")



(provide :dobot/GetHHTTrigOutput "1946bbc3a20603520250b54a04604eab")


