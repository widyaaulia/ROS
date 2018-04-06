
(cl:in-package :asdf)

(defsystem "turtle_controll-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pos_arr" :depends-on ("_package_pos_arr"))
    (:file "_package_pos_arr" :depends-on ("_package"))
  ))