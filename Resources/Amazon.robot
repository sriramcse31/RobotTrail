*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Launch Application under Test
    Go To  http://amazon.com.au
Search for an item to purchase
    Wait Until Page Contains    Best Sellers2
    Input Text  twotabsearchtextbox  OMOTON
    Click Button    nav-search-submit-button
    Wait Until Page Contains    results for "OMOTON"
    #Click Element    xpath=//*[contains(text(),'OMOTON Ultra-Slim Bluetooth Wireless Keyboard, White')]
    #Wait Until Page Contains    Back to results
Add Item to Shopping cart
    Click Button    add-to-cart-button
Proceed to checkout
    Wait Until Element Is Visible    Proceed to checkout (1 item)
    Click Link    Proceed to checkout (1 item)
User should be prompted to login to the portal
    Wait Until Element Is Visible    id=createAccountSubmit
    Page Should Contain Element    id=createAccountSubmit
Close the Application
    Close Browser
Sriram is good
    Log  Do nothing
