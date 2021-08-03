***Settings***
Documentation     Aqui teremos as keywords helpers

***Variables***
${MENSAGEM_INICIAL}        Olá, vamos testar o Login?
${INPUT_LOGIN}             xpath=//android.widget.EditText[@text="Login"]
${INPUT_SENHA}             xpath=//android.widget.EditText[@text="Senha"]
${BOTAO_LOGIN}             class=android.widget.Button
${MENU_HAMBURGUER}         xpath=//android.widget.TextView[@text="󰍜"]
${MENU_HAMBURGUER_HOME}    xpath=//android.widget.TextView[@text="Home"]
${MENU_HAMBURGUER_LISTA}   xpath=//android.widget.TextView[@text="Lista"]
${MENU_HAMBURGUER_FORM}    xpath=//android.widget.TextView[@text="Form"]

***Keywords***
Login With
  [Arguments]   ${userName}      ${pass}
  Wait Until Page Contains        ${MENSAGEM_INICIAL}
  Input Text                      ${INPUT_LOGIN}        ${userName}              
  Input Text                      ${INPUT_SENHA}        ${pass}      
  Click Element                   ${BOTAO_LOGIN}

Open Nav
  Wait Until Element Is Visible   ${MENU_HAMBURGUER}
  Click Element                   ${MENU_HAMBURGUER}
  Wait Until Element Is Visible   ${MENU_HAMBURGUER_HOME}

Go To Lista
  Open Nav

  Click Element                   ${MENU_HAMBURGUER_LISTA}
  Wait Until Page Contains        List

Go To Form
  Open Nav

  Click Element                   ${MENU_HAMBURGUER_FORM}
  Wait Until Page Contains        Marque as techs que usam Appium