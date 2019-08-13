;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetInfraredSensor)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetInfraredSensor (find-package "DOBOT")))
(unless (find-package "DOBOT::SETINFRAREDSENSOR")
  (make-package "DOBOT::SETINFRAREDSENSOR"))
(unless (find-package "DOBOT::SETINFRAREDSENSORREQUEST")
  (make-package "DOBOT::SETINFRAREDSENSORREQUEST"))
(unless (find-package "DOBOT::SETINFRAREDSENSORRESPONSE")
  (make-package "DOBOT::SETINFRAREDSENSORRESPONSE"))

(in-package "ROS")





(defclass dobot::SetInfraredSensorRequest
  :super ros::object
  :slots (_enableCtrl _infraredPort ))

(defmethod dobot::SetInfraredSensorRequest
  (:init
   (&key
    ((:enableCtrl __enableCtrl) nil)
    ((:infraredPort __infraredPort) 0)
    )
   (send-super :init)
   (setq _enableCtrl __enableCtrl)
   (setq _infraredPort (round __infraredPort))
   self)
  (:enableCtrl
   (&optional __enableCtrl)
   (if __enableCtrl (setq _enableCtrl __enableCtrl)) _enableCtrl)
  (:infraredPort
   (&optional __infraredPort)
   (if __infraredPort (setq _infraredPort __infraredPort)) _infraredPort)
  (:serialization-length
   ()
   (+
    ;; bool _enableCtrl
    1
    ;; int32 _infraredPort
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableCtrl
       (if _enableCtrl (write-byte -1 s) (write-byte 0 s))
     ;; int32 _infraredPort
       (write-long _infraredPort s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableCtrl
     (setq _enableCtrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _infraredPort
     (setq _infraredPort (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetInfraredSensorResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetInfraredSensorResponse
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

(defclass dobot::SetInfraredSensor
  :super ros::object
  :slots ())

(setf (get dobot::SetInfraredSensor :md5sum-) "f61943865f4576071c9ab368cf70a25d")
(setf (get dobot::SetInfraredSensor :datatype-) "dobot/SetInfraredSensor")
(setf (get dobot::SetInfraredSensor :request) dobot::SetInfraredSensorRequest)
(setf (get dobot::SetInfraredSensor :response) dobot::SetInfraredSensorResponse)

(defmethod dobot::SetInfraredSensorRequest
  (:response () (instance dobot::SetInfraredSensorResponse :init)))

(setf (get dobot::SetInfraredSensorRequest :md5sum-) "f61943865f4576071c9ab368cf70a25d")
(setf (get dobot::SetInfraredSensorRequest :datatype-) "dobot/SetInfraredSensorRequest")
(setf (get dobot::SetInfraredSensorRequest :definition-)
      "bool enableCtrl
int32 infraredPort
---
int32 result

")

(setf (get dobot::SetInfraredSensorResponse :md5sum-) "f61943865f4576071c9ab368cf70a25d")
(setf (get dobot::SetInfraredSensorResponse :datatype-) "dobot/SetInfraredSensorResponse")
(setf (get dobot::SetInfraredSensorResponse :definition-)
      "bool enableCtrl
int32 infraredPort
---
int32 result

")



(provide :dobot/SetInfraredSensor "f61943865f4576071c9ab368cf70a25d")


