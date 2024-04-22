*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://practicetestautomation.com/practice-test-login/
${browser}    chrome

*** Keywords ***
Open Link
    Open Browser           ${url}        ${browser}
    Maximize Browser Window

Login
    [Arguments]    ${username}    ${password}
    Input Text    xpath://*[@id="username"]    ${username}
    Input Text    id:password    ${password}
    Click Button    id:submit

Close Browsers
    Close All Browsers