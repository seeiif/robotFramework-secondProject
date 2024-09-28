*** Settings ***
Documentation   All the page objects and keywords onf landing page
...
...             The system specific keywords created here from our own
...             domain specific language. They utilize keywords provided
...             by the importd seleniumlibrary
Library         SeleniumLibrary
Library         OperatingSystem

*** Variables ***
${homePageLoad}  css=.nav-link

*** Keywords ***
Enter the country
    [Arguments]    ${country_name}
    Input Text    country    ${country_name}
    Sleep  6
    Wait Until Element Is Visible    xpath=//a[text()='${country_name}']
    Click Element    xpath=//a[text()='${country_name}']
    Sleep    4
    Click Element    css=.checkbox label
 
Purchase the product and confirm the purchase
    Click Button    css=.btn-success
    Page Should Contain    Success