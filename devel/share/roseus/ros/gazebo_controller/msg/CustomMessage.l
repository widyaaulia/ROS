;; Auto-generated. Do not edit!


(when (boundp 'gazebo_controller::CustomMessage)
  (if (not (find-package "GAZEBO_CONTROLLER"))
    (make-package "GAZEBO_CONTROLLER"))
  (shadow 'CustomMessage (find-package "GAZEBO_CONTROLLER")))
(unless (find-package "GAZEBO_CONTROLLER::CUSTOMMESSAGE")
  (make-package "GAZEBO_CONTROLLER::CUSTOMMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude CustomMessage.msg.html


(defclass gazebo_controller::CustomMessage
  :super ros::object
  :slots (_x _y _theta ))

(defmethod gazebo_controller::CustomMessage
  (:init
   (&key
    ((:x __x) (make-array 4 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 4 :initial-element 0 :element-type :integer))
    ((:theta __theta) (make-array 4 :initial-element 0 :element-type :integer))
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
    ;; int32[4] _theta
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
     ;; int32[4] _theta
     (dotimes (i 4)
       (write-long (elt _theta i) s)
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
   ;; int32[4] _theta
   (dotimes (i (length _theta))
     (setf (elt _theta i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get gazebo_controller::CustomMessage :md5sum-) "75c45c7398a3ed7e59626b36ece0423d")
(setf (get gazebo_controller::CustomMessage :datatype-) "gazebo_controller/CustomMessage")
(setf (get gazebo_controller::CustomMessage :definition-)
      "int32[4] x
int32[4] y
int32[4] theta

")



(provide :gazebo_controller/CustomMessage "75c45c7398a3ed7e59626b36ece0423d")


