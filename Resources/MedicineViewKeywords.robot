***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py
***Variables***
${match}   Brands
${result}   dummy
***Keywords***
Go to Medicine List Page
    click link  ${link_medicine_list}
    sleep   2s

Search medicine
    [Arguments]     ${type}     ${search_value}
    click button    ${btn_med_option}

    IF  '${type}'=='${match}'   
        click button    ${btn_option_brand}
        input text  ${txt_search_med}   ${search_value}
        sleep   1s
        ${result}   get text     ${suggest_med_item}
        click element   ${suggest_med_item}
        #Check element visibility   ${result}    
        log to console  ${result}
    ELSE   
        click button    ${btn_option_generic}
        input text  ${txt_search_med}   ${search_value}
        sleep   1s
        click element   ${suggest_gen_item}
    END



    sleep   3s

Check element visibility 
    [Arguments]     ${key}
    wait until page contains  ${key} 
    #Default time 5 Sec 

Visit Generic Page from Medicine Details
    sleep   1s
    click link  ${link_generic}