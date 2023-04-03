*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary
Resource    General/LandingPage.resource
Resource    General/CustomerRegisterPage.resource
Library    FakerLibrary

*** variables ***
${customerLoginPagetxt} =  New Customer
${customerLoginbtn} =  //a[contains(.,'Customer Login')]
#//a[normalize-space()='Customer Login']




*** Test Cases ***
Launching the Url and check DashBaoard page is Opening
    LandingPage.Loading page
    Sleep    4s    
    
Click customerLogin and verify page is loading
    Click Link    ${customerLoginbtn}
    Select Window    NEW
    Page Should Contain   ${customerLoginPagetxt}     
    

click registerBtn and successfully register
    CustomerRegisterPage.CustomerRegistration
    

    

    
