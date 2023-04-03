*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary
Resource    General/LandingPage.resource

*** variables ***
${customerLoginPagetxt} =  New Customer
${customerLoginbtn} =  //a[contains(.,'Customer Login')]
${email}=    demouser@demo.com
${pass}=    robotFramework
${customerdashboardTxt}=    My Account
${customeraccountclick}=    //span[normalize-space()='edit your account']
${customerUpdatePhno}=    //input[@id='input-telephone']
${phoneNumber}=    6383157827
${updatesuccessbtn}=    //input[@value='Continue']
${customersuccesspageText}=    Success: Your account has been successfully updated.
${clickchangepassbtn}=    //*[@id="content"]/div/div[1]/div[2]/a
${password}=    //input[@id='input-password']
${passtxt}=    robotFramework
${confirmpassword}=    //input[@id='input-confirm']
${continuetxt}=    //input[@value='Continue']
${passwordUpdateTxt}=    Success: Your password has been successfully updated.


*** Test Cases ***
Launching the Url and check DashBaoard page is Opening
    LandingPage.Loading page
    Sleep    4s    
    

Click customerLogin and verify page is loading
    Click Link    ${customerLoginbtn}
    Select Window    NEW
    Page Should Contain   ${customerLoginPagetxt} 
    
    
Click customerLoginBtn and Verify page is Loaded
    Input Text    ${username}    ${email}    
    Input Password    ${password}    ${pass}    
    Click Element    ${loginsubmitclick}    
    Page Should Contain    ${customerdashboardTxt}    
    
click edit account information
    Click Element    ${customeraccountclick}      
    Input Text    ${customerUpdatePhno}    ${phoneNumber}         
    Click Element    ${updatesuccessbtn}    
    Page Should Contain    ${customersuccesspageText}
    
click changepasswordbtn and verify page is loaded
    Click Link    ${clickchangepassbtn}     
    Input Password    ${password}    ${passtxt}    
    Input Password        ${passtxt}    ${confirmpassword}
    Click Element    ${continuetxt}    
    Page Should Contain     ${passwordUpdateTxt}        
    

                         
