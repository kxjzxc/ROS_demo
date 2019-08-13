; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetHHTTrigMode-request.msg.html

(cl:defclass <GetHHTTrigMode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetHHTTrigMode-request (<GetHHTTrigMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHHTTrigMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHHTTrigMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHHTTrigMode-request> is deprecated: use dobot-srv:GetHHTTrigMode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHHTTrigMode-request>) ostream)
  "Serializes a message object of type '<GetHHTTrigMode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHHTTrigMode-request>) istream)
  "Deserializes a message object of type '<GetHHTTrigMode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHHTTrigMode-request>)))
  "Returns string type for a service object of type '<GetHHTTrigMode-request>"
  "dobot/GetHHTTrigModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigMode-request)))
  "Returns string type for a service object of type 'GetHHTTrigMode-request"
  "dobot/GetHHTTrigModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHHTTrigMode-request>)))
  "Returns md5sum for a message object of type '<GetHHTTrigMode-request>"
  "1abcbcf9addf5b1ea080766e6d75545f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHHTTrigMode-request)))
  "Returns md5sum for a message object of type 'GetHHTTrigMode-request"
  "1abcbcf9addf5b1ea080766e6d75545f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHHTTrigMode-request>)))
  "Returns full string definition for message of type '<GetHHTTrigMode-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHHTTrigMode-request)))
  "Returns full string definition for message of type 'GetHHTTrigMode-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHHTTrigMode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHHTTrigMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHHTTrigMode-request
))
;//! \htmlinclude GetHHTTrigMode-response.msg.html

(cl:defclass <GetHHTTrigMode-response> (roslisp-msg-protocol:ros-message)
  ((tagHHTTrigMode
    :reader tagHHTTrigMode
    :initarg :tagHHTTrigMode
    :type cl:fixnum
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass GetHHTTrigMode-response (<GetHHTTrigMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHHTTrigMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHHTTrigMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHHTTrigMode-response> is deprecated: use dobot-srv:GetHHTTrigMode-response instead.")))

(cl:ensure-generic-function 'tagHHTTrigMode-val :lambda-list '(m))
(cl:defmethod tagHHTTrigMode-val ((m <GetHHTTrigMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:tagHHTTrigMode-val is deprecated.  Use dobot-srv:tagHHTTrigMode instead.")
  (tagHHTTrigMode m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetHHTTrigMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHHTTrigMode-response>) ostream)
  "Serializes a message object of type '<GetHHTTrigMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tagHHTTrigMode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHHTTrigMode-response>) istream)
  "Deserializes a message object of type '<GetHHTTrigMode-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tagHHTTrigMode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHHTTrigMode-response>)))
  "Returns string type for a service object of type '<GetHHTTrigMode-response>"
  "dobot/GetHHTTrigModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigMode-response)))
  "Returns string type for a service object of type 'GetHHTTrigMode-response"
  "dobot/GetHHTTrigModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHHTTrigMode-response>)))
  "Returns md5sum for a message object of type '<GetHHTTrigMode-response>"
  "1abcbcf9addf5b1ea080766e6d75545f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHHTTrigMode-response)))
  "Returns md5sum for a message object of type 'GetHHTTrigMode-response"
  "1abcbcf9addf5b1ea080766e6d75545f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHHTTrigMode-response>)))
  "Returns full string definition for message of type '<GetHHTTrigMode-response>"
  (cl:format cl:nil "uint8 tagHHTTrigMode~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHHTTrigMode-response)))
  "Returns full string definition for message of type 'GetHHTTrigMode-response"
  (cl:format cl:nil "uint8 tagHHTTrigMode~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHHTTrigMode-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHHTTrigMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHHTTrigMode-response
    (cl:cons ':tagHHTTrigMode (tagHHTTrigMode msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHHTTrigMode)))
  'GetHHTTrigMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHHTTrigMode)))
  'GetHHTTrigMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHHTTrigMode)))
  "Returns string type for a service object of type '<GetHHTTrigMode>"
  "dobot/GetHHTTrigMode")