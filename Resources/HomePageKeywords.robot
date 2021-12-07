***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

***Keywords***
Open and visit website
    [Arguments]     ${url}      ${driver}
    Open Browser    ${url}      ${driver} 
    Maximize Browser Window
    #sleep 3 seconds


Close Browser
    Close All Browsers