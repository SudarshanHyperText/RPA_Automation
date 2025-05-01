*** Settings ***
Resource    base_page.robot
Resource    ../locators/product_page.robot

*** Variables ***
${WAIT_TIMEOUT}    10    # Seconds to wait for elements

*** Keywords ***
Verify Product Page Loaded
    Wait Until Element Is Visible    ${PRODUCT_LIST_CONTAINER}    timeout=${WAIT_TIMEOUT}
    