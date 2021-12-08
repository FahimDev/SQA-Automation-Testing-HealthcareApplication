***Settings***
Documentation   Check the functionality of Welcome Page
Library     SeleniumLibrary
Resource    ../Resources/HomePageKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser

***Variables***
${DIRECTORY_PATH}   C:\\Users\\Asus\\Downloads  #Your default download path at browser
${DOWNLOAD_FILE_NAME}   software.zip    #The file name you want to download
${browser}  chrome
${link}  https://health-bmdc.research.glitch-innovations.com/

***Test Cases***
TC_BMDC_Welcome_01
    [Documentation]     Check If welcome page can be visited
    [Tags]  p0
    Maximize Browser Window
    sleep   3s

TC_BMDC_Welcome_02
    [Documentation]     Count the hyperlinks in welcome page
    [Tags]  p2
    ${hyperlinks}=  Count Hyper Links
    log to console  ${hyperlinks} 
    

TC_BMDC_Welcome_03
    [Documentation]     Visit one of the hyperlinks
    [Tags]  p1
    Visit A NewsFeed

TC_BMDC_Welcome_04
    [Documentation]     Software Download
    [Tags]  p0
    Download Desktop Software
    Check Download File  ${DIRECTORY_PATH}  ${DOWNLOAD_FILE_NAME}
