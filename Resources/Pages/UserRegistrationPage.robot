*** Variables ***
# Group common parts of the XPath for input fields
${inputFieldXPath}  xpath://span[text()='%s']//..//..//..//input
${dropdownXPath}    xpath://div[@role='combobox' and @aria-labelledby='%s']
${submitButtonXPath}  xpath://div[contains(@class,'MuiBox-root')]//button[@type='submit' and text()='Register']

# Fields with dynamic parts in their XPaths
${firstNameElement}           xpath://span[text()='First Name']//..//..//..//input
${lastNameElement}            xpath://span[text()='Last Name']//..//..//..//input
${phoneElement}               xpath://span[text()='Phone']//..//..//..//input
${ssnElement}                 xpath://span[text()='Social Security ID']//..//..//..//input
${bloodTypeDropdownElement}   xpath://div[@role='combobox' and @aria-labelledby='blood-type-label']
${sexTypeDropdownElement}     xpath://div[@role='combobox' and @aria-labelledby='sex-label']
${dobElement}                 xpath://input[@placeholder='MM/DD/YYYY']
${physicianFirstNameElement}  xpath://span[text()='Physician First Name']//..//..//..//input
${physicianLastNameElement}   xpath://span[text()='Physician Last Name']//..//..//..//input
${physicianTitleDropdownElement}  xpath://div[@role='combobox' and @aria-labelledby='physician-title-label']
${careSiteNameElement}        xpath://span[text()='Care Site Name']//..//..//..//input
${careSiteAddressElement}     xpath://span[text()='Care Site Address']//..//..//..//input
${userEmailElement}           xpath://span[text()='Email']//..//..//..//input
${userPasswordElement}        xpath://span[text()='Password']//..//..//..//input

*** Keywords ***
Enter Text Into Input Field
    [Arguments]  ${fieldXPath}  ${value}
    Input Text  ${fieldXPath}  ${value}

Select Dropdown Option
    [Arguments]  ${dropdownXPath}  ${optionValue}
    Click Element  ${dropdownXPath}
    Wait Until Element Is Visible  //li[@data-value='${optionValue}']
    Click Element  //li[@data-value='${optionValue}']

Click Register Button
    Click Button  ${submitButtonXPath}

Enter First Name
    [Arguments]  ${firstName}
    Enter Text Into Input Field  ${firstNameElement}  ${firstName}

Enter Last Name
    [Arguments]  ${lastName}
    Enter Text Into Input Field  ${lastNameElement}  ${lastName}

Enter Phone Number
    [Arguments]  ${phone}
    Enter Text Into Input Field  ${phoneElement}  ${phone}

Enter Social Security Number
    [Arguments]  ${ssn}
    Enter Text Into Input Field  ${ssnElement}  ${ssn}

Select Blood Type
    [Arguments]  ${bloodType}
    Select Dropdown Option  ${bloodTypeDropdownElement}  ${bloodType}

Select Sex Type
    [Arguments]  ${sexType}
    Select Dropdown Option  ${sexTypeDropdownElement}  ${sexType}

Enter Date of Birth
    [Arguments]  ${dob}
    Input Text  ${dobElement}  ${dob}

Enter Physician First Name
    [Arguments]  ${physicianFirstName}
    Enter Text Into Input Field  ${physicianFirstNameElement}  ${physicianFirstName}

Enter Physician Last Name
    [Arguments]  ${physicianLastName}
    Enter Text Into Input Field  ${physicianLastNameElement}  ${physicianLastName}

Select Physician Title
    [Arguments]  ${physicianTitle}
    Select Dropdown Option  ${physicianTitleDropdownElement}  ${physicianTitle}

Enter Care Site Name
    [Arguments]  ${careSiteName}
    Enter Text Into Input Field  ${careSiteNameElement}  ${careSiteName}

Enter Care Site Address
    [Arguments]  ${careSiteAddress}
    Enter Text Into Input Field  ${careSiteAddressElement}  ${careSiteAddress}

Enter User Email
    [Arguments]  ${email}
    Enter Text Into Input Field  ${userEmailElement}  ${email}

Enter User Password
    [Arguments]  ${password}
    Enter Text Into Input Field  ${userPasswordElement}  ${password}
