*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource   ../../Resources/Hooks.robot
Resource   ../../Resources/Pages/UserRegistrationPage.robot
Resource   ../../Resources/Pages/LoginPage.robot
Resource   ../../Resources/Pages/RegisteredUserPage.robot

Test Setup       Hooks.Start Browser
Test Teardown    Hooks.End Browser

*** Test Cases ***
Successful registration with valid data
    ${firstName}    FakerLibrary.First Name
    ${lastName}     FakerLibrary.Last Name
    ${phoneNo}      FakerLibrary.Phone Number
    ${ssnNo}        FakerLibrary.Ssn
    ${bloodType}    Set Variable    O+
    ${sex}          Set Variable  Male
    ${dob}          Set Variable  '06/06/2001'
    ${physicianFirstName}    FakerLibrary.First Name
    ${physicianLastName}     FakerLibrary.Last Name
    ${physicianTitle}        Set Variable  Dr.
    ${careSiteName}          Set Variable  testSite
    ${careSiteAddress}       Set Variable  6 rue de Paris
    ${emailId}      FakerLibrary.Email
    ${password}     FakerLibrary.Password

    Log    ${bloodType}
    LoginPage.Click Register Button
    Enter First Name               ${firstName}
    Enter Last Name                ${lastName}
    Enter Phone Number             ${phoneNo}
    Enter Social Security Number   ${ssnNo}
    Select From List By Label      ${bloodType}    BloodTypeDropdown
    Select Sex Type                ${sex}
    Enter Date of Birth            ${dob}
    Enter Physician First Name     ${physicianFirstName}
    Enter Physician Last Name      ${physicianLastName}
    Select Physician Title         ${physicianTitle}
    Enter Care Site Name           ${careSiteName}
    Enter Care Site Address        ${careSiteAddress}
    Enter User Email               ${emailId}
    Enter User Password            ${password}
    Click Register Button
    LoginPage.Enter User Name      ${emailId}
    LoginPage.Enter User Password  ${password}
    LoginPage.Click Login Button
    RegisteredUserPage.Is Profile Page Visible
