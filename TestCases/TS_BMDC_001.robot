***Settings***
Library     SeleniumLibrary
Resource    ../Resources/HomePageKeywords.robot

***Variables***
${browser}  chrome
${link}  https://health-bmdc.research.glitch-innovations.com/

***Test Cases***
TC_BMDC_Welcome_01
    Open and visit website  ${link}  ${browser}
    Close Browser

#TC_BMDC_Welcome_02

#TC_BMDC_Welcome_03

#TC_BMDC_Welcome_04

***Keywords***