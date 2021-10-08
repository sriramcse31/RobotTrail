*** Settings ***
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot

*** Test Cases ***
User must sign in to continue
    [Documentation]  To check that the user is prompted to login
    [Tags]  sripada

    Common.Open the browser
    Amazon.Launch Application under Test
    Amazon.Search for an item to purchase
    Amazon.Add Item to Shopping cart
    Amazon.Proceed to checkout
    Amazon.User should be prompted to login to the portal
    Common.Close the browser