*** Settings ***
Library  SeleniumLibrary
Resource  ../Data/general_data.resource
Resource  ../Resources/common_page_objects.resource
Resource    ../keywords/search.robot

*** Test Cases ***


add an item to cart
    Amazon search
    search a product
    select a product
    add item to cart
    view items in cart
    Sleep    5s
    tear down
    

