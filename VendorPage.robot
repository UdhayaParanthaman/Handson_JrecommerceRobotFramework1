*** Settings ***
Documentation    This file is to test the framework
Library    SeleniumLibrary
Resource    General/LandingPage.resource

*** Test Cases ***
Launching the Url and check DashBaoard page is Opening
    LandingPage.Loading page
    Sleep    4s    
    Close Browser