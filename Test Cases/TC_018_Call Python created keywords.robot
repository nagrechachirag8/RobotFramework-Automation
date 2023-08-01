*** Settings ***
# To call any functions which are created using python we need to call the file first
Resource    ../Resources/Call Keywords created using Python.robot

*** Variables ***

*** Test Cases ***
#Create Folder 1
#    Create Folder at Runtime With no Arguements and No return
#
#Create Folder 2
#    Create Folder at Runtime With Arguements and No return    TCS    Chirag

Return Value Test case
    Return Value    10    20
