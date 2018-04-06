;; Auto-generated. Do not edit!


(when (boundp 'turtle_controll::pos_arr)
  (if (not (find-package "TURTLE_CONTROLL"))
    (make-package "TURTLE_CONTROLL"))
  (shadow 'pos_arr (find-package "TURTLE_CONTROLL")))
(unless (find-package "TURTLE_CONTROLL::POS_ARR")
  (make-package "TURTLE_CONTROLL::POS_ARR"))
(unless (find-package "TURTLE_CONTROLL::POS_ARRREQUEST")
  (make-package "TURTLE_CONTROLL::POS_ARRREQUEST"))
(unless (find-package "TURTLE_CONTROLL::POS_ARRRESPONSE")
  (make-package "TURTLE_CONTROLL::POS_ARRRESPONSE"))

(in-package "ROS")





(defclass turtle_controll::pos_arrRequest
  :super ros::object
  :slots (_x _y ))

(defmethod turtle_controll::pos_arrRequest
  (:init
   (&key
    ((:x __x) (make-array 5 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 5 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32[5] _x
    (* 4    5)
    ;; int32[5] _y
    (* 4    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[5] _x
     (dotimes (i 5)
       (write-long (elt _x i) s)
       )
     ;; int32[5] _y
     (dotimes (i 5)
       (write-long (elt _y i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[5] _x
   (dotimes (i (length _x))
     (setf (elt _x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32[5] _y
   (dotimes (i (length _y))
     (setf (elt _y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass turtle_controll::pos_arrResponse
  :super ros::object
  :slots (_res ))

(defmethod turtle_controll::pos_arrResponse
  (:init
   (&key
    ((:res __res) nil)
    )
   (send-super :init)
   (setq _res __res)
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; bool _res
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _res
       (if _res (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _res
     (setq _res (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtle_controll::pos_arr
  :super ros::object
  :slots ())

(setf (get turtle_controll::pos_arr :md5sum-) "6f5034cd178112665aad97185833de12")
(setf (get turtle_controll::pos_arr :datatype-) "turtle_controll/pos_arr")
(setf (get turtle_controll::pos_arr :request) turtle_controll::pos_arrRequest)
(setf (get turtle_controll::pos_arr :response) turtle_controll::pos_arrResponse)

(defmethod turtle_controll::pos_arrRequest
  (:response () (instance turtle_controll::pos_arrResponse :init)))

(setf (get turtle_controll::pos_arrRequest :md5sum-) "6f5034cd178112665aad97185833de12")
(setf (get turtle_controll::pos_arrRequest :datatype-) "turtle_controll/pos_arrRequest")
(setf (get turtle_controll::pos_arrRequest :definition-)
      "int32[5] x
int32[5] y
---
bool res
")

(setf (get turtle_controll::pos_arrResponse :md5sum-) "6f5034cd178112665aad97185833de12")
(setf (get turtle_controll::pos_arrResponse :datatype-) "turtle_controll/pos_arrResponse")
(setf (get turtle_controll::pos_arrResponse :definition-)
      "int32[5] x
int32[5] y
---
bool res
")



(provide :turtle_controll/pos_arr "6f5034cd178112665aad97185833de12")


