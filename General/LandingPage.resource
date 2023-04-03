*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary

*** variable ***
${pagetxt} =  eCommerce Demo
${url} =  https://www.jrecommerce.com/demo.php#demo
${Browser} =  Chrome
${username}=    //input[@id='input-email']
${password}=    //input[@id='input-password']
${loginsubmitclick}=    //input[@value='Login']


*** Keywords ***
Loading page
    Open Browser   ${url}    ${Browser}     
    Maximize Browser Window
    Page Should Contain    ${pagetxt}
       
