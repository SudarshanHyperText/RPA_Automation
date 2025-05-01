*** Settings ***
Library    SeleniumLibrary
Resource    ../config/credentials.robot

*** Keywords ***
Open Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close Application
    Close Browser