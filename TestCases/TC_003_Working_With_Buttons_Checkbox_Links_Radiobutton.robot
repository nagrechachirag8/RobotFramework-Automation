*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Working with Buttons Checkbox Links Radiobuttons
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)    executable_path=C:\Users\sai\PycharmProjects\RobotAutomation\Driver\chromedriver.exe
    Maximize Browser Window

#------------- Button ----------------------
    Input Text    name:fld_username    Chirag
    Input Text    name:fld_password    abcdef
    Click Button    xpath://input[@type='submit']

#------------- Checkbox ----------------------
    Select Checkbox    name:terms

#------------- Radio Button ----------------------
    Select Radio Button    add_type    home

#------------- Link ----------------------
    Click Link    xpath://a[text()='Read Detail']