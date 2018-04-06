; Auto-generated. Do not edit!


(cl:in-package turtle_controll-srv)


;//! \htmlinclude pos_arr-request.msg.html

(cl:defclass <pos_arr-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:integer)
   :initform (cl:make-array 5 :element-type 'cl:integer :initial-element 0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:integer)
   :initform (cl:make-array 5 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass pos_arr-request (<pos_arr-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pos_arr-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pos_arr-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_controll-srv:<pos_arr-request> is deprecated: use turtle_controll-srv:pos_arr-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <pos_arr-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_controll-srv:x-val is deprecated.  Use turtle_controll-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <pos_arr-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_controll-srv:y-val is deprecated.  Use turtle_controll-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pos_arr-request>) ostream)
  "Serializes a message object of type '<pos_arr-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'y))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pos_arr-request>) istream)
  "Deserializes a message object of type '<pos_arr-request>"
  (cl:setf (cl:slot-value msg 'x) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i 5)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i 5)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pos_arr-request>)))
  "Returns string type for a service object of type '<pos_arr-request>"
  "turtle_controll/pos_arrRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pos_arr-request)))
  "Returns string type for a service object of type 'pos_arr-request"
  "turtle_controll/pos_arrRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pos_arr-request>)))
  "Returns md5sum for a message object of type '<pos_arr-request>"
  "6f5034cd178112665aad97185833de12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pos_arr-request)))
  "Returns md5sum for a message object of type 'pos_arr-request"
  "6f5034cd178112665aad97185833de12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pos_arr-request>)))
  "Returns full string definition for message of type '<pos_arr-request>"
  (cl:format cl:nil "int32[5] x~%int32[5] y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pos_arr-request)))
  "Returns full string definition for message of type 'pos_arr-request"
  (cl:format cl:nil "int32[5] x~%int32[5] y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pos_arr-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pos_arr-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pos_arr-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude pos_arr-response.msg.html

(cl:defclass <pos_arr-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass pos_arr-response (<pos_arr-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pos_arr-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pos_arr-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_controll-srv:<pos_arr-response> is deprecated: use turtle_controll-srv:pos_arr-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <pos_arr-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_controll-srv:res-val is deprecated.  Use turtle_controll-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pos_arr-response>) ostream)
  "Serializes a message object of type '<pos_arr-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pos_arr-response>) istream)
  "Deserializes a message object of type '<pos_arr-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pos_arr-response>)))
  "Returns string type for a service object of type '<pos_arr-response>"
  "turtle_controll/pos_arrResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pos_arr-response)))
  "Returns string type for a service object of type 'pos_arr-response"
  "turtle_controll/pos_arrResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pos_arr-response>)))
  "Returns md5sum for a message object of type '<pos_arr-response>"
  "6f5034cd178112665aad97185833de12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pos_arr-response)))
  "Returns md5sum for a message object of type 'pos_arr-response"
  "6f5034cd178112665aad97185833de12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pos_arr-response>)))
  "Returns full string definition for message of type '<pos_arr-response>"
  (cl:format cl:nil "bool res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pos_arr-response)))
  "Returns full string definition for message of type 'pos_arr-response"
  (cl:format cl:nil "bool res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pos_arr-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pos_arr-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pos_arr-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pos_arr)))
  'pos_arr-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pos_arr)))
  'pos_arr-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pos_arr)))
  "Returns string type for a service object of type '<pos_arr>"
  "turtle_controll/pos_arr")