*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Start Browser
    Open Browser  http://localhost:8090/login  firefox
    Maximize Browser Window

End Browser
    Close Browser

