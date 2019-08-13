
(cl:in-package :asdf)

(defsystem "dobot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetCtrl_msg" :depends-on ("_package_GetCtrl_msg"))
    (:file "_package_GetCtrl_msg" :depends-on ("_package"))
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
  ))