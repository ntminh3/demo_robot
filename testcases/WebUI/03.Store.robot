***Settings***
Resource             ../../resources/import.robot 
Suite Setup          Open browser with url          ${browser}            ${techpandaURL}
Suite Teardown       Close Browser    

***Test Cases***
TC_04: Verify that cost of product in list page and details page are equal
    [Tags]  store   ui
    Run Keyword And Ignore Error         Click on Mobile menu
    ${priceFromListingPage}              Get product price from listing page                     IPhone
    ${priceFromDetailsPage}              Get product price from product details page             IPhone
    Price from listing page and product details page should be equal        ${priceFromListingPage}         ${priceFromDetailsPage}





