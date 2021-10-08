*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open the browser
    Open Browser  about:blank  chrome
Close the browser
    Close Browser