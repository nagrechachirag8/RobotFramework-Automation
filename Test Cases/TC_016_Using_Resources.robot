*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Start_Close_browser_resources.robot

*** Variables ***

*** Test Cases ***
Robot Use Resource file which has User defined Keyword
#------------ User defined Keyword With Arguements ------------------
#    Start and Close Browser Without Arguements
#    Input Text    name:fld_username    Chirag Nagrecha

#----------- User defined Keyword Without Arguements ----------------
#    Start and Close Browser With Arguements    https://www.facebook.com/    Chrome

#----------- User defined Keyword With Return Value ----------------
    ${Res}=    Start and Close Browser With Return Value
    Log    ${Res}
    Input Text    name:fld_username    ${Res}