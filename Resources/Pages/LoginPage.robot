*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${valid_user_id}  selenium@test.com
${valid_user_password}  selenium2025!
#@{user_id}  selenium@test.com  selenium@test.c  selenium@test.org
&{user_id}  validEmail=selenium@test.com  invalidEmail=selenium@test.c  unregisteredEmail=selenium@test.org

${EmailElement}  xpath://span[text()='Email']//..//..//..//input
${PasswordElement}  xpath://span[text()='Password']//..//..//..//input
${LoginButton}  xpath://button[@type='submit' and text()='Login']
${RegisterButton}  xpath://div[contains(@class,'MuiBox-root')]//button[@type='button' and text()='Register']
${ForgotPasswordButton}  xpath://a[text()='Forgot Password?']
${AlertMessageElement}  xpath://div[contains(@class,'MuiAlert-message')]
${RegisterPageHeader}  xpath://h1[text()='Register']
${ForgotPasswordPageHeader}  xpath://h1[text()='Reset Password']
${login_header}  //h4[text()='Login']

*** Keywords ***

Enter User Name
    [Arguments]  ${user_id}
    Input Text  ${EmailElement}  ${user_id}

Enter User Password
    [Arguments]  ${user_password}
    Input Text  ${PasswordElement}  ${user_password}

Click Login Button
    Click Button  ${LoginButton}

Is Error Message Visible
    [Arguments]  ${error_message}
    Wait Until Element Contains  ${AlertMessageElement}  ${error_message}
    Element Should Contain  ${AlertMessageElement}  ${error_message}

Click Register Button
    Click Button  ${RegisterButton}

Is Register Page Visible
    Wait Until Element Is Visible  ${RegisterPageHeader}
    Element Should Be Visible  ${RegisterPageHeader}

Click Forgot Password Button
    Click Element  ${ForgotPasswordButton}

Is Forgot Password Page Visible
    Wait Until Element Is Visible  ${ForgotPasswordPageHeader}
    Element Should Be Visible  ${ForgotPasswordPageHeader}

Is Login Page Visible
    Wait Until Element Is Visible  ${login_header}
    Element Should Be Visible  ${login_header}