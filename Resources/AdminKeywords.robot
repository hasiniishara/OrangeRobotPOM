*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/AdminLocators.py

*** Keywords ***
Click Job Section
    click element    ${job_SectionBtn}
Click Manage Job Titles
    click element    ${job_TitleBtn}
Click New Job Title Add Button
    click button    ${job_AddBtn}
Add New Job Title Details
    [Arguments]    ${JobName}   ${JobDescription}   ${JobNote}
    input text    ${job_TitleName}  ${JobName}
    input text    ${job_Description}    ${JobDescription}
    input text    ${job_Note}   ${JobNote}
Save New Job Title Details
    click button    ${job_TitleSaveBtn}