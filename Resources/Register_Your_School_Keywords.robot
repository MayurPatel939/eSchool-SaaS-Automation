*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/Register_Your_School_Locators.py

*** Keywords ***
# Register Your School Test
click on Register Your School
    click button    ${btn_ClickOnRegisterYourSchool}

enter your school name
    [Arguments]     ${schoolname}
    input text      ${txt_YourSchoolName}   ${schoolname}

enter email
    [Arguments]     ${email}
    input text      ${txt_Email}       ${email}

enter phone number
    [Arguments]     ${phone}
    input text      ${txt_MobileNumber}     ${phone}

enter address
    [Arguments]     ${address}
    input text      ${txt_Address}      ${address}

enter tagline
    [Arguments]     ${tagline}
    input text      ${txt_tagline}  ${tagline}

click on captcha
    click button    btn_captcha