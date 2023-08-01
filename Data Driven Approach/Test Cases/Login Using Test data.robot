*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/User Keywords.robot

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
Login
    open browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    maximize browser window

    ${Username locator}=    Fetch Locators from Json file    Registration.username_textbox_name
    ${Email locator}=    fetch locators from json file    Registration.email_textbox_name
    ${Password locator}=    Fetch Locators from Json file    Registration.password_textbox_name
    ${Confirm Password locator}=    fetch locators from json file    Registration.confirm_password_textbox_name

    ${rows}=    Fetch Rows number    Sheet1

    FOR    ${i}    IN RANGE    1    ${rows}+1
    ${username}=    Read Excel data    Sheet1    ${i}    1
    ${email}=    Read Excel data    Sheet1    ${i}    2
    ${password}=    Read Excel data    Sheet1    ${i}    3
    ${confirm password}=    Read Excel data    Sheet1    ${i}    4

    input text    name:${Username locator}    ${username}
    input text    name:${Email locator}  ${email}
    input text    name:${Password locator}    ${password}
    input text    name:${Confirm Password locator}    ${confirm password}

    sleep    3 seconds
    END
