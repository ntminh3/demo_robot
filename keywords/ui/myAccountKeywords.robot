*** Settings ***
Resource    ../../resources/import.robot

*** Keywords ***
Choose My Account Menu Link
    [Arguments]                 ${myAccountMenuLink}
    Wait and click element      //*[text() = '${myAccountMenuLink}']/..