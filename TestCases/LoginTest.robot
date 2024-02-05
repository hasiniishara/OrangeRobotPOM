*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${Browser}  chrome
${SiteUrl}  https://devmini-trials711.orangehrmlive.com
${UName}    Admin
${UPassword}    z@52zrUKFA


*** Test Cases ***
Login Test
    Open my Browser    ${SiteUrl}   ${Browser}
    Enter User Name    ${UName}
    Enter User Password    ${UPassword}
    Click Login Button
    Verify Successfull Login
    Close my Browser