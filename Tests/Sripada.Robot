*** Settings ***
Documentation  Learning Robotframework
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***

Testcase1
    Log  Hello World
    Log    Hello World 2
    Log    Hello World 3
    #Open Browser  https://www.sripadasrivallabhamahasamsthanam.com  chrome
    

Testcase2
    Log  Blank Test


User must sign in to continue
    [Documentation]  To check that the user is prompted to login
    [Tags]  sripada
    Open Browser  http://amazon.com.au  chrome
    Wait Until Page Contains    Select your address
    Input Text  twotabsearchtextbox  OMOTON
    Click Button    nav-search-submit-button
    Wait Until Page Contains    results for "OMOTON"
    Click Element    xpath=//*[contains(text(),'OMOTON Ultra-Slim Bluetooth Wireless Keyboard, White')]
    Wait Until Page Contains    Back to results
    Click Button    add-to-cart-button
    Click Link    Proceed to checkout*
    Page Should Contain Element    id=createAccountSubmit
    Close Browser