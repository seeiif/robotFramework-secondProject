*** Settings ***
Documentation   All the page objects and keywords onf landing page
...
...             The system specific keywords created here from our own
...             domain specific language. They utilize keywords provided
...             by the importd seleniumlibrary
Library         SeleniumLibrary
Library         OperatingSystem

*** Keywords ***
fill the login form
     [Arguments]   ${username}   ${password}
     Input Text    id:username    ${username}
     Input Text    id:password    ${password}
     Click Button    signInBtn