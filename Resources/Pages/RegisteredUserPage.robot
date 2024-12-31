*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${profile_header}  Profile
${ProfileHeaderElement}  xpath://h1[text()='Profile']
*** Keywords ***

Is Profile Page Visible
    Wait Until Element Contains  ${ProfileHeaderElement}  ${profile_header}
    Element Should Contain  ${ProfileHeaderElement}  ${profile_header}