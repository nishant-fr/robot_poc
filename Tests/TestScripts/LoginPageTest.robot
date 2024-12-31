*** Settings ***
Resource  ../../Resources/Hooks.robot
Resource  ../../Resources/Hooks.robot
Resource  ../../Resources/Pages/LoginPage.robot
Resource  ../../Resources/Pages/RegisteredUserPage.robot
Resource  ../../Resources/Pages/ResetPasswordPage.robot

Test Setup  Hooks.Start Browser
Test Teardown  Hooks.End Browser

*** Variables ***
${GLOBAL_VARIABLE}  =  This is a GLOBAL variable

*** Test Cases ***
Successful login with valid credentials
    [documentation]  Login Page Test
    [tags]  login test

    Log To Console  ${GLOBAL_VARIABLE}
    ${local_log}=  Set Variable  Entering UserName and Password in Login Page
    Log To Console  ${local_log}
    LoginPage.Enter User Name  selenium@test.com
    LoginPage.Enter User Password  selenium2025!
    LoginPage.Click Login Button
    RegisteredUserPage.Is Profile Page Visible

Unsuccessful login with invalid credentials

    LoginPage.Enter User Name  selenium@test
    LoginPage.Enter User Password  selenium2025!
    LoginPage.Click Login Button
    LoginPage.Is Error Message Visible  must be a valid email

Attempt to login with missing email

    LoginPage.Enter User Name  ${EMPTY}
    LoginPage.Enter User Password  selenium2025!
    LoginPage.Click Login Button
    LoginPage.Is Error Message Visible  "email" is not allowed to be empty

Attempt to login with missing password

    LoginPage.Enter User Name  selenium@test.com
    LoginPage.Enter User Password  ${EMPTY}
    LoginPage.Click Login Button
    LoginPage.Is Error Message Visible  "password" is not allowed to be empty

Navigate to registration page

    Click Register Button
    Is Register Page Visible

Navigate to forgot password page

    Click Forgot Password Button
    Is Forgot Password Page Visible

