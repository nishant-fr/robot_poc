*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
This is the first test case
    [documentation]  Login Page Test
    [tags]  smoke test

    Open Browser  http://localhost:8090/login  chrome
    Input Text  //span[text()='Email']//..//..//..//input  selenium@test.com
    Input Text  //span[text()='Password']//..//..//..//input  selenium2025!
    Click Button  //button[@type='submit' and text()='Login']
    Wait Until Element Contains  //h1[text()='Profile']  Profile
    Element Should Contain  //h1[text()='Profile']  Profile
    Close Browser

*** Keywords ***
