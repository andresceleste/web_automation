*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here from our own domain specific language utilizing keywords
...              provided by the imported SeleniumLibrary.
Library          SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com
${BROWSER}       Chrome
${DELAY}         0
${VALID USER}    standard_user
${VALID PASSWORD}    secret_sauce
${INVENTORY URL}     ${URL}/inventory.html

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Swag Labs

Go To Login Page
    Go To    ${URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Wait Until Page Contains Element    id=user-name
    Input Text    id=user-name    ${username}

Input Password
    [Arguments]    ${password}
    Wait Until Page Contains Element    id=password
    Input Text    id=password    ${password}

Submit Credentials
    Wait Until Page Contains Element    id=login-button
    Click Button    id=login-button

Verify Inventory Page
    Location Should Be    ${INVENTORY URL}
    Wait Until Page Contains Element    xpath=//span[contains(text(),'Products')]
    Title Should Be    Swag Labs