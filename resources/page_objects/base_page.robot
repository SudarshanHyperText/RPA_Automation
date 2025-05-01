*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Title
    [Arguments]    ${expected_title}
    Title Should Be    ${expected_title}