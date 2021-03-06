*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${list} =    Create List  --start-maximized  --headless    --no-sandbox       --done
${args} =     Create Dictionary    args=${list}
${desired caps} =     Create Dictionary    chromeOptions=${args}

*** Keywords ***
Open the browser
    Open Browser  about:blank  firefox  options=add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--start-maximized"); add_argument("--ignore-certificate-errors")
Close the browser
    Close Browser
