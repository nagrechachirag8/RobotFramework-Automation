*** Settings ***
#Library    ../Python Functions/User Keyword with no Arguement and Return.py
#Library    ../Python Functions/User Keyword With Arguement and no return.py
Library    ../Python Functions/User Keyword with Arguement and return.py

*** Variables ***

*** Keywords ***
#Create Folder at Runtime With no Arguements and No return
#    create folder
#    log to console    "Folder created Successfully"
#    create sub folder
#    log to console    "Sub Folder created Successfully"

#Create Folder at Runtime With Arguements and No return
#    [Arguments]    ${Foldername}    ${Subfoldername}
#    Create folder    ${Foldername}
#    log to console    "Folder Created Successfully"
#    Create sub folder    ${Subfoldername}
#    log to console    "Subfolder created successfully"

Return Value
    [Arguments]    ${val1}    ${val2}
    ${Value}=    concatenate two values  ${val1}  ${val2}
    log to console    ${Value}