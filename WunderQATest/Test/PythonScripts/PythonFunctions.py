# This file consists of all the necessary python functions for Test case execution

__author__ = "Raj"

import time
import subprocess


class PythonFunctions():

    def round_of_number(self, a):
        c = format(float(a), '.2f')
        #print c
        return c

    def start_appium_server(self):
        subprocess.Popen('appium -a 127.0.0.1 -p 4723', shell=True)
        time.sleep(5)

    def stop_appium_server(self):
        subprocess.Popen('taskkill /F /IM node.exe', shell=True)

    def perform_calculation(self, operation, x, y):
        obj = PythonFunctions()
        x = float(obj.round_of_number(x))
        y = float(obj.round_of_number(y))
        if operation == "Add":
            expected_value = format(float(x+y), '.2f')
            expected_result = str(obj.round_of_number(x))+" + "+str(obj.round_of_number(y))+" = "+str(expected_value)
        elif operation == "Sub":
            expected_value = format(float(x-y), '.2f')
            expected_result = str(obj.round_of_number(x)) + " - " + str(obj.round_of_number(y)) + " = " + str(expected_value)
        elif operation == "Mul":
            expected_value = format(float(x*y), '.2f')
            expected_result = str(obj.round_of_number(x)) + " * " + str(obj.round_of_number(y)) + " = " + str(expected_value)
        elif operation == "Div":
            expected_value = format(float(x/y), '.2f')
            expected_result = str(obj.round_of_number(x)) + " / " + str(obj.round_of_number(y)) + " = " + str(expected_value)
        print(expected_result)
        return expected_result







