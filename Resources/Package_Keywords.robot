*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Package_Locators.py

*** Keywords ***
click on package link
    wait until element is visible       ${link_ClickOnPackage}      timeout=5sec
    #wait until page contains element    Package     timeout=5sec
    click element    ${link_ClickOnPackage}

click on create package link
    click element    ${link_ClickOnCreatePackage}

choose prepaid type
    click button    ${btn_Prepaid}

choose postpaid type
    click button    ${btn_Postpaid}

add Per Active Student Charges
    [Arguments]    ${STUDENTCHARGES}
    input text    ${txt_PerActiveStudentCharges}    ${STUDENTCHARGES}

addd Per Active Staff Charges
    [Arguments]    ${STAFFCHARGES}
    input text    ${txt_PerActiveStaffCharges}    ${STAFFCHARGES}

enter package name
    [Arguments]    ${NAME}
    input text    ${txt_PackageName}   ${NAME}

enter discription
    [Arguments]    ${DISCRIPTION}
    input text    ${txt_Description}   ${DISCRIPTION}

enter tagline
    [Arguments]    ${TAGLINE}
    input text    ${txt_Tagline}   ${TAGLINE}

enter no of days
    [Arguments]    ${DAYS}
    input text    ${txt_Days}   ${DAYS}

enter no of students
    [Arguments]    ${STUDENT}
    input text    ${txt_NoOfStudents}   ${STUDENT}

enter no of staff
    [Arguments]    ${STAFF}
    input text    ${txt_NoOfStaff}  ${STAFF}

add charges
    [Arguments]    ${CHARGES}
    input text    ${txt_Charges}    ${CHARGES}

click on hightlight package check box
    click element    ${checkbox_HighlightPackage}

# Features
click on Announcement Management
    click element    ${label_AnnouncementManagement}

click on Assignment Management
    click element    ${label_AssignmentManagement}

click on Attendance Management
    click element    ${label_AttendanceManagement}

click on Chat Module
    click element    ${label_ChatModule}

click on Exam Management
    Execute JavaScript  window.scrollBy(484, 869);
    click element    ${label_ExamManagement}

click on Expense Management
    click element    ${label_ExpenseManagement}

click on Fees Management
    click element    ${label_FeesManagement}

click on Holiday Management
    click element    ${label_HolidayManagement}

click on ID Card Certificate Generation
    click element    ${label_IDCardCertificateGeneration}

click on Lesson Management
    click element    ${label_LessonManagement}

click on School Gallery Management
    click element    ${label_SchoolGalleryManagement}

click on Slider Management
    click element    ${label_SliderManagement}

click on Staff Leave Management
    click element    ${label_StaffLeaveManagement}

click on Staff Management
    click element    ${label_StaffManagement}

click on Timetable Management
    click element    ${label_TimetableManagement}

Click on Web Site Management
    click element    ${label_WebsiteManagement}

Click on submit button
    click button    ${btn_Submit}

#   Update Rank
click on update rank button
    Execute JavaScript  window.scrollBy(433, 871);
    click button    ${btn_UpdateRank}