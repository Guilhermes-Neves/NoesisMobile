***Settings***

Resource  ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${USUARIO_VALIDO}   admin
${SENHA_VALIDA}     admin
${OPCAO_ROBOT}      xpath=//android.widget.CheckBox//android.widget.TextView[contains(@text, 'Robot Framework')]/..         
${OPCAO_PYTHON}     xpath=//android.widget.CheckBox//android.widget.TextView[contains(@text, 'Python')]/..

***Test Cases***
Deve marcar duas opções da tela
  Login With                       ${USUARIO_VALIDO}    ${SENHA_VALIDA}
  Go To Form           
  Click Element                    ${OPCAO_ROBOT}
  Wait Until Element Is Visible    ${OPCAO_ROBOT}
  Element Attribute Should Match   ${OPCAO_ROBOT}   checked   true
  Click Element                    ${OPCAO_PYTHON}
  Wait Until Element Is Visible    ${OPCAO_PYTHON}
  Element Attribute Should Match   ${OPCAO_PYTHON}   checked   true