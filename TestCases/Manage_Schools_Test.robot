*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_Keywords.robot
Resource    ../Resources/Manage_Schools_Keywords.robot
Library    Process

*** Variables ***
${siteurl}      https://wrteam.net/
${browser}      chrome

${usr}  superadmin@gmail.com
${pwd}  superadmin

#   Manage Schools Data
${schoolname}   CodexSchool
${email}    abcd@gmail.com
${phone}    8142425262
${tagline}  New School Opening
${address}  Hospital road, Bhuj
${code}     SCHCOD
${domain}   Codex.com

${UPLOAD_EXE}   C:/Users/GURUDEV/Documents/file_upload.exe

*** Test Cases ***
Manage Schools
    open my browser     ${siteurl}      ${browser}

    click login button
    enter username  ${usr}
    enter password  ${pwd}
    click sign in button

    click on schools link

    wait until element is visible    ${link_Click_On_Manage_Schools}   timeout=10s
    click on Manage School Link

    enter school name   ${schoolname}

    # upload file from windows system
    click on upload button
    run process     ${UPLOAD_EXE}

    wait until element is visible    ${txt_School_Email}    timeout=10s
    enter school email      ${email}

    wait until element is visible    ${txt_School_Phone}    timeout=10s
    enter school phone      ${phone}

    wait until element is visible    ${txt_School_Tagline}    timeout=10s
    enter school tagline    ${tagline}

    wait until element is visible    ${txt_School_Address}    timeout=10s
    enter school address    ${address}

    clear element text      ${txt_School_Code_Prefix}
    wait until element is visible    ${txt_School_Code_Prefix}    timeout=10s
    enter school code prefix    ${code}

    click on domain type

    #wait until element is enabled    ${txt_Default_Domain}    timeout=10s
    enter domain name   ${domain}

    click on submit
    sleep    10


