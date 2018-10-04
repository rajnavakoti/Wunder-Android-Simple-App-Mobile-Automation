*** Settings ***
Documentation    Config robot file will include Device, App, other conncetion details necessary for Test Execution
...              This file consists only config variables

*** Variables ***

## Simple App : Device, App and Package Details ##
${Appium_url}   http://localhost:4723/wd/hub
${alias}    AndroidSampleApp
${platformName}     Android
${platformVersion}  5.1.1
${deviceName}   ZH8006HQCF
${appPackage}   com.vbanthia.androidsampleapp
${appActivity}  com.vbanthia.androidsampleapp.MainActivity

#Open Application    http://localhost:4723/wd/hub    alias=AndroidSampleApp    platformName=Android    platformVersion=5.1.1    deviceName=ZH8006HQCF    appPackage=com.vbanthia.androidsampleapp    appActivity=com.vbanthia.androidsampleapp.MainActivity



