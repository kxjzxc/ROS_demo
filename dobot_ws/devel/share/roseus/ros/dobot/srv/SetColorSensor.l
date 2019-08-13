;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetColorSensor)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetColorSensor (find-package "DOBOT")))
(unless (find-package "DOBOT::SETCOLORSENSOR")
  (make-package "DOBOT::SETCOLORSENSOR"))
(unless (find-package "DOBOT::SETCOLORSENSORREQUEST")
  (make-package "DOBOT::SETCOLORSENSORREQUEST"))
(unless (find-package "DOBOT::SETCOLORSENSORRESPONSE")
  (make-package "DOBOT::SETCOLORSENSORRESPONSE"))

(in-package "ROS")





(defclass dobot::SetColorSensorRequest
  :super ros::object
  :slots (_enableCtrl _colorPort ))

(defmethod dobot::SetColorSensorRequest
  (:init
   (&key
    ((:enableCtrl __enableCtrl) nil)
    ((:colorPort __colorPort) 0)
    )
   (send-super :init)
   (setq _enableCtrl __enableCtrl)
   (setq _colorPort (round __colorPort))
   self)
  (:enableCtrl
   (&optional __enableCtrl)
   (if __enableCtrl (setq _enableCtrl __enableCtrl)) _enableCtrl)
  (:colorPort
   (&optional __colorPort)
   (if __colorPort (setq _colorPort __colorPort)) _colorPort)
  (:serialization-length
   ()
   (+
    ;; bool _enableCtrl
    1
    ;; int32 _colorPort
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableCtrl
       (if _enableCtrl (write-byte -1 s) (write-byte 0 s))
     ;; int32 _colorPort
       (write-long _colorPort s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableCtrl
     (setq _enableCtrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _colorPort
     (setq _colorPort (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetColorSensorResponse
  :super ros::object
  :slots (_result ))

(defmethod dobot::SetColorSensorResponse
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

(defclass dobot::SetColorSensor
  :super ros::object
  :slots ())

(setf (get dobot::SetColorSensor :md5sum-) "2bf2a7c11ddc2a48c7a0f63413545e80")
(setf (get dobot::SetColorSensor :datatype-) "dobot/SetColorSensor")
(setf (get dobot::SetColorSensor :request) dobot::SetColorSensorRequest)
(setf (get dobot::SetColorSensor :response) dobot::SetColorSensorResponse)

(defmethod dobot::SetColorSensorRequest
  (:response () (instance dobot::SetColorSensorResponse :init)))

(setf (get dobot::SetColorSensorRequest :md5sum-) "2bf2a7c11ddc2a48c7a0f63413545e80")
(setf (get dobot::SetColorSensorRequest :datatype-) "dobot/SetColorSensorRequest")
(setf (get dobot::SetColorSensorRequest :definition-)
      "bool enableCtrl
int32 colorPort
---
int32 result

")

(setf (get dobot::SetColorSensorResponse :md5sum-) "2bf2a7c11ddc2a48c7a0f63413545e80")
(setf (get dobot::SetColorSensorResponse :datatype-) "dobot/SetColorSensorResponse")
(setf (get dobot::SetColorSensorResponse :definition-)
      "bool enableCtrl
int32 colorPort
---
int32 result

")



(provide :dobot/SetColorSensor "2bf2a7c11ddc2a48c7a0f63413545e80")


