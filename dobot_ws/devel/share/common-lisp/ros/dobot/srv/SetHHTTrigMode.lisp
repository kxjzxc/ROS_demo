; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetHHTTrigMode-request.msg.html

(cl:defclass <SetHHTTrigMode-request> (roslisp-msg-protocol:ros-message)
  ((tagHHTTrigMode
    :reader tagHHTTrigMode
    :initarg :tagHHTTrigMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetHHTTrigMode-request (<SetHHTTrigMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHHTTrigMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHHTTrigMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetHHTTrigMode-request> is deprecated: use dobot-srv:SetHHTTrigMode-request instead.")))

(cl:ensure-generic-function 'tagHHTTrigMode-val :lambda-list '(m))
(cl:defmethod tagHHTTrigMode-val ((m <SetHHTTrigMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:tagHHTTrigMode-val is deprecated.  Use dobot-srv:tagHHTTrigMode instead.")
  (tagHHTTrigMode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHHTTrigMode-request>) ostream)
  "Serializes a message object of type '<SetHHTTrigMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tagHHTTrigMode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHHTTrigMode-request>) istream)
  "Deserializes a message object of type '<SetHHTTrigMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tagHHTTrigMode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHHTTrigMode-request>)))
  "Returns string type for a service object of type '<SetHHTTrigMode-request>"
  "dobot/SetHHTTrigModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHHTTrigMode-request)))
  "Returns string type for a service object of type 'SetHHTTrigMode-request"
  "dobot/SetHHTTrigModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHHTTrigMode-request>)))
  "Returns md5sum for a message object of type '<SetHHTTrigMode-request>"
  "856f63db51d715161eae0ac2b7d97f56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHHTTrigMode-request)))
  "Returns md5sum for a message object of type 'SetHHTTrigMode-request"
  "856f63db51d715161eae0ac2b7d97f56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHHTTrigMode-request>)))
  "Returns full string definition for message of type '<SetHHTTrigMode-request>"
  (cl:format cl:nil "uint8 tagHHTTrigMode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHHTTrigMode-request)))
  "Returns full string definition for message of type 'SetHHTTrigMode-request"
  (cl:format cl:nil "uint8 tagHHTTrigMode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHHTTrigMode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHHTTrigMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHHTTrigMode-request
    (cl:cons ':tagHHTTrigMode (tagHHTTrigMode msg))
))
;//! \htmlinclude SetHHTTrigMode-response.msg.html

(cl:defclass <SetHHTTrigMode-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetHHTTrigMode-response (<SetHHTTrigMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHHTTrigMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHHTTrigMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetHHTTrigMode-response> is deprecated: use dobot-srv:SetHHTTrigMode-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetHHTTrigMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHHTTrigMode-response>) ostream)
  "Serializes a message object of type '<SetHHTTrigMode-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHHTTrigMode-response>) istream)
  "Deserializes a message object of type '<SetHHTTrigMode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHHTTrigMode-response>)))
  "Returns string type for a service object of type '<SetHHTTrigMode-response>"
  "dobot/SetHHTTrigModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHHTTrigMode-response)))
  "Returns string type for a service object of type 'SetHHTTrigMode-response"
  "dobot/SetHHTTrigModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHHTTrigMode-response>)))
  "Returns md5sum for a message object of type '<SetHHTTrigMode-response>"
  "856f63db51d715161eae0ac2b7d97f56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHHTTrigMode-response)))
  "Returns md5sum for a message object of type 'SetHHTTrigMode-response"
  "856f63db51d715161eae0ac2b7d97f56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHHTTrigMode-response>)))
  "Returns full string definition for message of type '<SetHHTTrigMode-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHHTTrigMode-response)))
  "Returns full string definition for message of type 'SetHHTTrigMode-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHHTTrigMode-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHHTTrigMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHHTTrigMode-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetHHTTrigMode)))
  'SetHHTTrigMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetHHTTrigMode)))
  'SetHHTTrigMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHHTTrigMode)))
  "Returns string type for a service object of type '<SetHHTTrigMode>"
  "dobot/SetHHTTrigMode")