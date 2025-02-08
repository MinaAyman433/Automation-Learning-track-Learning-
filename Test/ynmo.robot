*** Settings ***
Library    SeleniumLibrary
Resource      ../Resources/Common.robot
Resource      ../Resources/PO/Login.robot
Resource      ../Resources/PO/Home.robot
Resource      ../Resources/PO/Family.robot
#robot -d results Test/ynmo.robot
Suite Setup    begin the all tests      ${Base_URL}     ${Browser}    ${USERNAME}     ${PASSWORD}
#Test Setup      Begin test      ${Home_Screen_URL}
Suite Teardown    End all test


*** Variables ***
${Base_URL}             https://test-app-revamp.ynmodata.com/auth/login
${Home_Screen_URL}      https://test-app-revamp.ynmodata.com/benficiaries/management/list/active
${Browser}         Chrome
${USERNAME}        mona.abdelrahim+cent10@trianglz.com
${PASSWORD}        P@ssw0rd
&{Mandatory/optinal_Family_Data}    firstName=Mina    lastName=ayman      mobile=01202261994      email=mina.ayman1@trianglz.com     username=mina_ayman     password=1234567Aa#       image=D:\\Automation\\Automation-Learning-track\\Resources\\testimage.jpeg        children=Mina 01
&{Mandatory_Family_Data}    firstName=Mina    lastName=ayman    email=mina.ayman1@trianglz.com     username=mina_ayman

*** Test Cases ***
verfy Adding a new family with only mandatory Fields
    Home.Navigate to Family sceen
    Family.Add Family with mandatory Fields    &{Mandatory_Family_Data}


verfy Adding a new family with Both mandatory & Optinal Fields
    Home.Navigate to Family sceen
    Family.Add Family with Both mandatory & Optinal Fields    &{Mandatory/optinal_Family_Data}