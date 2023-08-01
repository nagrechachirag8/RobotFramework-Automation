*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://robotframework.org/

*** Test Cases ***
Robot Switch Between Windows
    Open Browser    ${URL}  Chrome  options=add_experimental_option("detach", True)
    maximize browser window
    click element    //a[text()='robotframework.org/rpa']

#------------ Switch to window with title/url ----------------
#    switch window    Robot Framework
#    ${current_URL}=    get location
#    log to console    ${current_URL}
#    switch window    LinkedIn Login, Sign in | LinkedIn
#    ${current_URL}=    get location
#    log to console    ${current_URL}

#----------- Switch Using Window Handler ----------------------
    @{list}    get window handles
    FOR    ${i}    IN    ${list}
    switch window    ${i}
    END