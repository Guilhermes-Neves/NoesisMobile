***Settings***

Resource  ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${USUARIO_VALIDO}            admin
${SENHA_VALIDA}              admin
${USUARIO_INVALIDO}          xpto123
${SENHA_INVALIDA}            abc
${MENSAGEM_LOGIN_INVALIDO}   id=android:id/alertTitle
${MENSAGEM_LOGIN_VALIDO}     xpath=//android.widget.TextView[@text="Bem-vindo ao seu desafio!"]


***Test Cases***
Fazer Login com usuário incorreto
  Login With  ${USUARIO_INVALIDO}  ${SENHA_INVALIDA}

  Wait Until Element is Visible   ${MENSAGEM_LOGIN_INVALIDO}
  Element Text Should Be          ${MENSAGEM_LOGIN_INVALIDO}       Usuario e/ou senha incorreto

Fazer Login com sucesso
  Login With  ${USUARIO_VALIDO}   ${SENHA_VALIDA}

  Wait Until Element is Visible   ${MENSAGEM_LOGIN_VALIDO}
  Element Text Should Be          ${MENSAGEM_LOGIN_VALIDO}    Bem-vindo ao seu desafio!
  
  
  

