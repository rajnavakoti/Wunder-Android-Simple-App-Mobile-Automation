*** Settings ***
Documentation    This robot file consists of UI keywords
...              These keywords are repeatedly used in Test execution and common for all test cases


*** Keywords ***

Click On
       [Arguments]  ${Element_Name}  ${Element_Path}
       Wait Until Element Is Visible    ${Element_Path}   timeout=20   error=${Element_Name}NotVisible
       Element Should Be Enabled    ${Element_Path}     loglevel=${Element_Name} Is Not Enabled
       Click Element    ${Element_Path}

Enter Value To
       [Arguments]  ${Element_Name}  ${Element_Path}   ${Input}
       Wait Until Element Is Visible    ${Element_Path}   timeout=20   error=${Element_Name}NotVisible
       Element Should Be Enabled    ${Element_Path}     loglevel=${Element_Name} Is Not Enabled
       Clear Text   ${Element_Path}
       Sleep    1s
       Input Text    ${Element_Path}  ${Input}

Get Value From
       [Arguments]  ${Element_Name}  ${Element_Path}
       Wait Until Element Is Visible    ${Element_Path}   timeout=20   error=${Element_Name}NotVisible
       ${Element_Value}   Get Text    ${Element_Path}
       Sleep    1s
       [Return]  ${Element_Value}
       Log  ${Element_Name}:${Element_Value}