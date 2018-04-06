; Auto-generated. Do not edit!


(cl:in-package service_demo-srv)


;//! \htmlinclude two_ints-request.msg.html

(cl:defclass <two_ints-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass two_ints-request (<two_ints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <two_ints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'two_ints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_demo-srv:<two_ints-request> is deprecated: use service_demo-srv:two_ints-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <two_ints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:a-val is deprecated.  Use service_demo-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <two_ints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:b-val is deprecated.  Use service_demo-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <two_ints-request>) ostream)
  "Serializes a message object of type '<two_ints-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <two_ints-request>) istream)
  "Deserializes a message object of type '<two_ints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<two_ints-request>)))
  "Returns string type for a service object of type '<two_ints-request>"
  "service_demo/two_intsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'two_ints-request)))
  "Returns string type for a service object of type 'two_ints-request"
  "service_demo/two_intsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<two_ints-request>)))
  "Returns md5sum for a message object of type '<two_ints-request>"
  "f4ab17e216a90fce307b72981813b6f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'two_ints-request)))
  "Returns md5sum for a message object of type 'two_ints-request"
  "f4ab17e216a90fce307b72981813b6f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<two_ints-request>)))
  "Returns full string definition for message of type '<two_ints-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'two_ints-request)))
  "Returns full string definition for message of type 'two_ints-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <two_ints-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <two_ints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'two_ints-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude two_ints-response.msg.html

(cl:defclass <two_ints-response> (roslisp-msg-protocol:ros-message)
  ((sum_2ints
    :reader sum_2ints
    :initarg :sum_2ints
    :type cl:integer
    :initform 0)
   (mul_2ints
    :reader mul_2ints
    :initarg :mul_2ints
    :type cl:integer
    :initform 0)
   (sub_2ints
    :reader sub_2ints
    :initarg :sub_2ints
    :type cl:integer
    :initform 0)
   (div_2ints
    :reader div_2ints
    :initarg :div_2ints
    :type cl:float
    :initform 0.0))
)

(cl:defclass two_ints-response (<two_ints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <two_ints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'two_ints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_demo-srv:<two_ints-response> is deprecated: use service_demo-srv:two_ints-response instead.")))

(cl:ensure-generic-function 'sum_2ints-val :lambda-list '(m))
(cl:defmethod sum_2ints-val ((m <two_ints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:sum_2ints-val is deprecated.  Use service_demo-srv:sum_2ints instead.")
  (sum_2ints m))

(cl:ensure-generic-function 'mul_2ints-val :lambda-list '(m))
(cl:defmethod mul_2ints-val ((m <two_ints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:mul_2ints-val is deprecated.  Use service_demo-srv:mul_2ints instead.")
  (mul_2ints m))

(cl:ensure-generic-function 'sub_2ints-val :lambda-list '(m))
(cl:defmethod sub_2ints-val ((m <two_ints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:sub_2ints-val is deprecated.  Use service_demo-srv:sub_2ints instead.")
  (sub_2ints m))

(cl:ensure-generic-function 'div_2ints-val :lambda-list '(m))
(cl:defmethod div_2ints-val ((m <two_ints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:div_2ints-val is deprecated.  Use service_demo-srv:div_2ints instead.")
  (div_2ints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <two_ints-response>) ostream)
  "Serializes a message object of type '<two_ints-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum_2ints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mul_2ints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sub_2ints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'div_2ints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <two_ints-response>) istream)
  "Deserializes a message object of type '<two_ints-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum_2ints) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mul_2ints) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub_2ints) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'div_2ints) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<two_ints-response>)))
  "Returns string type for a service object of type '<two_ints-response>"
  "service_demo/two_intsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'two_ints-response)))
  "Returns string type for a service object of type 'two_ints-response"
  "service_demo/two_intsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<two_ints-response>)))
  "Returns md5sum for a message object of type '<two_ints-response>"
  "f4ab17e216a90fce307b72981813b6f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'two_ints-response)))
  "Returns md5sum for a message object of type 'two_ints-response"
  "f4ab17e216a90fce307b72981813b6f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<two_ints-response>)))
  "Returns full string definition for message of type '<two_ints-response>"
  (cl:format cl:nil "int64 sum_2ints~%int64 mul_2ints~%int64 sub_2ints~%float64 div_2ints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'two_ints-response)))
  "Returns full string definition for message of type 'two_ints-response"
  (cl:format cl:nil "int64 sum_2ints~%int64 mul_2ints~%int64 sub_2ints~%float64 div_2ints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <two_ints-response>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <two_ints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'two_ints-response
    (cl:cons ':sum_2ints (sum_2ints msg))
    (cl:cons ':mul_2ints (mul_2ints msg))
    (cl:cons ':sub_2ints (sub_2ints msg))
    (cl:cons ':div_2ints (div_2ints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'two_ints)))
  'two_ints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'two_ints)))
  'two_ints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'two_ints)))
  "Returns string type for a service object of type '<two_ints>"
  "service_demo/two_ints")