***Settings***
Documentation   Check the functionality of Medicine's Details Page

Library     SeleniumLibrary
Resource    ../Resources/HomePageKeywords.robot
Resource    ../Resources/MedicineViewKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser

***Variables***
${browser}  chrome
${link}  https://health-bmdc.research.glitch-innovations.com/
${search_value_bra}     Ace
${search_value_gen}  Para
${brand}    Brands
${generic}  Generics
${check_content}    Indication

***Test Cases***

TC_BMDC_Medicine_Details_01
    [Documentation]     Check if Medicine's details page have Indication section
    [Tags]  p0
    Go to Medicine List Page
    Search medicine     ${brand}  ${search_value_bra}
    Check element visibility   ${check_content} 

TC_BMDC_Medicine_Details_02
    [Documentation]     Check if Generic Hyperlink works on Medicine's Details page
    [Tags]  p2
    Visit Generic Page from Medicine Details
    sleep   2s