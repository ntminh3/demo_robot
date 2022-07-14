*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

Resource    ../pages/landingPage.robot
Resource    ../pages/registerPage.robot

Resource    ../keywords/common.robot
Resource    ../keywords/landingPageKeywords.robot
Resource    ../keywords/registerKeywords.robot

Resource    ../resources/variables.robot
