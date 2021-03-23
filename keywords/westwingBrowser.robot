**** Settings ***
Library   SeleniumLibrary

*** Variables ***
${westwing_url}   https://www.westwingnow.de/
${web_browser}   firefox

*** Keywords ***

Navigate to Westwing Browser
     [Arguments]    ${web_browser}
     open browser     ${westwing_url}  ${web_browser}