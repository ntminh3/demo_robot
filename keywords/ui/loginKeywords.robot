*** Settings ***
Resource    ../../resources/import.robot

*** Keywords ***
Type Login Email Address 
    [Arguments]                     ${input}
    Wait and input text             ${txtLoginEmailAddress}      ${input}

Type Login Password 
    [Arguments]                     ${input}
    Wait and input text             ${txtLoginPassword}          ${input}

Input all valid data to login form
    [Arguments]                     ${email}                     ${pass}
    Type Login Email Address        ${email}
    Type Login Password             ${pass}

Click login button
    Wait and click element          ${btnLogin}

Verify user logged in successfully
    Page Should Contain             My Dashboard
    