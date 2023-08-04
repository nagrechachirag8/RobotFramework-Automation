#----------------- Setup and Teardown at Test Case Level -----------------------
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Setup_and_Teardown_Resources.robot

*** Variables ***
${URL}    http://thetestingworld.com/testings
${Browser}    Chrome

*** Test Cases ***
Robot Setup and Teardown
    [Setup]    Start Browser Keyword  ${URL}  ${Browser}
    [Teardown]    Close browser Keyword
    Input Text    name:fld_username    Chirag Nagrecha



#----------------- Setup and Teardown at Test Suite Level -----------------------
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Setup_and_Teardown_Resources.robot
Test Setup    Start Browser Keyword    ${URL}    ${Browser}
Test Teardown    Close browser Keyword

*** Variables ***
${URL}    http://thetestingworld.com/testings
${Browser}    Chrome

*** Test Cases ***
Robot Setup and Teardown
    Input Text    name:fld_username    Chirag Nagrecha