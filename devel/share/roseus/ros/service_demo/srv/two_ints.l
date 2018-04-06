;; Auto-generated. Do not edit!


(when (boundp 'service_demo::two_ints)
  (if (not (find-package "SERVICE_DEMO"))
    (make-package "SERVICE_DEMO"))
  (shadow 'two_ints (find-package "SERVICE_DEMO")))
(unless (find-package "SERVICE_DEMO::TWO_INTS")
  (make-package "SERVICE_DEMO::TWO_INTS"))
(unless (find-package "SERVICE_DEMO::TWO_INTSREQUEST")
  (make-package "SERVICE_DEMO::TWO_INTSREQUEST"))
(unless (find-package "SERVICE_DEMO::TWO_INTSRESPONSE")
  (make-package "SERVICE_DEMO::TWO_INTSRESPONSE"))

(in-package "ROS")





(defclass service_demo::two_intsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod service_demo::two_intsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass service_demo::two_intsResponse
  :super ros::object
  :slots (_sum_2ints _mul_2ints _sub_2ints _div_2ints ))

(defmethod service_demo::two_intsResponse
  (:init
   (&key
    ((:sum_2ints __sum_2ints) 0)
    ((:mul_2ints __mul_2ints) 0)
    ((:sub_2ints __sub_2ints) 0)
    ((:div_2ints __div_2ints) 0.0)
    )
   (send-super :init)
   (setq _sum_2ints (round __sum_2ints))
   (setq _mul_2ints (round __mul_2ints))
   (setq _sub_2ints (round __sub_2ints))
   (setq _div_2ints (float __div_2ints))
   self)
  (:sum_2ints
   (&optional __sum_2ints)
   (if __sum_2ints (setq _sum_2ints __sum_2ints)) _sum_2ints)
  (:mul_2ints
   (&optional __mul_2ints)
   (if __mul_2ints (setq _mul_2ints __mul_2ints)) _mul_2ints)
  (:sub_2ints
   (&optional __sub_2ints)
   (if __sub_2ints (setq _sub_2ints __sub_2ints)) _sub_2ints)
  (:div_2ints
   (&optional __div_2ints)
   (if __div_2ints (setq _div_2ints __div_2ints)) _div_2ints)
  (:serialization-length
   ()
   (+
    ;; int64 _sum_2ints
    8
    ;; int64 _mul_2ints
    8
    ;; int64 _sub_2ints
    8
    ;; float64 _div_2ints
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum_2ints
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum_2ints (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum_2ints) (= (length (_sum_2ints . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum_2ints . bv) 0) 0) s)
              (write-long (ash (elt (_sum_2ints . bv) 1) -1) s))
             ((and (class _sum_2ints) (= (length (_sum_2ints . bv)) 1)) ;; big1
              (write-long (elt (_sum_2ints . bv) 0) s)
              (write-long (if (>= _sum_2ints 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum_2ints s)(write-long (if (>= _sum_2ints 0) 0 #xffffffff) s)))
     ;; int64 _mul_2ints
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mul_2ints (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mul_2ints) (= (length (_mul_2ints . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mul_2ints . bv) 0) 0) s)
              (write-long (ash (elt (_mul_2ints . bv) 1) -1) s))
             ((and (class _mul_2ints) (= (length (_mul_2ints . bv)) 1)) ;; big1
              (write-long (elt (_mul_2ints . bv) 0) s)
              (write-long (if (>= _mul_2ints 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mul_2ints s)(write-long (if (>= _mul_2ints 0) 0 #xffffffff) s)))
     ;; int64 _sub_2ints
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sub_2ints (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sub_2ints) (= (length (_sub_2ints . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sub_2ints . bv) 0) 0) s)
              (write-long (ash (elt (_sub_2ints . bv) 1) -1) s))
             ((and (class _sub_2ints) (= (length (_sub_2ints . bv)) 1)) ;; big1
              (write-long (elt (_sub_2ints . bv) 0) s)
              (write-long (if (>= _sub_2ints 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sub_2ints s)(write-long (if (>= _sub_2ints 0) 0 #xffffffff) s)))
     ;; float64 _div_2ints
       (sys::poke _div_2ints (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum_2ints
#+(or :alpha :irix6 :x86_64)
      (setf _sum_2ints (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum_2ints (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mul_2ints
#+(or :alpha :irix6 :x86_64)
      (setf _mul_2ints (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mul_2ints (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _sub_2ints
#+(or :alpha :irix6 :x86_64)
      (setf _sub_2ints (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sub_2ints (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _div_2ints
     (setq _div_2ints (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass service_demo::two_ints
  :super ros::object
  :slots ())

(setf (get service_demo::two_ints :md5sum-) "f4ab17e216a90fce307b72981813b6f5")
(setf (get service_demo::two_ints :datatype-) "service_demo/two_ints")
(setf (get service_demo::two_ints :request) service_demo::two_intsRequest)
(setf (get service_demo::two_ints :response) service_demo::two_intsResponse)

(defmethod service_demo::two_intsRequest
  (:response () (instance service_demo::two_intsResponse :init)))

(setf (get service_demo::two_intsRequest :md5sum-) "f4ab17e216a90fce307b72981813b6f5")
(setf (get service_demo::two_intsRequest :datatype-) "service_demo/two_intsRequest")
(setf (get service_demo::two_intsRequest :definition-)
      "int64 a
int64 b
---
int64 sum_2ints
int64 mul_2ints
int64 sub_2ints
float64 div_2ints

")

(setf (get service_demo::two_intsResponse :md5sum-) "f4ab17e216a90fce307b72981813b6f5")
(setf (get service_demo::two_intsResponse :datatype-) "service_demo/two_intsResponse")
(setf (get service_demo::two_intsResponse :definition-)
      "int64 a
int64 b
---
int64 sum_2ints
int64 mul_2ints
int64 sub_2ints
float64 div_2ints

")



(provide :service_demo/two_ints "f4ab17e216a90fce307b72981813b6f5")


