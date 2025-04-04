*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Schools_Locators.py
Variables  ../PageObjects/Login_Locators.py

*** Keywords ***
#   School Register Form fields
click on school
    click element   ${link_school}
click on school registration
    click element   ${link_School_Registration_Form_Fields}
enter name
    [Arguments]  ${name}
    input text  ${txt_enter_form_field_name}    ${name}
click on type dropdown
    click element   ${dropdown_type}
selecting value from dropdown
    [Arguments]  ${text}
    Select From List By Label   ${dropdown_value}   ${text}
click on submit button
    click button    ${btn_submitbtn}

