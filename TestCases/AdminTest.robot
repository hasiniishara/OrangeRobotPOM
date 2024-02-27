*** Settings ***
Library    SeleniumLibrary
Variables    ../SystemSettings/SystemUtil.py
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/DashBoardKeywords.robot
Resource    ../Resources/AdminKeywords.robot

*** Variables ***
${B_Type}   ${Browser}
${Url}  ${SiteUrl}
${UserName}     ${UName}
${Upw}  ${UPassword}
${Job_Name}     ${JobTitle}
${Job_Des}  ${JobDesc}
${Job_Note}     ${JobNo}

*** Test Cases ***
Login Test
    Open my Browser    ${Url}   ${B_Type}
    Enter User Name    ${UserName}
    Enter User Password    ${Upw}
    Click Login Button
    Verify Successfull Login
Check Dashboard
    Verify Successfull Dashboard Loading
Access Admin Module
    Click Admin Module
Add New Job Title to the System
    Click Job Section
    Click Manage Job Titles
    Wait For Add Job Button
    Click New Job Title Add Button
  #  Add New Job Title Details   ${Job_Name} ${Job_Des}  ${Job_Note}
  #  Save New Job Title Details
Close the Browser
    close all browsers

