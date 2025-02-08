*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${sign-up-icon}       سجل الآن
${username-TextBox}     id=login-username
${password-TextBox}     id=login-password
${login_button}         id=login_btn
*** Keywords ***
luanch the app
    [Arguments]     ${Base_URL}       ${Browser}
    OPEN BROWSER    ${Base_URL}       ${Browser}
    MAXIMIZE BROWSER WINDOW
    wait until page contains        ${sign-up-icon}


lOGIN
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text     ${username-TextBox}   ${USERNAME}
    Input Text     ${password-TextBox}    ${PASSWORD}
    Click Button   ${login_button}
    sleep    10

begin the all tests
     [Arguments]    ${Base_URL}       ${Browser}     ${USERNAME}    ${PASSWORD}
    luanch the app    ${Base_URL}       ${Browser}
    lOGIN      ${USERNAME}    ${PASSWORD}


Begin test
   [Arguments]      ${Home_Screen_URL}
  go to    ${Home_Screen_URL}

End all test
    CLOSE BROWSER