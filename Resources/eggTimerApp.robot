*** Settings ***
Library    Selenium2Library
Library    DateTime

*** Variables  ***

*** Keywords ***

Navigate To Page
    CountDown.Go To Page

Validate Page Loaded
    CountDown.Verify Page Loaded

Submit Value and Validate
    CountDown.Start CountDown

Validate CountDownTimeDifference
    CountDown.Validate CountDownStatus

Validate AlertPopUp
    CountDown.Validate AlertPopUp

Validate AlertSound
    CountDown.Verify AlertSound
