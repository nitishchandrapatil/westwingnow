*** Settings ***
Library   SeleniumLibrary
Resource   ../ObjectRepository/objectRepo.robot

*** Variables ***


*** Keywords ***

Login to westwing
    [Arguments]   ${userName}   ${password}
    Sleep  3s
    Input Text   ${email_address}     ${userName}
    Input Text   ${password_locator}     ${password}
    Sleep   3s
    #${validate_checkbox}     Page Should Contain Checkbox     //input[@name='isClubNewsletterSubscribed']
    Click Element   ${consent_checkbox}
    Click Element   ${loginButton}