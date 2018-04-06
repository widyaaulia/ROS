; Auto-generated. Do not edit!


(cl:in-package gazebo_controller-srv)


;//! \htmlinclude position-request.msg.html

(cl:defclass <position-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0))
   (theta
    :reader theta
    :initarg :theta
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass position-request (<position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_controller-srv:<position-request> is deprecated: use gazebo_controller-srv:position-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_controller-srv:x-val is deprecated.  Use gazebo_controller-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_controller-srv:y-val is deprecated.  Use gazebo_controller-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_controller-srv:theta-val is deprecated.  Use gazebo_controller-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position-request>) ostream)
  "Serializes a message object of type '<position-request>"
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
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'theta))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position-request>) istream)
  "Deserializes a message object of type '<position-request>"
  (cl:setf (cl:slot-value msg 'x) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'theta) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'theta)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position-request>)))
  "Returns string type for a service object of type '<position-request>"
  "gazebo_controller/positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position-request)))
  "Returns string type for a service object of type 'position-request"
  "gazebo_controller/positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position-request>)))
  "Returns md5sum for a message object of type '<position-request>"
  "2229c59db5587a6b78cff67ff633281e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position-request)))
  "Returns md5sum for a message object of type 'position-request"
  "2229c59db5587a6b78cff67ff633281e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position-request>)))
  "Returns full string definition for message of type '<position-request>"
  (cl:format cl:nil "int32[4] x~%int32[4] y~%float32[4] theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position-request)))
  "Returns full string definition for message of type 'position-request"
  (cl:format cl:nil "int32[4] x~%int32[4] y~%float32[4] theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'theta) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'position-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude position-response.msg.html

(cl:defclass <position-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass position-response (<position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_controller-srv:<position-response> is deprecated: use gazebo_controller-srv:position-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_controller-srv:res-val is deprecated.  Use gazebo_controller-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position-response>) ostream)
  "Serializes a message object of type '<position-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position-response>) istream)
  "Deserializes a message object of type '<position-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position-response>)))
  "Returns string type for a service object of type '<position-response>"
  "gazebo_controller/positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position-response)))
  "Returns string type for a service object of type 'position-response"
  "gazebo_controller/positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position-response>)))
  "Returns md5sum for a message object of type '<position-response>"
  "2229c59db5587a6b78cff67ff633281e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position-response)))
  "Returns md5sum for a message object of type 'position-response"
  "2229c59db5587a6b78cff67ff633281e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position-response>)))
  "Returns full string definition for message of type '<position-response>"
  (cl:format cl:nil "bool res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position-response)))
  "Returns full string definition for message of type 'position-response"
  (cl:format cl:nil "bool res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'position-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'position)))
  'position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'position)))
  'position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position)))
  "Returns string type for a service object of type '<position>"
  "gazebo_controller/position")