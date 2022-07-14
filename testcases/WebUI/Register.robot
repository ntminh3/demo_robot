***Settings***
Resource             ../resources/import.robot 
Suite Setup          Open browser with url          ${browser}            ${techpandaURL}
Suite Teardown       Close Browser

***Test Cases***
TC_01: Register success to system
    Click on Account menu
    Run Keyword And Ignore Error                Choose Menu Link            Register
    Input all valid data to register form       ${email}        ${password}
    Click on Register button
    Verify registered successfully

TC_02: Verify user information is correct after registered successfully
    Click on Account menu
    Run Keyword And Ignore Error                Choose Menu Link            My Account