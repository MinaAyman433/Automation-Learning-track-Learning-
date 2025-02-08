*** Settings ***
Library       SeleniumLibrary
*** Variables ***
${Nav-Family-button}                 id=sidebar-navigate-to-8
*** Keywords ***
Navigate to Family sceen
    click element                  ${Nav-Family-button}
    sleep    5s


