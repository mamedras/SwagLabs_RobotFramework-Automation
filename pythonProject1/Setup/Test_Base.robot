*** Settings ***
Library     SeleniumLibrary
Library     AllureLibrary
Variables    ..//Configs//Properties.py

*** Keywords ***
Launching the Browswer
         [Documentation]        opening the Browser
           [Setup]      Open Browser   ${Link}     ${browser}
            Maximize Browser Window
            Set Selenium Implicit Wait   ${timeout}
Closing The Browser
         [Documentation]        Closing the Browser
             Set Selenium Implicit Wait   ${timeout}
         [Teardown]  Close Browser