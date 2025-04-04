*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/Manage_Schools_Locators.py


#   Manage Schools Elements
*** Keywords ***

click on schools link
    click element    ${link_school}

click on Manage School Link
    click element   ${link_Click_On_Manage_Schools}

enter school name
    [Arguments]  ${schoolname}
    input text  ${txt_School_Name}  ${schoolname}

click on upload button
    Click Element  ${btn_upload_btn}

enter school email
    [Arguments]  ${email}
    input text  ${txt_School_Email}     ${email}

enter school phone
    [Arguments]  ${phone}
    input text  ${txt_School_Phone}     ${phone}

enter school tagline
    [Arguments]  ${tagline}
    input text  ${txt_School_Tagline}   ${tagline}

enter school address
    [Arguments]  ${address}
    input text  ${txt_School_Address}   ${address}

enter school code prefix
    [Arguments]  ${code}
    input text  ${txt_School_Code_Prefix}   ${code}

click on domain type
    click element    ${radio_btn_Domain_Type}

enter domain name
    [Arguments]  ${domain}
    Execute JavaScript    document.getElementById("edit_custom_domain").value = "${domain}"
    #input text  ${txt_Default_Domain}   ${domain}

click on submit
    Execute JavaScript  window.scrollBy(1778, 871);
    click element    ${btn_submit_btn}