*** Settings ***
Resource    ../../resources/import.robot

*** Keywords ***
Get product price from listing page
    [Arguments]         ${productName}
    Wait until element is visible               xpath://a[contains(text(), '${productName}')]               5
    ${price}=           Get Text                xpath://a[contains(text(), '${productName}')]/../..//span[@class='price']
    [Return]            ${price}

Get product price from product details page
    [Arguments]         ${productName}
    Run Keyword And Ignore Error                Wait and click element       xpath://a[contains(text(), '${productName}')]
    ${price}=           Get Text                ${lblProductDetailsPrice}
    [Return]            ${price}  

Price from listing page and product details page should be equal
    [Arguments]         ${price1}               ${price2}   
    Should Be Equal     ${price1}               ${price2}      