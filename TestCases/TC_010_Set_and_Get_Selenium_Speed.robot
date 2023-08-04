*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Set and Get Selenium Speed
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window

#---------- Set Selenium Speed -------------
    Set Selenium Speed    5
    Input Text    name:fld_username    Chirag
    Input Text    name:fld_email    chiragnagrecha@gmail.com