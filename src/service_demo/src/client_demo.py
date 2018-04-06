#!/usr/bin/env python

#from ros_package.srv import srv_file
from service_demo.srv import two_ints
import rospy

class client:
    def __init__(self):
        #Initialize the client node
        rospy.init_node("client_demo")

        #Show in the console the message
        rospy.loginfo("Client initiated")

        #Pause the node untill the service specified(service_label) is active
        rospy.wait_for_service("server_2ints")

    cli = rospy.ServiceProxy("server_2ints", two_ints)

    """
    Create client

    structure of the client ->
        name_of_client = rospy.ServiceProxy("service_label", service_name)
    """

if __name__=='__main__':
    n = client()

    while not rospy.is_shutdown():
        try:
            a = int(raw_input("Enter first int value: "))
        except ValueError:
            rospy.logerr("Invalid input")
            a = 0
        try:
            b = int(raw_input("Enter second int value: "))
        except ValueError:
            rospy.logerr("Invalid input")
            b = 0
        
        result = n.cli(a,b)
        print "Sum: ", result.sum_2ints
        print "Multiplicaiton : ", result.mul_2ints
        print "Subtraction: ", result.sub_2ints
        print "Division: ", result.div_2ints


        """
            Request two number from the terminal
            To assure that you get only numbers, use the try except structure
            try:
                a =
            except ValueError:
                rospy.logerr("Invalid input")
                a =

            try:
                b =
            except ValueError:
                rospy.logerr("Invalid input")
                b =

            Collect the value from the client service

            result = n.name_of_client(parameter_1, parameter_2)

            Tasks:
            1. Display the result of the sum, the multiplication, the substraction,
            and division

            HINT: To collect specifically the value write:
                result.sum, for the response variable "sum"

        """
        rospy.spin()
