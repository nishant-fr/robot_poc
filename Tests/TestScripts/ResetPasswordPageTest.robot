*** Settings ***
Resource  ../../Resources/Hooks.robot
Resource  ../../Resources/Hooks.robot
Resource  ../../Resources/Pages/LoginPage.robot
Resource  ../../Resources/Pages/ResetPasswordPage.robot

Test Setup  Hooks.Start Browser
Test Teardown  Hooks.End Browser

*** Test Cases ***
Successful password reset request
    [documentation]  Reset Password Page Test
    [tags]  reset password test

    LoginPage.Click Forgot Password Button
    ResetPasswordPage.Enter Reset Password Email  reset@test.com
    ResetPasswordPage.Click Reset Password Button
    LoginPage.Is Error Message Visible  If the email is registered, a reset link has been sent.

Unsuccessful password reset request with invalid email
    [documentation]  Reset Password Page Test
    [tags]  reset password test

    LoginPage.Click Forgot Password Button
    ResetPasswordPage.Enter Reset Password Email  selenium@test
    ResetPasswordPage.Click Reset Password Button
    LoginPage.Is Error Message Visible  must be a valid email

Unsuccessful password reset request with unregistered email
    [documentation]  Reset Password Page Test
    [tags]  reset password test

    LoginPage.Click Forgot Password Button
    ResetPasswordPage.Enter Reset Password Email  unregistered@test.com
    ResetPasswordPage.Click Reset Password Button
    LoginPage.Is Error Message Visible  User not found

Attempt to reset password with empty email field
    [documentation]  Reset Password Page Test
    [tags]  reset password test

    LoginPage.Click Forgot Password Button
    ResetPasswordPage.Enter Reset Password Email  ${EMPTY}
    ResetPasswordPage.Click Reset Password Button
    LoginPage.Is Error Message Visible  "email" is not allowed to be empty

Navigate to login page from reset password screen
    [documentation]  Reset Password Page Test
    [tags]  reset password test

    LoginPage.Click Forgot Password Button
    ResetPasswordPage.Click Login Header Link
    LoginPage.Is Login Page Visible

Navigate to registration page from reset password screen
    [documentation]  Reset Password Page Test
    [tags]  reset password test

    LoginPage.Click Forgot Password Button
    ResetPasswordPage.Click Register Header Link
    LoginPage.Is Register Page Visible