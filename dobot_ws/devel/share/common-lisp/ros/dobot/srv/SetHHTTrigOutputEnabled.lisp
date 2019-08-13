; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetHHTTrigOutputEnabled-request.msg.html

(cl:defclass <SetHHTTrigOutputEnabled-request> (roslisp-msg-protocol:ros-message)
  ((isEnabled
    :reader isEnabled
    :initarg :isEnabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetHHTTrigOutputEnabled-request (<SetHHTTrigOutputEnabled-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHHTTrigOutputEnabled-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHHTTrigOutputEnabled-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetHHTTrigOutputEnabled-request> is deprecated: use dobot-srv:SetHHTTrigOutputEnabled-request instead.")))

(cl:ensure-generic-function 'isEnabled-val :lambda-list '(m))
(cl:defmethod isEnabled-val ((m <SetHHTTrigOutputEnabled-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isEnabled-val is deprecated.  Use dobot-srv:isEnabled instead.")
  (isEnabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHHTTrigOutputEnabled-request>) ostream)
  "Serializes a message object of type '<SetHHTTrigOutputEnabled-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isEnabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHHTTrigOutputEnabled-request>) istream)
  "Deserializes a message object of type '<SetHHTTrigOutputEnabled-request>"
    (cl:setf (cl:slot-value msg 'isEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHHTTrigOutputEnabled-request>)))
  "Returns string type for a service object of type '<SetHHTTrigOutputEnabled-request>"
  "dobot/SetHHTTrigOutputEnabledRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHHTTrigOutputEnabled-request)))
  "Returns string type for a service object of type 'SetHHTTrigOutputEnabled-request"
  "dobot/SetHHTTrigOutputEnabledRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHHTTrigOutputEnabled-request>)))
  "Returns md5sum for a message object of type '<SetHHTTrigOutputEnabled-request>"
  "39404d9e9bcc553c4bcaae6963186b7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHHTTrigOutputEnabled-request)))
  "Returns md5sum for a message object of type 'SetHHTTrigOutputEnabled-request"
  "39404d9e9bcc553c4bcaae6963186b7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHHTTrigOutputEnabled-request>)))
  "Returns full string definition for message of type '<SetHHTTrigOutputEnabled-request>"
  (cl:format cl:nil "bool isEnabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHHTTrigOutputEnabled-request)))
  "Returns full string definition for message of type 'SetHHTTrigOutputEnabled-request"
  (cl:format cl:nil "bool isEnabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHHTTrigOutputEnabled-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHHTTrigOutputEnabled-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHHTTrigOutputEnabled-request
    (cl:cons ':isEnabled (isEnabled msg))
))
;//! \htmlinclude SetHHTTrigOutputEnabled-response.msg.html

(cl:defclass <SetHHTTrigOutputEnabled-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetHHTTrigOutputEnabled-response (<SetHHTTrigOutputEnabled-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHHTTrigOutputEnabled-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHHTTrigOutputEnabled-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetHHTTrigOutputEnabled-response> is deprecated: use dobot-srv:SetHHTTrigOutputEnabled-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetHHTTrigOutputEnabled-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHHTTrigOutputEnabled-response>) ostream)
  "Serializes a message object of type '<SetHHTTrigOutputEnabled-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHHTTrigOutputEnabled-response>) istream)
  "Deserializes a message object of type '<SetHHTTrigOutputEnabled-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHHTTrigOutputEnabled-response>)))
  "Returns string type for a service object of type '<SetHHTTrigOutputEnabled-response>"
  "dobot/SetHHTTrigOutputEnabledResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHHTTrigOutputEnabled-response)))
  "Returns string type for a service object of type 'SetHHTTrigOutputEnabled-response"
  "dobot/SetHHTTrigOutputEnabledResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHHTTrigOutputEnabled-response>)))
  "Returns md5sum for a message object of type '<SetHHTTrigOutputEnabled-response>"
  "39404d9e9bcc553c4bcaae6963186b7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHHTTrigOutputEnabled-response)))
  "Returns md5sum for a message object of type 'SetHHTTrigOutputEnabled-response"
  "39404d9e9bcc553c4bcaae6963186b7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHHTTrigOutputEnabled-response>)))
  "Returns full string definition for message of type '<SetHHTTrigOutputEnabled-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHHTTrigOutputEnabled-response)))
  "Returns full string definition for message of type 'SetHHTTrigOutputEnabled-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHHTTrigOutputEnabled-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHHTTrigOutputEnabled-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHHTTrigOutputEnabled-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetHHTTrigOutputEnabled)))
  'SetHHTTrigOutputEnabled-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetHHTTrigOutputEnabled)))
  'SetHHTTrigOutputEnabled-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHHTTrigOutputEnabled)))
  "Returns string type for a service object of type '<SetHHTTrigOutputEnabled>"
  "dobot/SetHHTTrigOutputEnabled")