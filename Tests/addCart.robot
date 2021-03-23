*** Settings ***
Library   SeleniumLibrary
Resource   ../keywords/westwingBrowser.robot
Resource   ../keywords/manageWishlists.robot
Resource   ../keywords/loginWestwing.robot
Resource   ../ObjectRepository/objectRepo.robot
Documentation     An eCommerce Test to add and delete the product from the wishlist from Westwing website
*** Variables ***

*** Test Cases ***

Test to Add and Delete product from Wishlist

     Navigate to Westwing Browser    chrome
     sleep  7s
     ${consent_cookies} =  Get Text    ${consent_element}
     log to console    The element is ${consent_cookies}
     run keyword if  '${consent_cookies}'=='Cookies akzeptieren'  click button   ${consent_element}
     Wait Until Element Is Visible   ${Möbel}
     Click Element   ${Möbel}
     sleep    4s
     Login to westwing   nitishchandrapatil@gmail.com    Patil@02
     Select Product to Wishlist
     Delete Product from Wishlist
     Verify Product Deletion from Wishlist