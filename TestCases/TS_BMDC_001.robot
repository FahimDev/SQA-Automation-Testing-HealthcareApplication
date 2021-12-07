***Settings***
Library     SeleniumLibrary
Resource    ../Resources/HomePageKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser

***Variables***
${DIRECTORY_PATH}   C:\\Users\\Asus\\Downloads
${DOWNLOAD_FILE_NAME}   software.zip
${browser}  chrome
${link}  https://health-bmdc.research.glitch-innovations.com/

***Test Cases***
TC_BMDC_Welcome_01
    [Tags]  p0
    Maximize Browser Window
    sleep   3s

TC_BMDC_Welcome_02
    [Tags]  p2
    ${hyperlinks}=  Count Hyper Links
    log to console  ${hyperlinks} 
    

TC_BMDC_Welcome_03
    [Tags]  p1
    Visit A NewsFeed

TC_BMDC_Welcome_04
    [Tags]  p0
    Download Desktop Software
    Check Download File  ${DIRECTORY_PATH}  ${DOWNLOAD_FILE_NAME}

***Keywords***