***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

***Keywords***
Go to doctors registration page from root 
    click link  ${drop_application}
    click link  ${link_doc_application}

Enter Test Data for Doctor Registration
    [Arguments]     ${nid}  ${fullname}     ${email}    ${phone}    ${basicdegree}  ${advdegree}    ${speciality}   ${workplace}    
    #set selenium speed  1s
    page should contain     Doctor Application Form
    input text  ${txt_nid}     ${nid}
    input text  ${txt_full_name}     ${fullname}
    input text  ${txt_email}     ${email}
    input text  ${txt_phone}     ${phone}
    input text  ${txt_basic_degree}     ${basicdegree}
    input text  ${txt_adv_degree}     ${advdegree}
    input text  ${txt_speciality}     ${speciality}
    input text  ${txt_work_place}     ${workplace}

Upload Doctor Image 
    [Arguments]     ${choose_button}     ${path}
    wait until page contains element    ${choose_button}     60s
    choose file     ${choose_button}     ${path}
