*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://thetestingworld.com/testings
${Browser}    Chrome

*** Keywords ***
#-------- User Defined Keyword Without Arguements -------------------------
Start and Close Browser Without Arguements
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window

#------- User Defined Keyword With Arguements -----------------------------
Start and Close Browser With Arguements
    [Arguments]    ${User_URL}    ${User_Browser}
    Open Browser    ${User_URL}     ${User_Browser}
    Maximize Browser Window

#------- User Defined Keyword With Return Value -----------------------------
Start and Close Browser With Return Value
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    ${title}=    get title
    [Return]    ${title}