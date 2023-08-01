*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Start Browser Keyword
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Close browser Keyword
    ${Title}=    get title
    Log    ${Title}
    Close Browser
