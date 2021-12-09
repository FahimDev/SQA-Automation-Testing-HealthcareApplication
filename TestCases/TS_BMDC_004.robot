***Settings***
Documentation   Check if Doctor's application for registration works
Library     SeleniumLibrary
Library     DataDriver  ../TestData/TestCasesAndData.xlsx   sheet_name=Doctor Registration Test Data

Resource    ../Resources/HomePageKeywords.robot
Resource    ../Resources/DoctorRegistrationKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser

Test Template   Doctor Registration from public

***Variables***
${browser}  chrome
${link}  https://health-bmdc.research.glitch-innovations.com/

#C:\\MyProperty\\SQA-Automation-Testing-HealthcareApplication\\TestData\\TestImage\\DemoDocImg.jpeg

${choose_file}  css=[type='file']
${DIRECTORY_PATH}  C:\\MyProperty\\SQA-Automation-Testing-HealthcareApplication\\TestData\\TestImage\\DemoDocImg.jpeg
****Test Cases***
TC_BMDC_Doctor_Application_01   using   ${nid}  ${fullname}     ${email}    ${phone}    ${basicdegree}  ${advdegree}    ${speciality}   ${workplace}
    [Documentation]     Apply for Doctor registration with valid inputs
    [Tags]  p0

***Keywords***
Doctor Registration from public
    [Arguments]     ${nid}  ${fullname}     ${email}    ${phone}    ${basicdegree}  ${advdegree}    ${speciality}   ${workplace}
    Go to doctors registration page from root 
    Enter Test Data for Doctor Registration     ${nid}  ${fullname}     ${email}    ${phone}    ${basicdegree}  ${advdegree}    ${speciality}   ${workplace}
    Upload Doctor Image   ${choose_file}  ${DIRECTORY_PATH}