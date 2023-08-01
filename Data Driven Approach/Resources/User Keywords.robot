*** Settings ***
Library    ../Python Files/Fetch Locators from Json.py
Library    ../Python Files/Read Test data from Excel file.py

*** Keywords ***
Fetch Locators from Json file
    [Arguments]    ${Jsonpath}
    ${locator}=    fetch_locators    ${Jsonpath}
    [Return]    ${locator}

Fetch Rows number
    [Arguments]    ${SheetName}
    ${row num}=    fetch_number_of_rows    ${SheetName}
    [Return]    ${row num}

Read Excel data
    [Arguments]    ${SheetName}    ${row}    ${column}
    ${cell data}=    fetch_cell_data    ${SheetName}    ${row}    ${column}
    [Return]    ${cell data}