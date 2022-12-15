; Auto-generated. Do not edit!


(cl:in-package my_msgs4-msg)


;//! \htmlinclude gpsData.msg.html

(cl:defclass <gpsData> (roslisp-msg-protocol:ros-message)
  ((northVel
    :reader northVel
    :initarg :northVel
    :type cl:float
    :initform 0.0)
   (skyVel
    :reader skyVel
    :initarg :skyVel
    :type cl:float
    :initform 0.0)
   (eastVel
    :reader eastVel
    :initarg :eastVel
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longtitude
    :reader longtitude
    :initarg :longtitude
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass gpsData (<gpsData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpsData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpsData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msgs4-msg:<gpsData> is deprecated: use my_msgs4-msg:gpsData instead.")))

(cl:ensure-generic-function 'northVel-val :lambda-list '(m))
(cl:defmethod northVel-val ((m <gpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs4-msg:northVel-val is deprecated.  Use my_msgs4-msg:northVel instead.")
  (northVel m))

(cl:ensure-generic-function 'skyVel-val :lambda-list '(m))
(cl:defmethod skyVel-val ((m <gpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs4-msg:skyVel-val is deprecated.  Use my_msgs4-msg:skyVel instead.")
  (skyVel m))

(cl:ensure-generic-function 'eastVel-val :lambda-list '(m))
(cl:defmethod eastVel-val ((m <gpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs4-msg:eastVel-val is deprecated.  Use my_msgs4-msg:eastVel instead.")
  (eastVel m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <gpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs4-msg:latitude-val is deprecated.  Use my_msgs4-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longtitude-val :lambda-list '(m))
(cl:defmethod longtitude-val ((m <gpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs4-msg:longtitude-val is deprecated.  Use my_msgs4-msg:longtitude instead.")
  (longtitude m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <gpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs4-msg:height-val is deprecated.  Use my_msgs4-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpsData>) ostream)
  "Serializes a message object of type '<gpsData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'northVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'skyVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eastVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longtitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpsData>) istream)
  "Deserializes a message object of type '<gpsData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'northVel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'skyVel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eastVel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longtitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpsData>)))
  "Returns string type for a message object of type '<gpsData>"
  "my_msgs4/gpsData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpsData)))
  "Returns string type for a message object of type 'gpsData"
  "my_msgs4/gpsData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpsData>)))
  "Returns md5sum for a message object of type '<gpsData>"
  "e90aa33e849d86074f13628217060af8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpsData)))
  "Returns md5sum for a message object of type 'gpsData"
  "e90aa33e849d86074f13628217060af8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpsData>)))
  "Returns full string definition for message of type '<gpsData>"
  (cl:format cl:nil "float32 northVel~%float32 skyVel~%float32 eastVel~%float32 latitude~%float32 longtitude~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpsData)))
  "Returns full string definition for message of type 'gpsData"
  (cl:format cl:nil "float32 northVel~%float32 skyVel~%float32 eastVel~%float32 latitude~%float32 longtitude~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpsData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpsData>))
  "Converts a ROS message object to a list"
  (cl:list 'gpsData
    (cl:cons ':northVel (northVel msg))
    (cl:cons ':skyVel (skyVel msg))
    (cl:cons ':eastVel (eastVel msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longtitude (longtitude msg))
    (cl:cons ':height (height msg))
))
