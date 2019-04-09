*** Settings ***
Library    Selenium2Library


Documentation    Testing CountDown on e.ggtimer.com
Resource     ../Resources/PO/CountDown.robot
Resource     ../Resources/eggTimerApp.robot
Resource     ../Data/eggTimerData.robot
Resource     ../Resources/CommonCommands/CommonLanding.robot
Resource     ../Resources/PO/CountDown.robot
#Resource     ../Resources/CommonCommands/CommonLanding.robot
Test Setup       Begin App Test
Test Teardown    End App Test

*** Variables ***

#robot -d Results  --timestamp  Tests/CountingDown.robot
*** Keywords ***
[Tags]    Timer CountDown

*** Test Cases ***
Load Page and Start CountDown Timer
       [Documentation]    Accessing the e.ggtimer App
       [Tags]    Timer, CountDown

       eggTimerApp.Navigate To Page
       eggTimerApp.Validate Page Loaded
       eggTimerApp.Submit Value and Validate
       eggTimerApp.Validate CountDownTimeDifference
       eggTimerApp.Validate AlertPopUp
       eggTimerApp.Validate AlertSound
