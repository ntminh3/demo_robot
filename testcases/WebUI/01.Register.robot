***Settings***
Resource             ../../resources/import.robot 
Suite Setup          Open browser with url          ${browser}            ${techpandaURL}
Suite Teardown       Close Browser

***Test Cases***
TC_01: Register success to system
    [Tags]      ui      register
    Click on Account menu
    Run Keyword And Ignore Error                Choose Menu Link                            Register
    Input all valid data to register form       ${email}                                    ${password}
    Set Suite Variable                          ${email}
    Click on Register button
    Verify registered successfully

TC_02: Verify user information is correct after registered successfully
    [Tags]      ui      register
    Click on Account menu
    Run Keyword And Ignore Error                Choose Menu Link                            My Account
    Run Keyword And Ignore Error                Choose My Account Menu Link                 Account Information
    Get element attribute and compare           ${txtAccInfoFirstName}                             value                   ${firstname}
    Get element attribute and compare           ${txtAccInfoLastName}                              value                   ${lastname}
    Get element attribute and compare           ${txtAccInfoEmailAddress}                          value                   ${email}