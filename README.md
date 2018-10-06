# Wunder-Android-Simple-App-Mobile-Automation
  
## Purpose of this project is to automate 'Simple App' android mobile application using appium tool and robot test framework.
   Test suite includes 10 test cases covering differnt add/sub/mul/div operations of performed by 'Simple App' application
   Robot framework will provide logs, reports and output execution files
   Screenshots are included in the result folder

### Automation Specifications ###
 Application : Simple App (Android Mobile App)
 Automation Tool : Appium
 Test Framework : Robot
 Supporting language : Python
 Element inspector : UIAutomatorviewer

### Required Tools ###
 Python (V 3.7) -For supporting language
 PIP (V 10.0+) - For python supported library installations
 Android SDK - For Simulators, Adb, UIAutomatorViewer (Recognizing elements on mobile app)
 Node JS, npm 
 Appium - For mobile app automation
 Robot - For Testing framework (BDD Framework)
 
### Guide for installation ###
 1.Python installation
  a.Download and install python from https://www.python.org/downloads/
  b.Add environment varaibles for python
  c.Check PIP is installed successfully along with Python. To check run PIP --Version from terminal
 2.Android SDK installation
  a.Download and install Android SDK from https://developer.android.com/studio/install
  b.Add environment variables for Android SDK
 3.Node JS Installation
  a.Download and install Node JS from https://nodejs.org/en/download/
  b.Add environment variables for npm
  c.Check npm installtion. To check run npm --version form terminal
 4.Install Appium using npm
  a.run command 'npm install -g appium'
  b.Add appium execution file path to environment variables
  c.Check appium installation. To check run 'appium --version' from terminal
 5.Install Robot framework using PIP
  a.run command 'pip install robotframework' from terminal
  b.Check robot installation. To check run 'robot --version' from terminal
 6.Install Appium Library for robot
  a.run command 'pip install robotframework-appiumlibrary' from terminal
  
 
### Script execution Details ###
 'pybot' is used to run Robot files
 How to run the script ?
 1. Use execution command from Terminal : pybot <AndroidSampleApp.robot file path>/AndroidSampleApp.robot
 2. Use any python supported IDE like Pycharm and execute AndroidSampleApp.robot file

### Execution File and Output specifications ###
 Base Execution File : Test/TestSuites/AndroidSampleApp.robot
 Path for Log File : result/log.html
 Path for Reports : result/report.html
 Path for Screesnhotst : result/


