*** Settings ***
Library    SeleniumLibrary
Resource     ../Resource/Login_resource.robot
Library    DataDriver    ../TestData/LoginData.xlsx  sheet_name=Sheet1

Suite Setup    Open Link
Suite Teardown    Close All Browsers
Test Template    InvalidLogin

*** Test Cases ***
LoginWithExcel


*** Keywords ***
InvalidLogin
    [Arguments]    ${username}    ${password}
     Login    ${username}    ${password}