; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetHHTTrigOutput-request.msg.html

(cl:defclass <GetHHTTrigOutput-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetHHTTrigOutput-request (<GetHHTTrigOutput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHHTTrigOutput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHHTTrigOutput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHHTTrigOutput-request> is deprecated: use dobot-srv:GetHHTTrigOutput-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHHTTrigOutput-request>) ostream)
  "Serializes a message object of type '<GetHHTTrigOutput-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHHTTrigOutput-request>) istream)
  "Deserializes a message object of type '<GetHHTTrigOutput-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHHTTrigOutput-request>)))
  "Returns string type for a service object of type '<GetHHTTrigOutput-request>"
  "dobot/GetHHTTrigOutputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigOutput-request)))
  "Returns string type for a service object of type 'GetHHTTrigOutput-request"
  "dobot/GetHHTTrigOutputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHHTTrigOutput-request>)))
  "Returns md5sum for a message object of type '<GetHHTTrigOutput-request>"
  "1946bbc3a20603520250b54a04604eab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHHTTrigOutput-request)))
  "Returns md5sum for a message object of type 'GetHHTTrigOutput-request"
  "1946bbc3a20603520250b54a04604eab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHHTTrigOutput-request>)))
  "Returns full string definition for message of type '<GetHHTTrigOutput-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHHTTrigOutput-request)))
  "Returns full string definition for message of type 'GetHHTTrigOutput-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHHTTrigOutput-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHHTTrigOutput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHHTTrigOutput-request
))
;//! \htmlinclude GetHHTTrigOutput-response.msg.html

(cl:defclass <GetHHTTrigOutput-response> (roslisp-msg-protocol:ros-message)
  ((isTriggered
    :reader isTriggered
    :initarg :isTriggered
    :type cl:boolean
    :initform cl:nil)
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass GetHHTTrigOutput-response (<GetHHTTrigOutput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHHTTrigOutput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHHTTrigOutput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHHTTrigOutput-response> is deprecated: use dobot-srv:GetHHTTrigOutput-response instead.")))

(cl:ensure-generic-function 'isTriggered-val :lambda-list '(m))
(cl:defmethod isTriggered-val ((m <GetHHTTrigOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isTriggered-val is deprecated.  Use dobot-srv:isTriggered instead.")
  (isTriggered m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetHHTTrigOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHHTTrigOutput-response>) ostream)
  "Serializes a message object of type '<GetHHTTrigOutput-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isTriggered) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHHTTrigOutput-response>) istream)
  "Deserializes a message object of type '<GetHHTTrigOutput-response>"
    (cl:setf (cl:slot-value msg 'isTriggered) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHHTTrigOutput-response>)))
  "Returns string type for a service object of type '<GetHHTTrigOutput-response>"
  "dobot/GetHHTTrigOutputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigOutput-response)))
  "Returns string type for a service object of type 'GetHHTTrigOutput-response"
  "dobot/GetHHTTrigOutputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHHTTrigOutput-response>)))
  "Returns md5sum for a message object of type '<GetHHTTrigOutput-response>"
  "1946bbc3a20603520250b54a04604eab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHHTTrigOutput-response)))
  "Returns md5sum for a message object of type 'GetHHTTrigOutput-response"
  "1946bbc3a20603520250b54a04604eab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHHTTrigOutput-response>)))
  "Returns full string definition for message of type '<GetHHTTrigOutput-response>"
  (cl:format cl:nil "bool isTriggered~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHHTTrigOutput-response)))
  "Returns full string definition for message of type 'GetHHTTrigOutput-response"
  (cl:format cl:nil "bool isTriggered~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHHTTrigOutput-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHHTTrigOutput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHHTTrigOutput-response
    (cl:cons ':isTriggered (isTriggered msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHHTTrigOutput)))
  'GetHHTTrigOutput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHHTTrigOutput)))
  'GetHHTTrigOutput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigOutput)))
  "Returns string type for a service object of type '<GetHHTTrigOutput>"
  "dobot/GetHHTTrigOutput")