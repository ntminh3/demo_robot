*** Settings ***
Resource    ../../resources/import.robot

*** Keywords ***
Click on Account menu
    Wait and click element      ${btnAccount}

Choose Menu Link
    [Arguments]                 ${accountMenuLink}
    Wait and click element      //header//a[contains(text(), '${accountMenuLink}')]

Click on Mobile menu
    Wait and click element      ${tabMobile}