***Settings***
Library     SeleniumLibrary
Library     OperatingSystem
Variables   ../PageObjects/Locators.py

***Keywords***
Open and visit website
    [Arguments]     ${url}      ${driver}
    Open Browser    ${url}      ${driver} 
    Maximize Browser Window

Close Browser
    Close All Browsers

Count Hyper Links
    ${countLinks}=   get element count   ${anchor_tag}
    log to console  ${countLinks} 
    [Return]    ${countLinks}

Visit A NewsFeed
    click link  ${api_hyper_link}
    sleep   2s
    go back
    sleep   3s

Download Desktop Software
    click link  ${btn_doc_soft_download}
    sleep   3s

Check Download File
    [Arguments]     ${path}     ${file_name}
    File Should Exist   ${path}\\${file_name}
    Log    File was successfully downloaded to ${file_name}
