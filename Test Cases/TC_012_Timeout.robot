*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Timeouts
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    set selenium Timeout    20 Seconds
    ${Timeout_speed}=    get selenium Timeout
    log to console    ${Timeout_speed}
    wait until page contains    ABCDEF
    Input Text    name:fld_username    Chirag