*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Sleep
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Sleep    10 Seconds
    Maximize Browser Window