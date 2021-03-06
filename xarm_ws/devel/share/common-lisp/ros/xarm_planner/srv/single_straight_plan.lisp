; Auto-generated. Do not edit!


(cl:in-package xarm_planner-srv)


;//! \htmlinclude single_straight_plan-request.msg.html

(cl:defclass <single_straight_plan-request> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass single_straight_plan-request (<single_straight_plan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <single_straight_plan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'single_straight_plan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xarm_planner-srv:<single_straight_plan-request> is deprecated: use xarm_planner-srv:single_straight_plan-request instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <single_straight_plan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xarm_planner-srv:target-val is deprecated.  Use xarm_planner-srv:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <single_straight_plan-request>) ostream)
  "Serializes a message object of type '<single_straight_plan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <single_straight_plan-request>) istream)
  "Deserializes a message object of type '<single_straight_plan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<single_straight_plan-request>)))
  "Returns string type for a service object of type '<single_straight_plan-request>"
  "xarm_planner/single_straight_planRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'single_straight_plan-request)))
  "Returns string type for a service object of type 'single_straight_plan-request"
  "xarm_planner/single_straight_planRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<single_straight_plan-request>)))
  "Returns md5sum for a message object of type '<single_straight_plan-request>"
  "9b6cd400aefab13efff1a5082333de0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'single_straight_plan-request)))
  "Returns md5sum for a message object of type 'single_straight_plan-request"
  "9b6cd400aefab13efff1a5082333de0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<single_straight_plan-request>)))
  "Returns full string definition for message of type '<single_straight_plan-request>"
  (cl:format cl:nil "geometry_msgs/Pose target~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'single_straight_plan-request)))
  "Returns full string definition for message of type 'single_straight_plan-request"
  (cl:format cl:nil "geometry_msgs/Pose target~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <single_straight_plan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <single_straight_plan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'single_straight_plan-request
    (cl:cons ':target (target msg))
))
;//! \htmlinclude single_straight_plan-response.msg.html

(cl:defclass <single_straight_plan-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass single_straight_plan-response (<single_straight_plan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <single_straight_plan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'single_straight_plan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xarm_planner-srv:<single_straight_plan-response> is deprecated: use xarm_planner-srv:single_straight_plan-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <single_straight_plan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xarm_planner-srv:success-val is deprecated.  Use xarm_planner-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <single_straight_plan-response>) ostream)
  "Serializes a message object of type '<single_straight_plan-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <single_straight_plan-response>) istream)
  "Deserializes a message object of type '<single_straight_plan-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<single_straight_plan-response>)))
  "Returns string type for a service object of type '<single_straight_plan-response>"
  "xarm_planner/single_straight_planResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'single_straight_plan-response)))
  "Returns string type for a service object of type 'single_straight_plan-response"
  "xarm_planner/single_straight_planResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<single_straight_plan-response>)))
  "Returns md5sum for a message object of type '<single_straight_plan-response>"
  "9b6cd400aefab13efff1a5082333de0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'single_straight_plan-response)))
  "Returns md5sum for a message object of type 'single_straight_plan-response"
  "9b6cd400aefab13efff1a5082333de0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<single_straight_plan-response>)))
  "Returns full string definition for message of type '<single_straight_plan-response>"
  (cl:format cl:nil "~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'single_straight_plan-response)))
  "Returns full string definition for message of type 'single_straight_plan-response"
  (cl:format cl:nil "~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <single_straight_plan-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <single_straight_plan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'single_straight_plan-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'single_straight_plan)))
  'single_straight_plan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'single_straight_plan)))
  'single_straight_plan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'single_straight_plan)))
  "Returns string type for a service object of type '<single_straight_plan>"
  "xarm_planner/single_straight_plan")