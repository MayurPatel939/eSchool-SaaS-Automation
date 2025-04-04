*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Login_Keywords.robot

*** Variables ***
${URL}           https://wrteam.net/
${BROWSER}       Chrome
${USERNAME}      superadmin@gmail.com
${PASSWORD}      superadmin

${INVALIAD_USERNAME}        ABC@GMAIL.COM
${INVALIAD_PASSWORD}        123

*** Test Cases ***
Verify Login with Valid Credentials
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window
    click login button

    Wait Until Element Is Visible    ${txt_LoginUserName}
    enter username      ${USERNAME}
    enter password      ${PASSWORD}
    click sign in button
    title should be    Dashboard || eSchool - Saas
    #verify success login
    Capture Page Screenshot
    Close Browser

Verify Login with Invalid Credentials
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window
    click login button
    enter username      ${INVALIAD_USERNAME}
    enter password      ${INVALIAD_PASSWORD}
    click sign in button
    wait until element is visible    xpath=//div[@class='jq-toast-single jq-has-icon jq-icon-error']       timeout=10s
    log to console    The provided credentials do not match our records.
    Capture Page Screenshot
    Close Browser