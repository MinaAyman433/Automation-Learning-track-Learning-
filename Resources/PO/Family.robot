*** Settings ***
Library       SeleniumLibrary
*** Variables ***
${Add-Family-button}                 id=families-header-action-button
${family-firstName}                  id=save-family-firstName
${family-lastName}                   id=save-family-lastName
${family-mobile}                     id=save-family-mobile
${family-email}                      id=save-family-email
${family-username}                   id=save-family-username
${auto-generated-password}           id=save-family-toggle-auto-generated-password
${family-password}                   id=save-family-password
${upload-image-button}               //a[@id='save-family-image-uploader-upload-image']
${family-children-drop-down-list}    //*[@id="save-family"]/div[1]/div[1]/div[11]/yn-select/div/nz-select/nz-select-arrow/div/span
${family-children-search}            //input[@id='save-family-link-children-select-input']
${save-family-button}                id=save-family-save
*** Keywords ***

Add Family with mandatory Fields
    [Arguments]      ${firstName}    ${lastName}    ${email}   ${username}
    click button    ${Add-Family-button}
    sleep     3s
    input text          ${family-firstName}       ${firstName}
    input text          ${family-lastName}         ${lastName}
    input text          ${family-email}            ${email}
    input text          ${family-username}         ${username}
    click button        ${save-family-button}


Add Family with Both mandatory & Optinal Fields
    [Arguments]      ${firstName}    ${lastName}   ${mobile}    ${email}   ${username}   ${password}    ${image}    ${children}
    click button    ${Add-Family-button}
    sleep     3s
    input text          ${family-firstName}       ${firstName}
    input text          ${family-lastName}         ${lastName}
    input text          ${family-mobile}           ${mobile}
    input text          ${family-email}            ${email}
    input text          ${family-username}         ${username}
    click button        ${auto-generated-password}
    input text          ${family-password}         ${password}
    click element       ${upload-image-button}
    sleep     5s
    choose file         //input[@type='file' and contains(@class, 'hidden')]        ${image}
    sleep     5s
    click element       ${family-children-drop-down-list}
    sleep     1s
    input text          ${family-children-search}         ${children}
    sleep     1s
    click element       //nz-option-item[@title='${children}']
    sleep     1s
    click button        ${save-family-button}
