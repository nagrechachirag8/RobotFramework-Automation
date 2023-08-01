*** Settings ***
Library    ../Python Functions/Read Elements from Json.py
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Registration
    ${Username}=    Read Elements Locator    Registration.username_textbox_name
    ${Email}=    Read Elements Locator    Registration.email_textbox_name
    ${Password}=    Read Elements Locator    Registration.password_textbox_name
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Input Text    name:${Username}    Chirag Nagrecha
    Input Text    name:${Email}    chirag.nagrecha@gmail.com
    Input Text    name:${Password}    123456789


*** Keywords ***
Read Elements Locator
    [Arguments]    ${Jsonpath}
    ${result}=    read_elements_from_json    ${Jsonpath}
    [Return]    ${result}