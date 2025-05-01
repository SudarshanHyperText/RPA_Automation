*** Settings ***
Library    String
Resource    base_page.robot
Resource    ../locators/product_page_locators.robot

*** Variables ***
${WAIT_TIMEOUT}    10    # Seconds to wait for elements

*** Keywords ***
Verify Product Page Loaded
    Wait Until Element Is Visible    ${PRODUCT_LIST_CONTAINER}    timeout=${WAIT_TIMEOUT}

Verify Product Search Bar Is Loaded
    Wait Until Element Is Visible    ${Product_Search_Bar}    timeout=${WAIT_TIMEOUT}

Search For Product
    [Arguments]    ${search_Term}
    Input Text    ${Product_Search_Bar}    ${Search_Term}

Verify Searched Product   
    [Arguments]    ${search_Term}
    ${Actual_Title}=    Get Text    ${Searched_Element_Title} 
    ${search_Term}=    Convert To Lower Case    ${search_Term}
    ${Actual_Title}=    Convert To Lower Case    ${Actual_Title}
    Should Be Equal As Strings    ${Actual_Title}    ${search_Term}   

Click On Radio Brand_Name_Radio_Buttons
    [Arguments]    ${Brand_Name}
    ${locator}=    Replace String    ${Brand_Name_Radio_Buttons}    {brand}    ${Brand_Name}
    Wait Until Element Is Visible    ${locator}    timeout=${WAIT_TIMEOUT}
    Click Element    ${locator}
    