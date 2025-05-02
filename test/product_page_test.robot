*** Settings ***
Documentation   
Resource    ../resources/keywords/common_keywords.robot
Resource    ../resources/page_objects/home_page.robot
Resource    ../resources/page_objects/product_page.robot
Test Setup    Open Application
Test Teardown    Close Application

*** Variables ***
${Search_Term_boat}    boat
${Search_Term_titan}    titan
${Search_Term_fastrack}    fastrack
${Search_Term_sports}    sports

*** Test Cases ***

Navigate To Shop Page
    [Documentation]    
    Verify Home Page Loaded
    Click Shop Now
    Verify Product Page Loaded
    Sleep    2s

Search Product
    Verify Home Page Loaded
    Click Shop Now
    Verify Product Page Loaded
    Verify Product Search Bar Is Loaded
    Search For Product    ${Search_Term_boat}
    Verify Searched Product    ${Search_Term_boat}
    Sleep    2s

Click On Brand Radio Button
    Verify Home Page Loaded
    Click Shop Now
    Click On Radio Brand_Name_Radio_Buttons    boAt
    Click On Radio Brand_Name_Radio_Buttons    Titan
    Click On Radio Brand_Name_Radio_Buttons    Fastrack
    Click On Radio Brand_Name_Radio_Buttons    Sports
