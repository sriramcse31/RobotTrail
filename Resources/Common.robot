*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${list} =    Create List  --start-maximized  --headless    --no-sandbox       --done
${args} =     Create Dictionary    args=${list}
${desired caps} =     Create Dictionary    chromeOptions=${args}

*** Keywords ***
Open the browser
    Open Browser  about:blank  chrome  options=add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--start-maximized")
Close the browser
    Close Browser