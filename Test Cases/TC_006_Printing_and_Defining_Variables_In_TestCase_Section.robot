*** Settings ***

*** Variables ***

*** Test Cases ***
Robot Printing and Defining Variables in Test Case Section
    ${Weather_Today}=    set variable    35 Degree Celsius
    log to console    ${Weather_Today}