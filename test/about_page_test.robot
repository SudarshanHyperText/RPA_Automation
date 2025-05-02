*** Settings ***
Documentation    
Resource    ../resources/keywords/common_keywords.robot
Resource    ../resources/page_objects/home_page.robot
Resource    ../resources/page_objects/about_page.robot
Test Setup    Open Application
Test Teardown    Close Application


*** Test Cases ***

Verify User Able TO Click On About Link
    [Documentation]    
    Verify Home Page Loaded
    Click Shop Now
    Click About Link

Verify Header Of About Page
    [Documentation]    
    Verify Home Page Loaded
    Click Shop Now
    Click About Link
    Verify About_Header

Verify Image Is Visible On About Page
    Verify Home Page Loaded
    Click Shop Now
    Click About Link
    Verify Image is Visible
