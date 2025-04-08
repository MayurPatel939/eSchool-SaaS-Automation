*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Package_Keywords.robot
Resource    ../Resources/Login_Keywords.robot

*** Variables ***
${URL}           https://wrteam.net/
${BROWSER}       chrome
${USERNAME}      superadmin@gmail.com
${PASSWORD}      superadmin

*** Test Cases ***
Verfy Publish Package
    open my browser     ${URL}    ${BROWSER}
    click login button
    enter username      ${USERNAME}
    enter password      ${PASSWORD}
    click sign in button
    click on package link
    sleep    5

    Run Keyword And Continue On Failure    Click link    xpath:(//a[@title='Publish Package'])[1]
    Log    Continued even if link was not clicked

    Run Keyword And Continue On Failure    Click link    (//a[@title='Unpublished Package'])[2]
    Log    Continued even if link was not clicked
    sleep    5
    Run Keyword And Continue On Failure    click button    xpath://button[text()='Yes, Change it']












