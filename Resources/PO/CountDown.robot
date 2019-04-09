*** Settings ***

Library     Selenium2Library
Library     String

*** Variables ***
#${DendForLoop}      2


*** Keywords ***
Go To Page
    Go To    ${eggTimerURL}
    Sleep    1s

Verify Page Loaded
     Page Should Contain Button    ${Submit_Button}

Start CountDown
      Input Text    ${InputElement}    ${CounterValue}
      Click Button  ${Submit_Button}
      Capture Page Screenshot
      Location Should Contain          ${CounterValue}

Validate CountDownStatus
      ${previousProgressElements}=    Get WebElements    ${CurrentStatus}
                :FOR    ${element1}    IN    @{previousProgressElements}
                        ${progressText1}=    Get Text    ${element1}
                        ${time1}=    Get Variable Value    ${progressText1}
                        Log    ${time1}
                END
                Sleep    1s
      ${currentProgressElements}=    Get WebElements    ${CurrentStatus}
                :FOR    ${element2}    IN    @{currentProgressElements}
                        ${progressText2}=    Get Text    ${element2}
                        ${time2}=    Get Variable Value    ${progressText2}
                        Log    ${time2}
                END

      ${result}=   Fetch From Left     ${time1}       seconds
      ${result1}=   Fetch From Left    ${time2}       seconds

      Convert To Number     ${result}
      Convert To Number     ${result1}
      ${diff}=     Evaluate     ${result}-${diffTest}
      Should Be Equal As Numbers    ${diff}    ${result1}


       Sleep      ${CounterValue}
Validate AlertPopUp
       ${alertText}=     Get Alert Message

Verify AlertSound
        #To-do Verify Audio Sound 
        Capture Page Screenshot
