*** Settings ***
Library    Collections

*** Variables ***

*** Test Cases ***
Robot Define Lists and Do operations

#--------------- List Declaration ----------------
    @{Details}  create list    Chirag    Nagrecha    25    Chiragnagrecha@gmaill.com

#--------------- Get List length ----------------
    ${List_length}    get length    ${Details}
    log to console    ${List_length}

#--------------- Get Data From List ----------------
    ${List_data}=    get from list    ${Details}    1
    log to console    ${List_data}

#--------------- Run Loop in a List ----------------
    FOR    ${i}    IN    ${Details}
    log to console    ${i}
    END