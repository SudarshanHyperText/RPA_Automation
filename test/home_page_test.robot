*** Settings ***
Documentation    Tests for the home page functionality
Resource    ../resources/keywords/common_keywords.robot
Resource    ../resources/page_objects/home_page.robot
Resource    ../resources/page_objects/product_page.robot
Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
Verify Home Page Title
    [Documentation]    Verify the website title is correct
    Verify Home Page Loaded

Navigate To Shop Page
    [Documentation]    Verify Shop Now button redirects correctly
    Verify Home Page Loaded
    Click Shop Now
    Verify Product Page Loaded
    Sleep    2s
    # You could add verification for shop page here 