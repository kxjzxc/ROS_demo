; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetHHTTrigOutputEnabled-request.msg.html

(cl:defclass <GetHHTTrigOutputEnabled-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetHHTTrigOutputEnabled-request (<GetHHTTrigOutputEnabled-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHHTTrigOutputEnabled-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHHTTrigOutputEnabled-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHHTTrigOutputEnabled-request> is deprecated: use dobot-srv:GetHHTTrigOutputEnabled-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHHTTrigOutputEnabled-request>) ostream)
  "Serializes a message object of type '<GetHHTTrigOutputEnabled-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHHTTrigOutputEnabled-request>) istream)
  "Deserializes a message object of type '<GetHHTTrigOutputEnabled-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHHTTrigOutputEnabled-request>)))
  "Returns string type for a service object of type '<GetHHTTrigOutputEnabled-request>"
  "dobot/GetHHTTrigOutputEnabledRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigOutputEnabled-request)))
  "Returns string type for a service object of type 'GetHHTTrigOutputEnabled-request"
  "dobot/GetHHTTrigOutputEnabledRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHHTTrigOutputEnabled-request>)))
  "Returns md5sum for a message object of type '<GetHHTTrigOutputEnabled-request>"
  "fffefdf4aa925b9b5df75fa9274cb7be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHHTTrigOutputEnabled-request)))
  "Returns md5sum for a message object of type 'GetHHTTrigOutputEnabled-request"
  "fffefdf4aa925b9b5df75fa9274cb7be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHHTTrigOutputEnabled-request>)))
  "Returns full string definition for message of type '<GetHHTTrigOutputEnabled-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHHTTrigOutputEnabled-request)))
  "Returns full string definition for message of type 'GetHHTTrigOutputEnabled-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHHTTrigOutputEnabled-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHHTTrigOutputEnabled-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHHTTrigOutputEnabled-request
))
;//! \htmlinclude GetHHTTrigOutputEnabled-response.msg.html

(cl:defclass <GetHHTTrigOutputEnabled-response> (roslisp-msg-protocol:ros-message)
  ((isEnabled
    :reader isEnabled
    :initarg :isEnabled
    :type cl:boolean
    :initform cl:nil)
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass GetHHTTrigOutputEnabled-response (<GetHHTTrigOutputEnabled-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHHTTrigOutputEnabled-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHHTTrigOutputEnabled-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHHTTrigOutputEnabled-response> is deprecated: use dobot-srv:GetHHTTrigOutputEnabled-response instead.")))

(cl:ensure-generic-function 'isEnabled-val :lambda-list '(m))
(cl:defmethod isEnabled-val ((m <GetHHTTrigOutputEnabled-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isEnabled-val is deprecated.  Use dobot-srv:isEnabled instead.")
  (isEnabled m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetHHTTrigOutputEnabled-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHHTTrigOutputEnabled-response>) ostream)
  "Serializes a message object of type '<GetHHTTrigOutputEnabled-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isEnabled) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHHTTrigOutputEnabled-response>) istream)
  "Deserializes a message object of type '<GetHHTTrigOutputEnabled-response>"
    (cl:setf (cl:slot-value msg 'isEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHHTTrigOutputEnabled-response>)))
  "Returns string type for a service object of type '<GetHHTTrigOutputEnabled-response>"
  "dobot/GetHHTTrigOutputEnabledResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigOutputEnabled-response)))
  "Returns string type for a service object of type 'GetHHTTrigOutputEnabled-response"
  "dobot/GetHHTTrigOutputEnabledResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHHTTrigOutputEnabled-response>)))
  "Returns md5sum for a message object of type '<GetHHTTrigOutputEnabled-response>"
  "fffefdf4aa925b9b5df75fa9274cb7be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHHTTrigOutputEnabled-response)))
  "Returns md5sum for a message object of type 'GetHHTTrigOutputEnabled-response"
  "fffefdf4aa925b9b5df75fa9274cb7be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHHTTrigOutputEnabled-response>)))
  "Returns full string definition for message of type '<GetHHTTrigOutputEnabled-response>"
  (cl:format cl:nil "bool isEnabled~%int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHHTTrigOutputEnabled-response)))
  "Returns full string definition for message of type 'GetHHTTrigOutputEnabled-response"
  (cl:format cl:nil "bool isEnabled~%int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHHTTrigOutputEnabled-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHHTTrigOutputEnabled-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHHTTrigOutputEnabled-response
    (cl:cons ':isEnabled (isEnabled msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHHTTrigOutputEnabled)))
  'GetHHTTrigOutputEnabled-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHHTTrigOutputEnabled)))
  'GetHHTTrigOutputEnabled-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigOutputEnabled)))
  "Returns string type for a service object of type '<GetHHTTrigOutputEnabled>"
  "dobot/GetHHTTrigOutputEnabled")