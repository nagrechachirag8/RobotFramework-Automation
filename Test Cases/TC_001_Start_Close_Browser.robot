*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Close Browser