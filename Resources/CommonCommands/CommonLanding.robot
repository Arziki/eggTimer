*** Settings ***

*** Keywords ***
Begin App Test
    Open Browser     about:blank  ${BROWSER}
End App Test
    Close All Browsers
