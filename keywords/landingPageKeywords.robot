*** Settings ***
Resource    ../resources/import.robot

*** Keywords ***
Click on Account menu
    Wait and click element      ${btnAccount}

Choose Register Link
    Wait and click element      ${linkRegister}