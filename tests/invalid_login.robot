*** Settings ***
Documentation     A test suite containing tests related to invalid login.
...
...               These tests are data-driven by their nature. They use a single keyword, specified with Test Template
...               setting, that is called with different arguments to cover different scenarios.
...
...               This suite also demonstrates using setups and teardowns in different levels.

Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
Test Setup        Go To Login Page
Test Template     Login With Invalid Credentials Should Fail
Resource          ../resources/resource.robot

*** Test Cases ***               USER NAME        PASSWORD             ERROR_MESSAGE
Invalid Username                 invalid          ${VALID PASSWORD}    Epic sadface: Username and password do not match any user in this service
Invalid Password                 ${VALID USER}    invalid              Epic sadface: Username and password do not match any user in this service
Invalid Username And Password    invalid          whatever             Epic sadface: Username and password do not match any user in this service
Empty Username                   ${EMPTY}         ${VALID PASSWORD}    Epic sadface: Username is required
Empty Password                   ${VALID USER}    ${EMPTY}             Epic sadface: Password is required
Empty Username And Password      ${EMPTY}         ${EMPTY}             Epic sadface: Username is required

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}    ${error_message}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Login Should Have Failed  ${error_message}

Login Should Have Failed
    [Arguments]    ${error_message}
    Wait Until Page Contains    ${error_message}