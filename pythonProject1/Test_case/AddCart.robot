*** Settings ***
Variables  ..//Object_Repo/Locators/Sort_Elements.py
Variables  ..//Object_Repo/Locators/AddCart_Element.py
Variables   ..//Configs//Properties.py
Resource   ..//Ressource_KeywordsPom/LoginPage.robot
Resource   ..//Ressource_KeywordsPom/Add_CartPage.robot
Resource   ..//Setup/Test_Base.robot
Library     SeleniumLibrary
Library     AllureLibrary
Library     OperatingSystem
*** Test Cases ***
Launch The Browser to Login page
                [Documentation]   open the browswer and login
                   [Setup]  Launching the Browswer
                    Open Browser To Login Page      ${user_input}   ${pass_input}    ${Valid_username}   ${valid_Password}          ${Submit_Btn}
Sort The Product from the cheapest one to the expensive one
                [Documentation]     Add Cheapest product menu
                     [Setup]    Create Directory    ${CURDIR}/.result
                     [Tags]
                        ...  allure.label.owner:Amedras Marwan
                        ...  allure.label.severity:critical
                        # ...
                        Select From List By Value  ${Sort_PRODUCT}   ${Price_low_to_high}
                        Capture Page Screenshot    filename=${CURDIR}/result/CheaptoEXP.png
                        Attach File  ${CURDIR}/result/CheaptoEXP.png   name=Image  attachment_type=image/png

Add First Article to WaitList
                [Documentation]   Add first article to waitlist
                 [Tags]
                        ...  allure.label.owner:Amedras Marwan
                        ...  allure.label.severity:Blocker
                        # ...
                        ${Article}=    Get WebElements  ${Product}
                        Click Element   ${Article}[0]
                        Add to cart to the chosen article       ${Add_Product_to_Cart}
                        Click Element   ${Back_to_Product}
                        Capture Page Screenshot      filename=${CURDIR}/result/cart.png
                        Attach File  ${CURDIR}/result/cart.png  name=Image  attachment_type=PNG

Add Second Article to WaitList
                     [Documentation]   Add second article to waitlist
                      [Tags]
                        ...  allure.label.owner:Amedras Marwan
                        ...  allure.label.severity:Blocker
                        # ...
                        Select From List By Value  ${Sort_PRODUCT}   ${Price_high_to_low}
                        ${Article1}=    Get WebElements  ${Product}
                            Click Element    ${Article1}[1]
                            Add to cart to the chosen article       ${Add_Product_to_Cart}
                            Click Element   ${Back_to_Product}
                            Capture Page Screenshot      filename=${CURDIR}/result/CheaptoEXP.png
                            Attach File   ${CURDIR}/result/CheaptoEXP.png   name=Image  attachment_type=PNG

Add Third Article to Waitlist
                      [Documentation]   Add third article to waitlist
                      [Tags]
                        ...  allure.label.owner:Amedras Marwan
                        ...  allure.label.severity:Blocker
                        # ...
                        Select From List By Value  ${Sort_PRODUCT}   ${Price_high_to_low}
                           ${Article1}=    Get WebElements  ${Product}
                            Click Element    ${Article1}[2]
                            Add to cart to the chosen article       ${Add_Product_to_Cart}
                            Click Element   ${Back_to_Product}
                            Capture Page Screenshot  filename=${CURDIR}/result/cart3.png
                            Attach File   ${CURDIR}/result/cart3.png    name=Image  attachment_type=PNG
Add to cart
                     [Documentation]   add to cart
                     [Tags]
                        ...  allure.label.owner:Amedras Marwan
                        ...  allure.label.severity:Critical
                        # ...
                     Click Element    ${Add_cart_btn}
                     Element Text Should Be    css:.header_secondary_container    Your Cart
                     Click Element      ${Checkout}
                     Capture Page Screenshot      filename=${CURDIR}/result/add_to_cart.png
                     Attach File  ${CURDIR}/result/add_to_cart.png   name=Image  attachment_type=PNG


Payment Checkout with empty creeds
                       [Documentation]   checkout with empty creeds should fail
                       [Tags]
                        ...  allure.label.owner:Amedras Marwan
                        ...  allure.label.severity:Critical
                        # ...
                            Element Text Should Be    class:header_secondary_container     Checkout: Your Information
                            Scroll Element Into View    ${continue_btn}
                            Click an element    ${continue_btn}
                            Element Text Should Be    css:h3[data-test='error']    Error: First Name is required
                            Capture Page Screenshot      filename=${CURDIR}/result/pay_empty.png
                            Attach File   ${CURDIR}/result/pay_empty.png   name=Image  attachment_type=PNG
Payment Checkout without the lastname and zipcode
                       [Documentation]   checkout with empty lastname and zipcode should fail
                        [Tags]
                        ...  allure.label.owner:Amedras Marwan
                        ...  allure.label.severity:Critical
                        # ...
                              Scroll up to element        ${FirstName}
                              Type firstname customer     ${FirstName}          ahmed
                              Scroll Element Into View    ${continue_btn}
                              Click an element    ${continue_btn}
                              Element Text Should Be    css:h3[data-test='error']  Error: Last Name is required
                              Capture Page Screenshot   filename=${CURDIR}/result/empty_zipcode_lastname.png
                              Attach File    ${CURDIR}/result/empty_zipcode_lastname.png     name=Image  attachment_type=PNG
Payment Checkout zipcode without firstName and Lastname
                        [Documentation]   checkout without firstname and lastname
                        [Tags]
                            ...  allure.label.owner:Amedras Marwan
                            ...  allure.label.severity:Critical
                        # ...
                             Scroll up to element       ${FirstName}
                             Type ZipCode customer      ${ZipCode}               126500
                             Scroll down into an element    ${continue_btn}
                             Click an element    ${continue_btn}
                              Element Text Should Be    css:h3[data-test='error']  Error: Last Name is required
                              Capture Page Screenshot     filename=${CURDIR}/result/empty_FirstName_Lastname.png
                              Attach File  ${CURDIR}/result/empty_FirstName_Lastname.png     name=Image  attachment_type=PNG
Payment Checkout with correct username a wrong zipcode
                         [Documentation]   checkout with correct username a wrong zipcode should fail
                         [Tags]
                            ...  allure.label.owner:Amedras Marwan
                            ...  allure.label.severity:Critical
                        # ...
                            Type firstname customer    ${FirstName}            youssef
                            Type FinalName customer    ${LastName}              Akil
                            Type ZipCode customer      ${ZipCode}              assdff2123
                            Scroll down into an Element    ${continue_btn}
                            Click an element    ${continue_btn}
                            Capture Page Screenshot  filename=${CURDIR}/result/wrong_zipcode.png
                            Attach File    ${CURDIR}/result/wrong_zipcode.png    name=Image  attachment_type=PNG
Payment Checkout with correct creeds
                         [Documentation]   checkout with correct creeds
                         [Tags]
                            ...  allure.label.owner:Amedras Marwan
                            ...  allure.label.severity:Blocker
                        # ...
                            Scroll Up to an element    ${Add_cart_btn}     ${Checkout}
                            Type firstname customer    ${FirstName}        youssef
                            Type FinalName customer    ${LastName}         Akil
                            Type ZipCode customer      ${ZipCode}          250000
                            Scroll Element Into View   ${continue_btn}
                            Click an element    ${continue_btn}
                            Mouse Down an element  ${Finish_btn}
                            Capture Page Screenshot   filename=${CURDIR}/result/correct_info.png
                            Attach File  ${CURDIR}/result/correct_info.png  name=Image  attachment_type=PNG

