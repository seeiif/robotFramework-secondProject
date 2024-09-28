*** Settings ***
Documentation   All the page objects and keywords onf Shop page
...
...             The system specific keywords created here from our own
...             domain specific language. They utilize keywords provided
...             by the importd seleniumlibrary
Library         SeleniumLibrary
Library         Collections
Library         OperatingSystem

*** Variables ***
${homePageLoad}  css=.nav-link

*** Keywords ***
Wait until element to be visible
      Wait Until Element Is Visible    ${homePageLoad}

verify card titles in the shop page
     @{phoneList}=  Create List  iphone X  Samsung Note 8   Nokia Edge   Blackberry
     @{elements}=   Get WebElements    css=.card-title

     @{actualList}=   Create List
     FOR    ${element}    IN    @{elements}
            Log   ${element.text}
            Append To List   ${actualList}   ${element.text}
     END

     Lists Should Be Equal    ${phoneList}    ${actualList}