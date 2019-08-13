; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetColorSensor-request.msg.html

(cl:defclass <GetColorSensor-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetColorSensor-request (<GetColorSensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetColorSensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetColorSensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetColorSensor-request> is deprecated: use dobot-srv:GetColorSensor-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetColorSensor-request>) ostream)
  "Serializes a message object of type '<GetColorSensor-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetColorSensor-request>) istream)
  "Deserializes a message object of type '<GetColorSensor-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetColorSensor-request>)))
  "Returns string type for a service object of type '<GetColorSensor-request>"
  "dobot/GetColorSensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetColorSensor-request)))
  "Returns string type for a service object of type 'GetColorSensor-request"
  "dobot/GetColorSensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetColorSensor-request>)))
  "Returns md5sum for a message object of type '<GetColorSensor-request>"
  "1596aa7baed44f60a5db0d6e3455a3e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetColorSensor-request)))
  "Returns md5sum for a message object of type 'GetColorSensor-request"
  "1596aa7baed44f60a5db0d6e3455a3e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetColorSensor-request>)))
  "Returns full string definition for message of type '<GetColorSensor-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetColorSensor-request)))
  "Returns full string definition for message of type 'GetColorSensor-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetColorSensor-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetColorSensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetColorSensor-request
))
;//! \htmlinclude GetColorSensor-response.msg.html

(cl:defclass <GetColorSensor-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type cl:fixnum
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetColorSensor-response (<GetColorSensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetColorSensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetColorSensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetColorSensor-response> is deprecated: use dobot-srv:GetColorSensor-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetColorSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <GetColorSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:r-val is deprecated.  Use dobot-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <GetColorSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:g-val is deprecated.  Use dobot-srv:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <GetColorSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:b-val is deprecated.  Use dobot-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetColorSensor-response>) ostream)
  "Serializes a message object of type '<GetColorSensor-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetColorSensor-response>) istream)
  "Deserializes a message object of type '<GetColorSensor-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetColorSensor-response>)))
  "Returns string type for a service object of type '<GetColorSensor-response>"
  "dobot/GetColorSensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetColorSensor-response)))
  "Returns string type for a service object of type 'GetColorSensor-response"
  "dobot/GetColorSensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetColorSensor-response>)))
  "Returns md5sum for a message object of type '<GetColorSensor-response>"
  "1596aa7baed44f60a5db0d6e3455a3e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetColorSensor-response)))
  "Returns md5sum for a message object of type 'GetColorSensor-response"
  "1596aa7baed44f60a5db0d6e3455a3e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetColorSensor-response>)))
  "Returns full string definition for message of type '<GetColorSensor-response>"
  (cl:format cl:nil "int32 result~%uint8 r~%uint8 g~%uint8 b~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetColorSensor-response)))
  "Returns full string definition for message of type 'GetColorSensor-response"
  (cl:format cl:nil "int32 result~%uint8 r~%uint8 g~%uint8 b~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetColorSensor-response>))
  (cl:+ 0
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetColorSensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetColorSensor-response
    (cl:cons ':result (result msg))
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetColorSensor)))
  'GetColorSensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetColorSensor)))
  'GetColorSensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetColorSensor)))
  "Returns string type for a service object of type '<GetColorSensor>"
  "dobot/GetColorSensor")