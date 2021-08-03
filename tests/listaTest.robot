***Settings***

Resource  ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${USUARIO_VALIDO}   admin
${SENHA_VALIDA}     admin
${INPUT_BUSCA}      xpath=//android.widget.EditText[contains(@text,'Digite')]
${SEARCH_TARGET}    xpath=(//android.widget.ScrollView//android.view.ViewGroup//android.widget.TextView)[1]
${SEARCH_RESULT}    xpath=//android.widget.TextView[contains(@text,'@')]


***Test Cases***
Efetuar busca na lista
  Login With                      ${USUARIO_VALIDO}          ${SENHA_VALIDA}
  Go To Lista      
  Wait Until Element Is Visible   ${SEARCH_TARGET}                   
  ${taget} =                      Get Text                   ${SEARCH_TARGET} 
  Input Text                      ${INPUT_BUSCA}             ${taget}
  Wait Until Element Is Visible   ${SEARCH_TARGET}       
  Click Element                   ${SEARCH_TARGET}       
  Element Text Should Be          ${SEARCH_TARGET}           ${taget}
  Wait Until Element Is Visible   ${SEARCH_RESULT}



  
  
  

