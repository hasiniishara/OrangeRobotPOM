*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Variables  ../SystemSettings/SystemUtil.py


*** Variables ***
${B_Type}   ${Browser}
${Url}  ${SiteUrl}
${UserName}     ${UName}
${Upw}  ${UPassword}


*** Test Cases ***
Login Test
    Open my Browser    ${Url}   ${B_Type}
    Enter User Name    ${UserName}
    Enter User Password    ${Upw}
    Click Login Button
    Verify Successfull Login
    Close my Browser