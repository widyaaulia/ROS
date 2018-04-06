#!/usr/bin/env python

from turtle_controll.srv import pos_arr
import rospy

class client:
    def __init__(self):
        #Initialize the client node
        rospy.init_node("turtle_client")

        #Show in the console the message
        rospy.loginfo("Client initiated")

        #Pause the node untill the service specified(service_label) is active
        rospy.wait_for_service("tutle_ser")

    cli = rospy.ServiceProxy("tutle_ser", pos_arr)

if __name__=='__main__':
    n = client()

    while not rospy.is_shutdown():
        try:
            x_str=raw_input("Enter 4 int value for x: ")
            x = [int(x_val) for x_val in x_str.split()]
            print len(x)
        except ValueError:
            rospy.logerr("Invalid input")
            x = 0
        try:
            y_str=raw_input("Enter 4 int value for y: ")
            y = [int(y_val) for y_val in y_str.split()]
        except ValueError:
            rospy.logerr("Invalid input")
            y = 0
        
        result = n.cli(x,y)
        print result.res
        rospy.spin()