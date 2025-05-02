*** Settings ***
Resource    base_page.robot
Resource    ../locators/about_page_locators.robot

*** Variables ***
${Expected_Header}     Worlds first creator

*** Keywords ***

Click About Link
    Wait Until Element Is Visible    ${About_Button}
    Click Element    ${About_Button}

Verify About_Header
    Wait Until Element Is Visible    ${About_Header}
    ${Actual_Header}=    Get Text    ${About_Header}    
    Should Be Equal As Strings    ${Actual_Header}    ${Expected_Header}

Verify Image is Visible
    Wait Until Element Is Visible    ${About_Image}
    Element Should Be Visible    ${About_Image}
    