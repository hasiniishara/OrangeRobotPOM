*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/DashboardLocators.py



*** Keywords ***
Verify Successfull Dashboard Loading
    title should be    Employee Management

Click Admin Module
    click element    ${dash_AdminIcon}