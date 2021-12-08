***Settings***
Documentation   Check the functionality of Medicine Page

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

***Test Cases***
TC_BMDC_Medicine_01
    [Documentation]     Check If Medicine page can be visited
    [Tags]  p0
    set selenium speed  1s
    Go to Medicine List Page

TC_BMDC_Medicine_02 
    [Documentation]     Search Medicine by Brands filter using search bar
    [Tags]  p1
    #set selenium speed  1s
    Search medicine     ${brand}  ${search_value_bra}

TC_BMDC_Medicine_03
    [Documentation]     Search Medicine by Generic filter using search bar
    [Tags]  p1
    #set selenium speed  1s
    Search medicine     ${generic}  ${search_value_gen}
