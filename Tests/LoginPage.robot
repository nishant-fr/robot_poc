*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
This is the first test case
    [documentation]  Login Page Test
    [tags]  smoke test

    Open Browser  http://localhost:8090/login  chrome
    Close Browser

*** Keywords ***
