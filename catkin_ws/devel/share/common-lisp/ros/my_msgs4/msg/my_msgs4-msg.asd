
(cl:in-package :asdf)

(defsystem "my_msgs4-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gpsData" :depends-on ("_package_gpsData"))
    (:file "_package_gpsData" :depends-on ("_package"))
  ))