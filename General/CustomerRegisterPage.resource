*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary
Library    FakerLibrary
variables    ../Variables/customerRegister.py


*** keywords ***
CustomerRegistration
    
    Click Link    ${customerRegisterbtn}
    Page Should Contain    ${customerRegisterPageTxt}
    Click Button    ${customerGroupradioBtn}  
    
     ${name}=    FakerLibrary.First Name
     Input Text    ${firstName}    ${name}
     ${lName}=    FakerLibrary.Last Name
     Input Text    ${lastName}    ${lName}
     
     ${customerEmail}=    FakerLibrary.Email    
     Input Text    ${email}    ${customerEmail}
     Set Global Variable    ${customerEmail} 
     
    ${phoneNo}=    FakerLibrary.Phone Number
     Input Text    ${phNo}    ${phoneNo}
     
     ${customerPassword}=    FakerLibrary.Password 
     Input Password    ${passwordlocator}      ${customerPassword}
     Set Global Variable    ${customerPassword}    
     Input Password    ${confirmPass}    ${customerPassword} 
     
     Click Button    ${subscribeRadiBtn}   
     Click Element    ${clickChechBox}
     Click Element    ${clickSubmit}
     Page Should Contain        ${successRegisterPageTxt}
        
