*** Settings ***
Library       SeleniumLibrary
*** Variables ***
${username-TextBox}     id=login-username
${password-TextBox}     id=login-password
${login_button}         id=login_btn
*** Keywords ***
lOGIN
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text     ${username-TextBox}   ${USERNAME}
    Input Text     ${password-TextBox}    ${PASSWORD}
    Click Button   ${login_button}
    sleep    10



