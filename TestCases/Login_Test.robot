*** Settings ***
Library           SeleniumLibrary
Resource  ../Resources/Login_Keywords.robot
Test Template     Login With Credentials

*** Variables ***
${URL}            https://wrteam.net/
${BROWSER}        Chrome

*** Test Cases ***
Valid Login                superadmin@gmail.com         superadmin        Dashboard
Invalid Password           superadmin@gmail.com         wrongpass       The provided credentials do not match our records.
Invalid Username           wrongadmin                   superadmin      The provided credentials do not match our records.

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}    ${expected_result}
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window
    click login button
    enter username      ${username}
    enter password      ${password}
    click sign in button
    sleep    5
    Run Keyword If    '${expected_result}'=='Dashboard'     Page Should Contain     Dashboard
    ...               ELSE    Page Should Contain     ${expected_result}
    Close Browser
