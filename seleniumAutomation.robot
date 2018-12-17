*** Setting ***
Library     String
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${homepage}     automationpractice.com/index.php
${scheme}       http
${testUrl}      ${scheme}://${homepage}
#${prodUrl}      ${prodScheme}://$
*** Keywords ***
Open Homepage
    Open Browser    ${testUrl}      ${browser}

*** Test Cases ***
CP001 Click on the Containers
    Open Homepage
    Set Global Variable     @{nameContainers}   //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a       //*[@id="homefeatured"]/li[5]/div/div[2]/h5/a       //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a       //*[@id="homefeatured"]/li[7]/div/div[2]/h5/a
    :FOR    ${nameContainer}    IN      @{nameContainers}
##   \       Run Keyword If      '${nameContainer}'=='//*[@id="homefeatured"]/li[8]/div/div[2]/h5/a'     Exit For Loop
    \       Click Element   xpath=${nameContainer}
    \       Wait Until Element Is Visible   xpath=//*[@id="bigpic"]
    \       Click Element   xpath=//*[@id="header_logo"]/a/img
    close Browser

CP002 New Test Case
    Open Homepage




