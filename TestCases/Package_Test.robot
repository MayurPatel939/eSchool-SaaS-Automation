*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Package_Keywords.robot
Resource    ../Resources/Login_Keywords.robot

*** Variables ***
${URL}           https://wrteam.net/
${BROWSER}       chrome
${USERNAME}      superadmin@gmail.com
${PASSWORD}      superadmin

${PACKAGE_NAME}     Montly Package
${DESCRIPTION}      Adding Monthly payment
${TAGLINE}          ACTIVE PREPAID PACKAGE
${TAGLINE1}         ACTIVE POSTPAID PACKAGE
${DAYS}             30
${STUDENTS}         100
${STAFF}            30
${CHARGES}          10


*** Test Cases ***
Create Package Test for prepaid
    open my browser     ${URL}    ${BROWSER}
    click login button
    enter username      ${USERNAME}
    enter password      ${PASSWORD}
    click sign in button
    click on package link
    click on create package link
    choose prepaid type
    enter package name      ${PACKAGE_NAME}
    enter discription       ${DESCRIPTION}
    enter tagline           ${TAGLINE}
    enter no of days        ${DAYS}
    enter no of students    ${STUDENTS}
    enter no of staff       ${STAFF}
    add charges             ${CHARGES}
    click on hightlight package check box
    click on Announcement Management
    click on Assignment Management
    click on Attendance Management
    click on Chat Module
    click on Exam Management
    click on Expense Management
    click on Fees Management
    click on Holiday Management
    click on ID Card Certificate Generation
    click on Lesson Management
    click on School Gallery Management
    click on Slider Management
    click on Staff Leave Management
    click on Staff Management
    click on Timetable Management
    click on Web site Management
    click on submit button
    sleep    3
    page should contain    Data Saved Successfully
    close browser

Create Package Test for Postpaid
    open my browser     ${URL}    ${BROWSER}
    click login button
    enter username      ${USERNAME}
    enter password      ${PASSWORD}
    click sign in button
    click on package link
    click on create package link
    choose postpaid type
    enter package name  ${PACKAGE_NAME}
    enter discription   ${DESCRIPTION}
    enter tagline       ${TAGLINE1}
    enter no of days    ${DAYS}
    add Per Active Student Charges  ${STUDENTS}
    addd Per Active Staff Charges   ${STAFF}
    click on hightlight package check box
    click on Announcement Management
    click on Assignment Management
    click on Attendance Management
    click on Chat Module
    click on Exam Management
    click on Expense Management
    click on Fees Management
    click on Holiday Management
    click on ID Card Certificate Generation
    click on Lesson Management
    click on School Gallery Management
    click on Slider Management
    click on Staff Leave Management
    click on Staff Management
    click on Timetable Management
    click on Web site Management
    click on submit button
    sleep    3
    page should contain    Data Saved Successfully
    close browser

Varify Update Rank
    open my browser     ${URL}    ${BROWSER}
    click login button
    enter username      ${USERNAME}
    enter password      ${PASSWORD}
    click sign in button
    click on package link
    drag and drop    css:tr[id='customId_6'] td:nth-child(2)   css:tr[id='customId_0'] td:nth-child(2)
    click on update rank button
    wait until page contains    Rank Updated Successfully
    page should contain    Rank Updated Successfully
    close browser






