*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Schools_Register_Form_Field_Keywords.robot
Resource  ../Resources/Login_Keywords.robot

*** Variables ***
${siteurl}  https://wrteam.net/
${browser}  chrome
${usr}  superadmin@gmail.com
${pwd}  superadmin

#   Manage Form Data
${name}     bel
${txt}      Text

*** Test Cases ***
Manage Form Test
    open browser    ${siteurl}      ${browser}
    maximize browser window
    click login button
    enter username  ${usr}
    enter password  ${pwd}

    click sign in button
    Wait Until Element Is Visible  ${link_school}  timeout=10s
    click on school

    Wait Until Element Is Visible  ${link_School_Registration_Form_Fields}  timeout=10s
    click on school registration
    enter name      ${name}

    Wait Until Element Is Visible  ${dropdown_type}  timeout=10s
    click on type dropdown

    Wait Until Element Is Visible  ${dropdown_value}  timeout=10s
    selecting value from dropdown    ${txt}

    Wait Until Element Is Visible  ${btn_submitbtn}  timeout=10s
    click on submit button
    sleep    4
    reload page
    sleep    3
    close browser



