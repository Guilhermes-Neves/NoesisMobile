***Settings***

Library     AppiumLibrary
Resource    helpers.robot

***Keywords***
Open Session
  Set Appium Timeout    15
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Teste
    ...                   app=${EXECDIR}/app/NoesisQuaChallenge.apk
    ...                   udid=emulator-5554

Close Session
  Capture Page Screenshot
  Close Application


