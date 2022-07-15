***Settings***
Resource             ../../resources/import.robot

***Test Cases***
TC_01:Post
    [Tags]  api
    ${body}=    Load Json from File   ${DATA_DIR}/data/apiBody.json
    Set Suite Variable  ${body}
    ${response}=    POST    ${apiURL}/maps/api/place/add/json    json=${body}   params=key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response}
    Response status code should be  200
    Verify response data with a value  status  OK
    Set place_id variable for later use 

TC_02:Get
    [Tags]  api
    ${response}=    GET    ${apiURL}/maps/api/place/get/json    params=place_id=${place_id}&key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response} 
    Response status code should be  200
    Verify response data and request body  name
    Verify response data and request body  phone_number
    Verify response data and request body  address

TC_03:Put
    [Tags]  api
    ${response}=    PUT    ${apiURL}/maps/api/place/get/json    params=place_id=${place_id}&key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response}
    Response status code should be  200
    Verify response data and request body  name

TC_04:Delete
    [Tags]  api
    ${jsonString}=      Convert String to Json    {"place_id": "${place_id}"}
    Set Suite Variable  ${jsonString}
    ${response}=    DELETE    ${API_URL}/maps/api/place/delete/json    json=${jsonString}    params=key=qaclick123
    Log To Console      \n${response.json()}
    Set Test Variable   ${response} 
    Response status code should be  200
    Verify response data with a value  status  OK    