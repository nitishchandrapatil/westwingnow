*** Settings ***

Library    SeleniumLibrary
Resource    ../ObjectRepository/objectRepo.robot

*** Keywords ***
Select Product to Wishlist
        Sleep   3s
        click element   ${add_wishlist}


Delete Product from Wishlist

        Wait Until Element Is Visible	 ${Wunschliste}
        ${verify_counter} =   Run Keyword And Return Status   Element Should Be Visible   ${Wunschliste_counter}
        run keyword if    ${verify_counter}    click element  ${Wunschliste_counter}
        sleep   3s
        click element    ${delete_product}

Verify Product Deletion from Wishlist

        sleep    3s
        ${wishlist_removal} =    get text   ${verify_wishlist_removal}
        run keyword if    '${wishlist_removal}' =='Die Wunschliste ist momentan leer'   log to console   Product removal is successful