*** Settings ***

*** Variables ***

*** Test Cases ***
Robot Execute Run Keyword Normally and Conditionally
    ${Variable_1}=    set variable    log to console

#---------------- Normal Execution of Run Keyword --------------------
    run keyword    ${Variable_1}     Chirag

#---------------- Conditional Execution of Run Keyword --------------------
    ${Variable_2}=    set variable    Chirag Nagrecha
    run keyword if    '${Variable_2}'=='Chirag Nagrecha'    log to console    Details Matched
