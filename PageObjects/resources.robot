*** Settings ***
Documentation   A resource file with reusablekeywords and variables
...
...             The system specific keywords created here from our own
...             domain specific language. They utilize keywords provided
...             by the importd seleniumlibrary
Library         SeleniumLibrary
Library         OperatingSystem


*** Variables ***
${browserurl}  http://rahulshettyacademy.com/loginpagePractise/
${user_name}    saifeddine.k@gmail.com
${invalid_password}     123544
${valid_username}   rahulshettyacademy
${valid_password}   learning
${BrowserName}   Edge


*** Keywords ***
open the browser with the mortage payment url
     Open Browser    ${browserurl}   ${BrowserName}
     Maximize Browser Window
     Sleep    2

Close Browser Session
      Close Browser
