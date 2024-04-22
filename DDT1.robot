*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Login_resource.robot
Suite Setup    Open Link
Suite Teardown    Close All Browsers
Test Template    Invalid Login



*** Test Cases ***    username    password
Right user empty pass     student    ${empty}
Empty user Right pass     ${Empty}    Password123
Wrong user wrong pass     abc        abc
wrong user empty pass     abc        ${empty}



*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Login    ${username}    ${password}
