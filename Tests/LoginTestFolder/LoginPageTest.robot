*** Settings ***
Resource  ../../Resources/Hooks.robot
Resource  ../../Resources/LoginPageFeature.robot
Resource  ../../Resources/Hooks.robot
Resource  ../../Resources/LoginPageFeature.robot
*** Variables ***

*** Test Cases ***
This is the first test case
    [documentation]  Login Page Test
    [tags]  smoke test

    Start Browser
    Verify Credentials
    End Browser
