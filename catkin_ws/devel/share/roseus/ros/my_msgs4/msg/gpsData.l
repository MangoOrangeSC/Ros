;; Auto-generated. Do not edit!


(when (boundp 'my_msgs4::gpsData)
  (if (not (find-package "MY_MSGS4"))
    (make-package "MY_MSGS4"))
  (shadow 'gpsData (find-package "MY_MSGS4")))
(unless (find-package "MY_MSGS4::GPSDATA")
  (make-package "MY_MSGS4::GPSDATA"))

(in-package "ROS")
;;//! \htmlinclude gpsData.msg.html


(defclass my_msgs4::gpsData
  :super ros::object
  :slots (_northVel _skyVel _eastVel _latitude _longtitude _height ))

(defmethod my_msgs4::gpsData
  (:init
   (&key
    ((:northVel __northVel) 0.0)
    ((:skyVel __skyVel) 0.0)
    ((:eastVel __eastVel) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longtitude __longtitude) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _northVel (float __northVel))
   (setq _skyVel (float __skyVel))
   (setq _eastVel (float __eastVel))
   (setq _latitude (float __latitude))
   (setq _longtitude (float __longtitude))
   (setq _height (float __height))
   self)
  (:northVel
   (&optional __northVel)
   (if __northVel (setq _northVel __northVel)) _northVel)
  (:skyVel
   (&optional __skyVel)
   (if __skyVel (setq _skyVel __skyVel)) _skyVel)
  (:eastVel
   (&optional __eastVel)
   (if __eastVel (setq _eastVel __eastVel)) _eastVel)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longtitude
   (&optional __longtitude)
   (if __longtitude (setq _longtitude __longtitude)) _longtitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _northVel
    4
    ;; float32 _skyVel
    4
    ;; float32 _eastVel
    4
    ;; float32 _latitude
    4
    ;; float32 _longtitude
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _northVel
       (sys::poke _northVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _skyVel
       (sys::poke _skyVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eastVel
       (sys::poke _eastVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longtitude
       (sys::poke _longtitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _northVel
     (setq _northVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _skyVel
     (setq _skyVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eastVel
     (setq _eastVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longtitude
     (setq _longtitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_msgs4::gpsData :md5sum-) "e90aa33e849d86074f13628217060af8")
(setf (get my_msgs4::gpsData :datatype-) "my_msgs4/gpsData")
(setf (get my_msgs4::gpsData :definition-)
      "float32 northVel
float32 skyVel
float32 eastVel
float32 latitude
float32 longtitude
float32 height
")



(provide :my_msgs4/gpsData "e90aa33e849d86074f13628217060af8")


