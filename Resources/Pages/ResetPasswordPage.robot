*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email_input}  xpath://span[text()='Email Address']//..//..//..//input[@type='text']
${reset_button}  xpath://button[@type='button' and text()='Send Reset Link']
${login_link}  xpath://header//button[text()='Login']
${register_link}  xpath://header//button[text()='Register']
*** Keywords ***

Enter Reset Password Email
    [Arguments]  ${user_id}
    Input Text  ${email_input}  ${user_id}

Click Reset Password Button
    Click Button  ${reset_button}

Click Login Header Link
    Click Element  ${login_link}

Click Register Header Link
    Click Element  ${register_link}