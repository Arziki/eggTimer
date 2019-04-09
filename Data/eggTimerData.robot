*** Settings ***
Library    Selenium2Library


*** Variables ***
${BROWSER} =  Chrome
${eggTimerURL} =  https://e.ggtimer.com
${CounterValue}     25
${InputElement} =  name=start_a_timer
${Submit_Button} =   id=timergo
${elements}
${element}
${text}
${alertText}
${CurrentStatus} =    css=#progressText
${progressText1}
${progressText2}
${time1}
${time2}
${diffTest}     1
