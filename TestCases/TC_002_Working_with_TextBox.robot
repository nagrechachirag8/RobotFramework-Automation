*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.facebook.com/

*** Test Cases ***
Robot Working with TextBox
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Input Text    name:email    Chirag@gmail.com
    Input Text    xpath://input[@name='pass']    abcdefgh