*** Settings ***
Documentation    A test suite with a single test for valid login.
...
...              This test has a workflow that is created using keywords in the imported resource file.
Resource         ../resources/resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    ${VALID PASSWORD}
    Submit Credentials
    Verify Inventory Page
    [Teardown]    Close Browser