***Settings***
Documentation   Check if Doctor's application for registration works
Library     SeleniumLibrary
Library     DataDriver  ../TestData/TestCasesAndData.xlsx   sheet_name=Doctor Registration Test Data

Resource    ../Resources/HomePageKeywords.robot
Resource    ../Resources/DoctorRegistrationKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser

#Test Template   Doctor Registration from public

***Variables***
${browser}  chrome
${link}  https://health-bmdc.research.glitch-innovations.com/

${success_reg}  Please Verify Your Email Address !
${existing_nid}     54164120


${choose_file}  css=[type='file']
#This is a static path for my test. If anyone using this code please edit your DIRECTORY_PATH
${DIRECTORY_PATH}  C:\\MyProperty\\SQA-Automation-Testing-HealthcareApplication\\TestData\\TestImage\\DemoDocImg.jpeg
****Test Cases***
TC_BMDC_Doctor_Application_01
    [Documentation]     Apply for Doctor registration with valid inputs
    [Tags]  p0
    [Template]  Doctor Registration from public
    ${nid}  ${fullname}     ${email}    ${phone}    ${basicdegree}  ${advdegree}    ${speciality}   ${workplace}    ${success_reg}    

TC_BMDC_Doctor_Application_02
    [Documentation]     Apply for Doctor registration without any data
    [Tags]  p0
    Go to doctors registration page from root 
    Hit Apply Button 

TC_BMDC_Doctor_Application_03
    [Documentation]     Apply for Doctor registration with existing nid
    [Tags]  p0
    ${success_reg}  Set Variable     The nid has already been taken.
    Doctor Registration from public     ${existing_nid}   DemoName  demo@dummy.com  01710000000  basicdegree  advdegree  speciality  workplace     ${success_reg}

***Keywords***
Doctor Registration from public
    [Arguments]     ${nid}  ${fullname}     ${email}    ${phone}    ${basicdegree}  ${advdegree}    ${speciality}   ${workplace}    ${success_reg}
    Go to doctors registration page from root 
    Enter Test Data for Doctor Registration     ${nid}  ${fullname}     ${email}    ${phone}    ${basicdegree}  ${advdegree}    ${speciality}   ${workplace}
    Upload Doctor Image   ${choose_file}  ${DIRECTORY_PATH}
    Hit Apply Button 
    sleep   2s
    Check Confirmnation   ${success_reg} 
    go back

