*** Settings ***
Library  SeleniumLibrary
Resource  ../Data/general_data.resource
Resource  ../Resources/common_page_objects.resource


*** Keywords ***
Amazon search
    Open Browser  https://www.amazon.in  ${Browser} 
    Maximize Browser Window
search a product
    Clear Element Text    ${homepage_search_field}
    Input Text    ${homepage_search_field}    ${product_name1}
    Sleep    2s
    Click Button    ${homepage_search_button}
select a product
    Wait Until Element Is Visible    ${product_link1}
    Click Element    ${product_link1}
    Switch Window    NEW 
add item to cart
    Wait Until Element Is Visible    ${add_to_cart}
    Click Element    ${add_to_cart}
view items in cart
    Click Element     ${Navigate_to_homepage} 
    Wait Until Page Contains Element    ${cart}
    Click Element    ${cart}
tear down
    Close Browser
    # Wait Until Page Contains    Google
    # Input Text    ${textbox}    amazon.in
    # Click Button   ${search_button}
    # Click Element    ${amazon.in}

# add items to cart
#     Input Text    ${homepage_search_field}    ${product_name1}
#     Click Button    ${homepage_search_button}
#     Wait Until Element Is Visible    ${product_link1}
#     Sleep    2s
#     Click Element    ${product_link1}
#     Switch Window    NEW
#     Wait Until Element Is Visible    ${add_to_cart}
#     Click Element    ${add_to_cart}
#     Click Element  ${add_to_cart}
#     Sleep    5s
#     Close Browser



# add multiple items to cart
#     Wait Until Element Is Visible    ${homepage_search_field}
#     Input Text    ${homepage_search_field}    ${product_name1}
#     Click Button    ${homepage_search_button}
#     Sleep    2s
#     Click Element    ${product_link1}
#     Switch Window    NEW
#     Wait Until Element Is Visible    ${add_to_cart}
#     Click Element    ${add_to_cart}
#     Wait Until Element Is Visible    ${Navigate_to_homepage}
#     Click Element    ${Navigate_to_homepage}
#     Wait Until Element Is Visible    ${homepage_search_field}
#     Input Text    ${homepage_search_field}    ${product_name2}
#     Click Button    ${homepage_search_button}
#     Click Element    ${product_link1}
#     Close All Browsers
    



    
    