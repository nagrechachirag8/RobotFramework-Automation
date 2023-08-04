*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Working with Keywords with or Without Arguements
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window

#---------------- With Arguements ----------------------------
    Enter Username Email and Password With Arguements

#---------------- Without Arguements ----------------------------
    Enter Username Email and Password Without Arguements    ChiragNagrecha    chiragnagrecha@gmail.com    Password@123

*** Keywords ***

#---------------- With Arguements ----------------------------
Enter Username Email and Password With Arguements
    Input Text    name:fld_username    Chiragnagrecha
    Input Text    name:fld_email    chiragnagrecha@gmail.com
    Input Text    name:fld_password    Password@123

#---------------- Without Arguements ----------------------------
Enter Username Email and Password Without Arguements
    [Arguments]    ${Username}    ${Email}    ${Password}
    Input Text    name:fld_username    ${Username}
    Input Text    name:fld_email    ${Email}
    Input Text    name:fld_password    ${Password}