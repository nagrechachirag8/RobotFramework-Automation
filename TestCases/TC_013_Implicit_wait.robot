*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Implicitly Wait
    open browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window

#------------ Default Implicit Time ----------------------
    ${Implicit_wait_time}=    get selenium implicit wait
    log to console    ${Implicit_wait_time}

#------------ Set Implicit Time ----------------------
    set selenium implicit wait    20 seconds
    ${Implicit_wait_time}=    get selenium implicit wait
    log to console    ${Implicit_wait_time}

    Input text    name:fld_username1    Chirag