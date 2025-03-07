*** Settings ***
Library     SeleniumLibrary
Resource    ..//Ressource_KeywordsPom/SortProduct_Page.robot
Resource    ..//Setup/Test_Base.robot
Variables   ..//Configs/Login.py
Resource    ..//Ressource_KeywordsPom/LoginPage.robot
Variables    ..//Configs//Properties.py
Library     OperatingSystem
*** Test Cases ***
Create Directory
                   [Setup]  Create Directory   ${CURDIR}/result
                   Log To Console    Directory is created
Open Browser Login Page
            [Documentation]     launch the browser and login into your account
             [Setup]   Launching the Browswer
               Open Browser To Login Page      ${user_input}   ${pass_input}    ${Valid_username}   ${valid_Password}          ${Submit_Btn}

HomePage Product Z To A
             [Documentation]     Sort Product to Z To A
             [Tags]
                            ...  allure.label.owner:Amedras Marwan
                            ...  allure.label.severity:Blocker
             # ...
             Sort Product Z_To_A    ${List_Product}[5]      ${List_Product}[4]    ${List_Product}[3]     ${List_Product}[2]      ${List_Product}[1]    ${List_Product}[0]
             Capture Page Screenshot    filename=${CURDIR}/result/sort_Z_TO_A.png
             Attach File  ${CURDIR}/result/sort_Z_TO_A.png   name=Image  attachment_type=image/png
HomePage Product A To Z
              [Documentation]     Sort Product to A To Z
              [Tags]
                            ...  allure.label.owner:Amedras Marwan
                            ...  allure.label.severity:Blocker
               # ...
             Sort Product A_To_Z    ${List_Product}[0]      ${List_Product}[1]    ${List_Product}[2]     ${List_Product}[3]      ${List_Product}[4]     ${List_Product}[5]
               Capture Page Screenshot    filename=${CURDIR}/result/sort_A_To_Z.png
               Attach File  ${CURDIR}/result//sort_A_To_Z.png   name=Image  attachment_type=image/png
HomePage Price low to high
              [Documentation]     Price low to high
              [Tags]
                            ...  allure.label.owner:Amedras Marwan
                            ...  allure.label.severity:Blocker
              # ...
             Sort Product low_To_high  ${List_Product}[4]     ${List_Product}[1]   ${List_Product}[2]  ${List_Product}[5]   ${List_Product}[0]   ${List_Product}[3]
               Capture Page Screenshot    filename=${CURDIR}/result/sort_low_to_high.png
               Attach File  ${CURDIR}/result/sort_low_to_high.png  name=Image  attachment_type=image/png
HomePage Price high to low
             [Documentation]     Price high to low
             [Tags]
                            ...  allure.label.owner:Amedras Marwan
                            ...  allure.label.severity:Blocker
              # ...
             Sort Product high_To_low  ${List_Product}[3]   ${List_Product}[0]   ${List_Product}[2]   ${List_Product}[5]  ${List_Product}[1]  ${List_Product}[4]
             Capture Page Screenshot    filename=${CURDIR}/result/sort_high_to_low.png
             Attach File  ${CURDIR}/result/sort_high_to_low.png  name=Image  attachment_type=image/png
             [Teardown]   Close Browser
