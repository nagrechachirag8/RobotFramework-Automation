*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Working with Lists or Dropdown
    Open Browser    ${URL}    ${browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window

#------------- Select By Index --------------
    Select From List By Index    name:sex    2

#------------- Select By Value --------------
    Select From List By Value    name:sex    1

#------------- Select By Label --------------
    Select From List By Label    name:sex    Female