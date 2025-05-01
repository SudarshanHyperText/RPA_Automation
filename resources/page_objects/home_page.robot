*** Settings ***
Resource    base_page.robot
Resource    ../locators/home_page_locators.robot

*** Keywords ***
Verify Home Page Loaded
    Verify Page Title    ${HOME_PAGE_TITLE}

Click Shop Now
    Wait Until Element Is Visible    ${SHOP_NOW_BUTTON}
    Click Element    ${SHOP_NOW_BUTTON}


    