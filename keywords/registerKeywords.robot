*** Settings ***
Resource    ../resources/import.robot

*** Keywords ***
Type First Name
    [Arguments]             ${input}
    Wait and input text     ${txtFirstName}         ${input}

Type Middle Name 
    [Arguments]             ${input}
    Wait and input text     ${txtMiddleName}        ${input}

Type Last Name 
    [Arguments]             ${input}
    Wait and input text     ${txtLastName}          ${input}

Type Email Address 
    [Arguments]             ${input}
    Wait and input text     ${txtEmailAddress}      ${input}

Type Password 
    [Arguments]             ${input}
    Wait and input text     ${txtPassword}          ${input}

Type Confirm Password 
    [Arguments]             ${input}
    Wait and input text     ${txtConfirmation}      ${input}

Click on Sign Up for Newsletter checkbox 
    Wait and click element  ${ckbIsSubscribed}

Click on Register button
    Wait and click element  ${btnRegister}

Input all valid data to register form
    [Arguments]             ${email}                ${password}
    Type First Name                                 ${firstname}
    Type Last Name                                  ${lastname}
    Type Email Address                              ${email}
    Type Password                                   ${password}
    Type Confirm Password                           ${password}
    Click on Sign Up for Newsletter checkbox 

Verify registered successfully
    Page Should Contain     ${msgRegisteredSuccessfully}