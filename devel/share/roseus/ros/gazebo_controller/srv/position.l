;; Auto-generated. Do not edit!


(when (boundp 'gazebo_controller::position)
  (if (not (find-package "GAZEBO_CONTROLLER"))
    (make-package "GAZEBO_CONTROLLER"))
  (shadow 'position (find-package "GAZEBO_CONTROLLER")))
(unless (find-package "GAZEBO_CONTROLLER::POSITION")
  (make-package "GAZEBO_CONTROLLER::POSITION"))
(unless (find-package "GAZEBO_CONTROLLER::POSITIONREQUEST")
  (make-package "GAZEBO_CONTROLLER::POSITIONREQUEST"))
(unless (find-package "GAZEBO_CONTROLLER::POSITIONRESPONSE")
  (make-package "GAZEBO_CONTROLLER::POSITIONRESPONSE"))

(in-package "ROS")





(defclass gazebo_controller::positionRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod gazebo_controller::positionRequest
  (:init
   (&key
    ((:x __x) (make-array 4 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 4 :initial-element 0 :element-type :integer))
    ((:theta __theta) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _theta __theta)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; int32[4] _x
    (* 4    4)
    ;; int32[4] _y
    (* 4    4)
    ;; float32[4] _theta
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[4] _x
     (dotimes (i 4)
       (write-long (elt _x i) s)
       )
     ;; int32[4] _y
     (dotimes (i 4)
       (write-long (elt _y i) s)
       )
     ;; float32[4] _theta
     (dotimes (i 4)
       (sys::poke (elt _theta i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[4] _x
   (dotimes (i (length _x))
     (setf (elt _x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32[4] _y
   (dotimes (i (length _y))
     (setf (elt _y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; float32[4] _theta
   (dotimes (i (length _theta))
     (setf (elt _theta i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass gazebo_controller::positionResponse
  :super ros::object
  :slots (_res ))

(defmethod gazebo_controller::positionResponse
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

(defclass gazebo_controller::position
  :super ros::object
  :slots ())

(setf (get gazebo_controller::position :md5sum-) "2229c59db5587a6b78cff67ff633281e")
(setf (get gazebo_controller::position :datatype-) "gazebo_controller/position")
(setf (get gazebo_controller::position :request) gazebo_controller::positionRequest)
(setf (get gazebo_controller::position :response) gazebo_controller::positionResponse)

(defmethod gazebo_controller::positionRequest
  (:response () (instance gazebo_controller::positionResponse :init)))

(setf (get gazebo_controller::positionRequest :md5sum-) "2229c59db5587a6b78cff67ff633281e")
(setf (get gazebo_controller::positionRequest :datatype-) "gazebo_controller/positionRequest")
(setf (get gazebo_controller::positionRequest :definition-)
      "int32[4] x
int32[4] y
float32[4] theta
---
bool res
")

(setf (get gazebo_controller::positionResponse :md5sum-) "2229c59db5587a6b78cff67ff633281e")
(setf (get gazebo_controller::positionResponse :datatype-) "gazebo_controller/positionResponse")
(setf (get gazebo_controller::positionResponse :definition-)
      "int32[4] x
int32[4] y
float32[4] theta
---
bool res
")



(provide :gazebo_controller/position "2229c59db5587a6b78cff67ff633281e")


