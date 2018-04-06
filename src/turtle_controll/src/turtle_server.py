#!/usr/bin/env python

import rospy
import math
import numpy
from turtle_controll.srv import pos_arr
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
import time

class server:
    def __init__(self):
        #initialize the server node
        rospy.init_node("turtle_server")

        #Display in the console the message
        rospy.loginfo("Server initiated")

        # Tolerance in term of postion and angle
        self.pos_tolerant = 0.1
        self.ang_tolerant = 0.01

        # Create current and target position
        self.current_pose = Pose()
        self.target_pose = Pose()

        # Create velocity
        self.target_vel = Twist()

        # Create subscriber for pose from turtle
        self.current_pose_sub = rospy.Subscriber("turtle1/pose", Pose, self.current_pose_callback)
        
        # Create publisher
        self.target_vel_pub = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size = 10)

        ser = rospy.Service("tutle_ser",pos_arr,self.func_move)

    def current_pose_callback(self, msg):
        self.current_pose = msg
        pass

    def func_move(self,request):
        for i in range(0,5):
            self.target_pose.x = request.x[i]
            self.target_pose.y = request.y[i]
            dx = numpy.abs(self.current_pose.x - self.target_pose.x)
            dy = numpy.abs(self.current_pose.y - self.target_pose.y)
            dtheta = numpy.abs(self.target_pose.theta - self.current_pose.theta)
            distance = math.sqrt(dx*dx + dy*dy)

            # Check if (x,y) is okay
            if ((dx < self.pos_tolerant) and (dy < self.pos_tolerant)):
                self.target_vel.linear.x = 0.0

                # We reached the correct (x,y), rotate to theta
                if (dtheta > self.ang_tolerant):
                    self.target_vel.angular.z = (self.target_pose.theta - self.current_pose.theta) / 3.0
                else:
                    self.target_vel.angular.z = 0.0
                self.target_vel_pub.publish(n.target_vel)
                time.sleep(1)
            else:
                # Orient towards target pose
                angle = numpy.arctan2(self.target_pose.y - self.current_pose.y, self.target_pose.x - self.current_pose.x)
                if abs(angle - self.current_pose.theta) > self.ang_tolerant:
                    self.target_vel.linear.x = 0.0
                    self.target_vel.angular.z = angle - self.current_pose.theta
                    self.target_vel_pub.publish(n.target_vel)
                    time.sleep(1)
                    self.target_vel.linear.x = distance
                    self.target_vel.angular.z = 0.0
                    self.target_vel_pub.publish(n.target_vel)
                    time.sleep(1)
                else:
                    self.target_vel.linear.x = distance
                    self.target_vel.angular.z = 0.0
                    self.target_vel_pub.publish(n.target_vel)
                    time.sleep(1)
        res = True
        return res      


if __name__ == '__main__':
    n = server()

    rospy.spin()