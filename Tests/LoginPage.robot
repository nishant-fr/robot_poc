*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
This is the first test case
    [documentation]  Login Page Test
    [tags]  smoke test

    Start Browser
    Verify Credentials
    End Browser

*** Keywords ***
Start Browser
    Open Browser  http://localhost:8090/login  firefox
    Maximize Browser Window

Verify Credentials
    Input Text  xpath://span[text()='Email']//..//..//..//input  selenium@test.com
    Input Text  xpath://span[text()='Password']//..//..//..//input  selenium2025!
    Click Button  xpath://button[@type='submit' and text()='Login']
    Wait Until Element Contains  xpath://h1[text()='Profile']  Profile
    Element Should Contain  xpath://h1[text()='Profile']  Profile

End Browser
    Close Browser
