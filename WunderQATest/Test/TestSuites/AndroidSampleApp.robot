*** Settings ***
Documentation    This is the mobile automation Test suite file (Base Execution File) for Android Sample App.
...              covers 10 different scenario's of Addition, subtraction, Multiplication and Division.
...              Framework : Robot; Supporting language : Python, Automation tool : Appium.
...              Screenshots : Generated under 'result' folder
...              Log and report : In built robot framework, generated under 'result' folder

Library  AppiumLibrary
Library  Process
Library  ../PythonScripts/PythonFunctions.py                             # Importing Python helpful functions
Resource  ../General/UIKeywords.robot                                    # Importing user defined general UI Keywords
Resource  ../TestData/SampleAppTD.robot                                  # Importing Test data
Resource  ../ObjectRepository/SampleAppOR.robot                          # Importing App Object Repository
Resource  ../Configurations/Config.robot                                 # Imporiting config details (Device, App details)


Suite Setup        Set Up - Suite                                        # 'Sutie Set Up' runs once before the test execution
Suite Teardown     Tear Down - Suite                                     # 'Sutie tear down' runs once after the test execution


*** Test Cases ***
Test Case 01 : Addition of Integer values
    [Documentation]  This test case covers adding two interger values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_01

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png

    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Add     ${TC_01_Left_Value}     ${TC_01_Right_Value}
    #Log  ${Expected_Result}

    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Add     ${TC_01_Left_Value}  ${TC_01_Right_Value}   ${Test_Case_Number}
    #Log   ${Actual_result}

    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 02 : Addition of floating values
    [Documentation]  This test case covers adding two floating values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_02

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Add     ${TC_02_Left_Value}     ${TC_02_Right_Value}
    #Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Add     ${TC_02_Left_Value}  ${TC_02_Right_Value}   ${Test_Case_Number}
    #Log   ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 03 : subtraction with positive result
    [Documentation]  This test case covers subtracting two positive values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_03

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Sub     ${TC_03_Left_Value}     ${TC_03_Right_Value}
    #Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Sub     ${TC_03_Left_Value}  ${TC_03_Right_Value}   ${Test_Case_Number}
    #Log   ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 04 : Subtraction with negative result
    [Documentation]  This test case covers subtracting two positive values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_04

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Sub     ${TC_04_Left_Value}     ${TC_04_Right_Value}
    Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Sub     ${TC_04_Left_Value}  ${TC_04_Right_Value}   ${Test_Case_Number}
    Log     ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 05 : Multiplication of two integers
    [Documentation]  This test case covers multiplication two integer values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_05

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Mul     ${TC_05_Left_Value}     ${TC_05_Right_Value}
    Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Mul     ${TC_05_Left_Value}  ${TC_05_Right_Value}   ${Test_Case_Number}
    Log     ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 06 : Multiplication of floating numbers
    [Documentation]  This test case covers multiplication two floating values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_06

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Mul     ${TC_06_Left_Value}     ${TC_06_Right_Value}
    Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Mul     ${TC_06_Left_Value}  ${TC_06_Right_Value}   ${Test_Case_Number}
    Log     ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 07 : Multiplication of floating and integer numbers
    [Documentation]  This test case covers multiplication different data type values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_07

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Mul     ${TC_07_Left_Value}     ${TC_07_Right_Value}
    Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Mul     ${TC_07_Left_Value}  ${TC_07_Right_Value}   ${Test_Case_Number}
    Log     ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 08 : Division of two numbers resulting in interger values
    [Documentation]  This test case covers division of two integer values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_08

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Div     ${TC_08_Left_Value}     ${TC_08_Right_Value}
    Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Div     ${TC_08_Left_Value}  ${TC_08_Right_Value}   ${Test_Case_Number}
    Log     ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 09 : Division of two numbers resulting in floating value
    [Documentation]  This test case covers division which results in floating value using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_09

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Div     ${TC_09_Left_Value}     ${TC_09_Right_Value}
    Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Div     ${TC_09_Left_Value}  ${TC_09_Right_Value}   ${Test_Case_Number}
    Log     ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

Test Case 10 : Division of two floating numbers
    [Documentation]  This test case covers division of two floating values using 'Simple app' in real Device/Simulator
    [Tags]    Sprint1	UserStoryNumber		Functional    PositiveScenario
    ${Test_Case_Number}     Set Variable    TC_10

    # Step 1 : Capture intial app screenshot
    Capture Page Screenshot     ${Test_Case_Number}_Initial_Screen.png
    # Step 2 : Evalute expected result
    ${Expected_Result}  perform calculation     Div     ${TC_10_Left_Value}     ${TC_10_Right_Value}
    Log  ${Expected_Result}
    # Step 3 : Evalute acutal result (Using SimpleApp in device)
    ${Actual_Result}   Through SimpleApp Perform    Div     ${TC_10_Left_Value}  ${TC_10_Right_Value}   ${Test_Case_Number}
    Log     ${Actual_result}
    # Step 4 : Compare Expected and Actual result (Pass/Fail Test Case)
    Should Be Equal    ${Expected_Result}   ${Actual_result}

*** Keywords ***

Set Up - Suite
    [Documentation]  This keyword is used to start appium server and open application in Device/Simulator
    start appium server
    Open Application    ${Appium_url}    alias=${alias}    platformName=${platformName}    platformVersion=${platformVersion}    deviceName=${deviceName}    appPackage=${appPackage}    appActivity=${appActivity}

Tear Down - Suite
     [Documentation]  This keyword is used to stop appium server and close all application on Device/Simulator
     Close All Applications
     stop appium server

Through SimpleApp Perform
    [Documentation]  This keyword perfroms Add/Sub/Mul/Div on Device/Simulator and returns the result value displayed
    ...              Operation must be 'Add' or 'Sub' or 'Mul' or 'Div'
    [Arguments]  ${Operation}   ${Left_Value}  ${Right_Value}   ${Test_Case_Number}
    Enter Value To  Left Text Box  id=${Input_Field_Left}      ${Left_Value}
    Enter Value To  Right Text Box  id=${Input_Field_Right}     ${Right_Value}
    Capture Page Screenshot     ${Test_Case_Number}_After_Values_Entered_Screen.png
    Run Keyword Unless  '${Operation}' != 'Add' or '${Operation}' != 'Sub' or '${Operation}' != 'Mul' or '${Operation}' != 'Div'  Fail    Error: Operation must be Add or Sub or Mul or Div
    Run Keyword If  '${Operation}' == 'Add'     Click On  Add Button   ${Addition_Button}
    Run Keyword If  '${Operation}' == 'Sub'     Click On  Sub Button   ${subtract_Button}
    Run Keyword If  '${Operation}' == 'Mul'     Click On  Mul Button   ${multiplication_Button}
    Run Keyword If  '${Operation}' == 'Div'     Click On  Sub Button   ${division_Button}
    ${Actual_result}   Get Value From  Result Text     ${result_Text_View}
    Capture Page Screenshot     ${Test_Case_Number}_After_Operation_Screen.png
    [Return]   ${Actual_result}



