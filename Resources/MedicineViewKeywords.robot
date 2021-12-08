***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py
***Variables***
${match}   Brands
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
        click element   ${suggest_med_item}
    ELSE   
        click button    ${btn_option_generic}
        input text  ${txt_search_med}   ${search_value}
        #click element   ${suggest_med_item_gen}
    END

    sleep   3s
    go back
