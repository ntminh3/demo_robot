
***Settings***
Resource             ../../resources/import.robot 
Suite Setup          Open browser with url          ${browser}            ${techpandaURL}
Suite Teardown       Close Browser

***Test Cases***
TC_03: Login success to system
    [Tags]      ui      login
    Click on Account menu
    Run Keyword And Ignore Error                Choose Menu Link                            Log In
    Input all valid data to login form          ${email}                                    ${password}
    Click login button
    Verify user logged in successfully
    
