*** Settings ***
Documentation   All the page objects and keywords onf landing page
...
...             The system specific keywords created here from our own
...             domain specific language. They utilize keywords provided
...             by the importd seleniumlibrary
Library         SeleniumLibrary
Library         OperatingSystem

*** Keywords ***

Verify items in the checkout page
    Click Element    css:.btn-success
