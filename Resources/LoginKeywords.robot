*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/LoginLocators.py


*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}   ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    maximize browser window

Enter User Name
    [Arguments]    ${UName}
    input text    ${login_UserName}     ${UName}

Enter User Password
    [Arguments]    ${UPassword}
    input text    ${login_Password}     ${UPassword}

Click Login Button
    click button    ${login_Button}

Verify Successfull Login
    title should be    Employee Management

Close my Browser
    close all browsers
