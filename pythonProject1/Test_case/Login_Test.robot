*** Settings ***
Library     SeleniumLibrary
Variables    ..//Configs//Login.py
Resource     ..//Setup//Test_Base.robot
Resource     ../Ressource_KeywordsPom/LoginPage.robot
Variables    ..//Configs//Properties.py
Library     OperatingSystem
*** Test Cases ***
Create Directory
                   [Setup]  Create Directory   ${CURDIR}/result
                   Log To Console    Directory is created
Login with invalid Username And Valid password
        [Documentation]  wrong Username And Valid password Should Fail
         [Setup]   Launching the Browswer
          [Tags]
          ...  allure.label.owner:Amedras Marwan
          ...  allure.label.severity:critical
          # ...
          Open Browser To Login Page    ${user_input}   ${pass_input}    ${invalidUserName}   ${valid_Password}          ${Submit_Btn}
          Element Text Should Be     ${Wrong_Creeds}    Epic sadface: Username and password do not match any user in this service
          Log To Console    Epic sadface: Username and password do not match any user in this service
          Capture Page Screenshot    filename=${CURDIR}/result/invalidUsername_Validpassword.png
          Attach File  ${CURDIR}/result/invalidUsername_Validpassword.png   name=Image  attachment_type=image/png
Login with valid Username And Invalid password
          [Documentation]  Correct Username And Invalid password Should Fail
          [Tags]
          ...  allure.label.owner:Amedras Marwan
          ...  allure.label.severity:critical
          # ...
            Open Browser To Login Page    ${user_input}   ${pass_input}    ${Valid_username}   ${invalidPassword}          ${Submit_Btn}
            Element Text Should Be     ${Wrong_Creeds}    Epic sadface: Username and password do not match any user in this service
            Log To Console    Epic sadface: Username and password do not match any user in this service
            Capture Page Screenshot    filename=${CURDIR}/result/valid_Username_AndInvalidpassword.png
            Attach File  ${CURDIR}/result/valid_Username_AndInvalidpassword.png   name=Image  attachment_type=image/png

Login with Empty Creeds
          [Documentation]  Empty creeds should Fail
          [Tags]
          ...  allure.label.owner:Amedras Marwan
          ...  allure.label.severity:critical
          # ...
             Click Element   ${Submit_Btn}
             Element Text Should Be    ${Wrong_Creeds}   Epic sadface: Username and password do not match any user in this service
             Log To Console   Epic sadface: Username and password do not match any user in this service
             Capture Page Screenshot    filename=${CURDIR}/result/EmptyCreeds.png
             Attach File  ${CURDIR}/result/EmptyCreeds.png   name=Image  attachment_type=image/png

Login with Invalid Username and Password
        [Documentation]  wrong creeds should Fail
         [Tags]
          ...  allure.label.owner:Amedras Marwan
          ...  allure.label.severity:critical
          # ...
         Open Browser To Login Page    ${user_input}   ${pass_input}    ${invalidUserName}   ${invalidPassword}          ${Submit_Btn}
         Element Text Should Be    ${Wrong_Creeds}    Epic sadface: Username and password do not match any user in this service
         Log To Console    Epic sadface: Username and password do not match any user in this service
         Capture Page Screenshot    filename=${CURDIR}/result/InvalidUsername_Password.png
         Attach File  ${CURDIR}/result/InvalidUsername_Password.png   name=Image  attachment_type=image/png
Login with Valid Username and Password
        [Documentation]  Correct creeds should be sucessful
         [Tags]
          ...  allure.label.owner:Amedras Marwan
          ...  allure.label.severity:critical
          # ...
         Open Browser To Login Page    ${user_input}   ${pass_input}    ${Valid_username}   ${valid_Password}          ${Submit_Btn}
         Element Text Should Be     ${HeadPage}    Products
         Log To Console    Products
         Capture Page Screenshot    filename=${CURDIR}/result/ValidUsername_Password.png
         Attach File  ${CURDIR}/result/ValidUsername_Password.png   name=Image  attachment_type=image/png
         [Teardown]   Closing The Browser
