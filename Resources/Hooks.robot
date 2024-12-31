*** Settings ***
Library  SeleniumLibrary


*** Variables ***
&{url}  loginUrl=http://localhost:8090/login
&{browsers}  defaultBrowser=chrome  firefoxBrowser=firefox
*** Keywords ***

Start Browser
    Open Browser  ${url.loginUrl}  ${browsers.defaultBrowser}
    Maximize Browser Window

End Browser
    Close Browser

