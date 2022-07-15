*** Settings ***
Resource    ../resources/import.robot

*** Keywords ***

Open browser with url
    [Arguments]     ${browser}      ${url}
    Open Browser        ${url}      ${browser}
    Maximize Browser Window

Wait and input text
    [Arguments]    ${locator}    ${value}
    Wait Until Element Is Visible     ${locator}
    Input Text    ${locator}    ${value}

Wait and click element
    [Arguments]    ${locator}
     Wait Until Element Is Visible     ${locator}
     Click Element    ${locator}

Check Element Visible
    [Arguments]    ${locator}
    ${present}=    Run Keyword And Return Status    Element Should Be Visible       ${locator}    10s
    [Return]    ${present}

Clear text and input
    [Arguments]     ${element}      ${text} 
    Wait Until Element Is Visible   ${element}
    Clear Element Text      ${element}
    Input Text      ${element}      ${text}

Get element text and compare with
    [Arguments]         ${element}      ${expected}
    Wait Until Element Is Visible   ${element}
    ${actual}=   Get Text     ${element}
    Should Be Equal     ${actual}      ${expected}

Get element attribute and compare
    [Arguments]         ${element}      ${attribute}      ${expected}
    Wait Until Element Is Visible   ${element}
    ${actual}=   Get Element Attribute     ${element}   ${attribute}
    Should Be Equal     ${actual}      ${expected}

Get value from Json node
    [Arguments]     ${jsonBody}     ${node}
    ${list}=      Get Value from Json     ${jsonBody}  ${node}
    ${getValueFromList}=         Get from List   ${list}    0
    RETURN  ${getValueFromList}