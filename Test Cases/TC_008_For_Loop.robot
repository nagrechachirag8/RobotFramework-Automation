*** Settings ***

*** Variables ***

*** Test Cases ***
Robot Run For Loop
    FOR    ${i}    IN RANGE    1    10
    log to console    ${i}
    END