# 🚀 Automation Project: Robot Framework with ATDD, Python, and Selenium
# 📌 Overview
This project demonstrates automated and manual testing of a website’s core functionalities, using the Robot Framework, Python, and Selenium. The automation adheres to the Page Object Model (POM) design pattern to enhance maintainability, scalability, and reusability of the test code.
The primary objective of this project is to validate the website’s functionality, including user workflows like login, product management, and order processing, both manually and automatically. These tests ensure the platform meets its defined requirements.
# ⚙️ Tools and Technologies Used

- **Robot Framework**: Used for automated acceptance testing and ATDD (Acceptance Test-Driven Development).

- **Python**:The programming language used to develop custom test libraries and scripts.

- **Selenium**: Provides browser automation for UI testing (web interactions like clicking, filling forms, etc.)..

- **Page Object Model (POM)**: A design pattern to organize the test code into reusable, modular componentsy.

# 🧪 Features Tested

- **Login Functionality**: Validates that users can log in with different roles and credentials.

- **Add to Cart**: Ensures that products can be added to the shopping cart and correctly reflected.

- **Product Sorting**: Verifies that sorting options (e.g., price, popularity) work as intended.

- **Order Placement**: Tests the end-to-end checkout process, ensuring proper order confirmation.

- **Requirement Functions**: Verifies that all specific functional requirements are covered as per the project’s scope.

# 📝 Testing Approach
# 1️⃣ Manual Testing
- **Exploratory Testing:** Conducted manual exploratory tests to uncover potential usability issues.
- **Edge Case Testing:** Verified scenarios that automated tests might not cover.
# 2️⃣ Automated Testing
- **ATDD Approach:** Created test scenarios based on acceptance criteria provided by stakeholders.
- **POM Design:** Structured test scripts for modularity and ease of updates.
- **Selenium WebDriver:** Used to perform web interactions like clicking, form submissions, and validating UI elements.
# Note: Cross-browser testing was not conducted as part of this project.

# 🛠️ How to Run the Tests

1. **1️⃣ Clone the Repository**:

```sh
git clone <repository-url>
```
2. **2️⃣ Install Required Dependencies**:
```sh
pip install -r requirements.txt
```
3.** 3️⃣ Run the Automated Tests **:
```sh
robot -d LoginResult Test_case/
```
# 🛠️ how to run Tests on allure report 
1. **1️⃣ Install the library plugin**:
```sh
pip install allure-robotframework
```
2. **Add allure-robotframework package to the PyCharms:**
```sh
Go to File->Settings ->Project:SwagLabs_Robot: Framework-Automation ->Python Interpreter.
Click on the “+” sign and enter allure-r in the search bar. It will show a list of packages. Select the “allure-robotframework” package and click on the “Install Package”.
Once the package is installed, we will see the message that the package is installed successfully.
```
3. **Run tests and save Allure results:**
```sh
robot --listener allure_robotframework:allure-results --outputdir output/robot Test_case.
```
4. **Generate the Allure report:**
```sh
allure generate allure-results --clean -o allure-report.
```
5. **. Open the report**
```sh
allure open allure-report
```
# Project Highlights
- Followed ATDD principles to align development efforts with stakeholder expectations.
- Ensured scalability of tests using the POM framework.
- Validated core website functionalities, improving overall site reliability by automating critical workflows.
- Leveraged Robot Framework, Python, and Selenium for an efficient and maintainable automation setup.
# 🖼️ Screenshots of Failed Tests
- **screenshot 1**:![selenium-screenshot-1](https://github.com/user-attachments/assets/d62dff51-e91a-4afc-8fbc-5fa96c225c93)
- **screenshot 2**:![selenium-screenshot-8](https://github.com/user-attachments/assets/c1203274-28bd-4997-8beb-4255ec5f054f)
- **screenshot 3**:![selenium-screenshot-6](https://github.com/user-attachments/assets/b8cdd72d-0adf-4681-aaa1-94ac0ad8c56b)
# 🖼️ Screenshots of the report dashboard allure:
- **screenshot 1**:<img width="919" alt="alluredashbaord" src="https://github.com/user-attachments/assets/e1317df8-3191-4405-9bf7-fa04c7708b7f" />
- **screenshot 2**:<img width="919" alt="image" src="https://github.com/user-attachments/assets/f443b700-2204-4ea9-ad1e-d4631d3e41b5" />
- **screenshot 3**:<img width="762" alt="image" src="https://github.com/user-attachments/assets/b1e9a90d-4e78-4f9c-81ea-f8193e94ca31" />
- **screenshot 4**:<img width="382" alt="image" src="https://github.com/user-attachments/assets/19c34415-ccd3-4bf7-8ee8-8cb341e27f11" />
- **screenshot 5**:
<img width="920" alt="image" src="https://github.com/user-attachments/assets/08e93312-3206-44e1-b32c-e906375ab736" />
# 📄 Test Documentation
- **test case**:[https://docs.google.com/spreadsheets/d/1ODGU2cPirxcl9CHDJhzdf84QIeR7ovBsek704sO9ZpA/edit?gid=1026433765#gid=1026433765]
- **Bug report**:[https://docs.google.com/spreadsheets/d/1Yl7HQA33fdUgWil-AJVE7Z6vC4u6MBpwX6euKpTaRjw/edit?gid=0#gid=0]
