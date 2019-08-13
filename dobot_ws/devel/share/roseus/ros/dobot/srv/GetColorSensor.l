;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetColorSensor)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetColorSensor (find-package "DOBOT")))
(unless (find-package "DOBOT::GETCOLORSENSOR")
  (make-package "DOBOT::GETCOLORSENSOR"))
(unless (find-package "DOBOT::GETCOLORSENSORREQUEST")
  (make-package "DOBOT::GETCOLORSENSORREQUEST"))
(unless (find-package "DOBOT::GETCOLORSENSORRESPONSE")
  (make-package "DOBOT::GETCOLORSENSORRESPONSE"))

(in-package "ROS")





(defclass dobot::GetColorSensorRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetColorSensorRequest
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

(defclass dobot::GetColorSensorResponse
  :super ros::object
  :slots (_result _r _g _b ))

(defmethod dobot::GetColorSensorResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetColorSensor
  :super ros::object
  :slots ())

(setf (get dobot::GetColorSensor :md5sum-) "1596aa7baed44f60a5db0d6e3455a3e9")
(setf (get dobot::GetColorSensor :datatype-) "dobot/GetColorSensor")
(setf (get dobot::GetColorSensor :request) dobot::GetColorSensorRequest)
(setf (get dobot::GetColorSensor :response) dobot::GetColorSensorResponse)

(defmethod dobot::GetColorSensorRequest
  (:response () (instance dobot::GetColorSensorResponse :init)))

(setf (get dobot::GetColorSensorRequest :md5sum-) "1596aa7baed44f60a5db0d6e3455a3e9")
(setf (get dobot::GetColorSensorRequest :datatype-) "dobot/GetColorSensorRequest")
(setf (get dobot::GetColorSensorRequest :definition-)
      "---
int32 result
uint8 r
uint8 g
uint8 b


")

(setf (get dobot::GetColorSensorResponse :md5sum-) "1596aa7baed44f60a5db0d6e3455a3e9")
(setf (get dobot::GetColorSensorResponse :datatype-) "dobot/GetColorSensorResponse")
(setf (get dobot::GetColorSensorResponse :definition-)
      "---
int32 result
uint8 r
uint8 g
uint8 b


")



(provide :dobot/GetColorSensor "1596aa7baed44f60a5db0d6e3455a3e9")


