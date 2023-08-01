*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL1}    https://www.thetestingworld.com/testings/
${URL2}    https://www.facebook.com/

*** Test Cases ***
Robot Handle Multiple Window
#---------- Open Multiple Browsers -------------
    Open Browser    ${URL1}    Chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Open Browser    ${URL2}    Chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window

#--------- Switch Between Browsers and perform task -------------
    Switch Browser    1
    ${Current_URL}=    get location
    log to console    ${Current_URL}
    Input text    name:fld_username    Chirag Nagrecha
    Switch Browser    2
    ${Current_URL}=    get location
    log to console    ${Current_URL}
    Input Text    id:email    chiragnagrecha@gmail.com

#--------------------- Close all browsers -----------------------
    close all browsers