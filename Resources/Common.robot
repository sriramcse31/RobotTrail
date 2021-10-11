*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open the browser
    Open Browser  about:blank  chrome  options=add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--start-maximized"); add_argument("--ignore-certificate-errors")
Close the browser
    Close Browser
