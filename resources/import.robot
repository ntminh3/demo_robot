*** Settings ***
Library         SeleniumLibrary
Library         RequestsLibrary
Library         JSONLibrary
Library         Collections
Library         OperatingSystem

Resource        ../pages/landingPage.robot
Resource        ../pages/account/registerPage.robot
Resource        ../pages/account/myAccountPage.robot
Resource        ../pages/account/loginPage.robot
Resource        ../pages/products/mobilePage.robot

Resource        ../keywords/common.robot
Resource        ../keywords/ui/landingPageKeywords.robot
Resource        ../keywords/ui/registerKeywords.robot
Resource        ../keywords/ui/myAccountKeywords.robot
Resource        ../keywords/ui/loginKeywords.robot
Resource        ../keywords/ui/mobilePageKeywords.robot
Resource        ../keywords/api/apiKeywords.robot

Resource        ../resources/variables.robot
