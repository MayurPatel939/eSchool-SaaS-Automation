*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/Login_Locators.py

*** Keywords ***
# Login Test
open my browser
    [Arguments]     ${siteurl}     ${browser}
    open browser    ${siteurl}      ${browser}
    maximize browser window

click login button
    click button    ${btn_ClickOnLoginButton}

enter username
    [Arguments]     ${username}
    input text      ${txt_LoginUserName}    ${username}

enter password
    [Arguments]     ${password}
    input text      ${txt_LoginPassword}    ${password}

click sign in button
    click button    ${btn_SignInButton}

verify success login
    title should be     'Dashboard || eSchool - Saas

close browsers
    close all browsers