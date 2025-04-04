*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Register_Your_School_Keywords.robot

*** Variables ***
${siteurl}  https://wrteam.net/
${browser}  chrome

${schoolName}    BhujEnglish
${email}    bhujenglish@gmail.com
${phone}    9988776655
${address}  Hospital Road Bhuj
${tagline}  New School Opening

*** Test Cases ***
Register_School_Test
    open browser    ${siteurl}      ${browser}
    maximize browser window

    click on Register Your School

    Wait Until Element Is Visible   ${txt_YourSchoolName}   timeout=10s
    enter your school name    ${schoolName}

    Wait Until Element Is Visible  ${txt_Email}   timeout=10s
    enter email     ${email}

    Wait Until Element Is Visible   ${txt_MobileNumber}   timeout=10s
    enter phone number      ${phone}

    Wait Until Element Is Visible   ${txt_Address}   timeout=10s
    enter address       ${address}

    Wait Until Element Is Visible   ${txt_tagline}   timeout=10s
    enter tagline       ${tagline}

    #captch not handle due to robot
    #click on captcha
    sleep   10
    close browser