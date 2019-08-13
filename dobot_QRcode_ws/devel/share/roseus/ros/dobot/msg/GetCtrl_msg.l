;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetCtrl_msg)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetCtrl_msg (find-package "DOBOT")))
(unless (find-package "DOBOT::GETCTRL_MSG")
  (make-package "DOBOT::GETCTRL_MSG"))

(in-package "ROS")
;;//! \htmlinclude GetCtrl_msg.msg.html


(defclass dobot::GetCtrl_msg
  :super ros::object
  :slots (_cmd ))

(defmethod dobot::GetCtrl_msg
  (:init
   (&key
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dobot::GetCtrl_msg :md5sum-) "66990e73c7aab0c47ddcdc70f7fa5bd0")
(setf (get dobot::GetCtrl_msg :datatype-) "dobot/GetCtrl_msg")
(setf (get dobot::GetCtrl_msg :definition-)
      "int32 cmd

")



(provide :dobot/GetCtrl_msg "66990e73c7aab0c47ddcdc70f7fa5bd0")


