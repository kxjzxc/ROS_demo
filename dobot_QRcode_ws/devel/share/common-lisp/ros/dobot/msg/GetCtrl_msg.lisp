; Auto-generated. Do not edit!


(cl:in-package dobot-msg)


;//! \htmlinclude GetCtrl_msg.msg.html

(cl:defclass <GetCtrl_msg> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass GetCtrl_msg (<GetCtrl_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCtrl_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCtrl_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-msg:<GetCtrl_msg> is deprecated: use dobot-msg:GetCtrl_msg instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <GetCtrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-msg:cmd-val is deprecated.  Use dobot-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCtrl_msg>) ostream)
  "Serializes a message object of type '<GetCtrl_msg>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCtrl_msg>) istream)
  "Deserializes a message object of type '<GetCtrl_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCtrl_msg>)))
  "Returns string type for a message object of type '<GetCtrl_msg>"
  "dobot/GetCtrl_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCtrl_msg)))
  "Returns string type for a message object of type 'GetCtrl_msg"
  "dobot/GetCtrl_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCtrl_msg>)))
  "Returns md5sum for a message object of type '<GetCtrl_msg>"
  "66990e73c7aab0c47ddcdc70f7fa5bd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCtrl_msg)))
  "Returns md5sum for a message object of type 'GetCtrl_msg"
  "66990e73c7aab0c47ddcdc70f7fa5bd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCtrl_msg>)))
  "Returns full string definition for message of type '<GetCtrl_msg>"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCtrl_msg)))
  "Returns full string definition for message of type 'GetCtrl_msg"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCtrl_msg>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCtrl_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCtrl_msg
    (cl:cons ':cmd (cmd msg))
))
