Para executar o projeto é necessário seguir os passos a seguir:

1 - Instalar a última versão do Python, https://www.python.org/downloads/
2 - Instalar o VScode, https://code.visualstudio.com/Download
3 - Instalar o java JDK, https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html
4 - Adicionar nas variáveis de ambiente -> variáveis do sistema a variável de nome JAVA_HOME com o valor C:\Program Files\Java\jdk1.8.0_301
e adicionar na variável path %JAVA_HOME%\bin
5 - Instalar o Android Studio
6 - Criar um dispositivo virtual
7 - Selecionar categoria Phone
8 - Selecionar o dispositivo com o nome Pixel 2, que contenha o simbolo da play store
9 - Fazer o download da imagem Pie
10 - Adicionar nas variáveis de ambiente -> variáveis do sistema a variável de nome ANDROID_HOME com o valor "Caminho do app data local da sua máquina"\Android\Sdk
e adicionar na variavel path os seguintes caminhos: %ANDROID_HOME%\platform-tools, %ANDROID_HOME%\tools, %ANDROID_HOME%\tools\bin, %ANDROID_HOME%\tools\lib
11 - Instalar o node.js, https://nodejs.org/pt-br/
12 - Após a instalação do node, abrir o terminal de sua preferência e executar os comandos a seguir:
npm install appium -g
npm install appium-doctor -g
13 - Executar no terminal de sua preferência o comando: appium-doctor --android, que irá verificar se seu ambiente está pronto para rodar os testes no android
14 - Instalar o appium desktop, http://appium.io/
15 - Para rodar os casos de testes seguir os passos finais:
15.1 - Iniciar o Android Studio, iniciar o dispositivo virtual
15.2 - Abrir o appium desktop e iniciar o servidor
15.3 - Executar no terminal de sua preferência o comando: robot -d.\logs .\tests\
OBS.: Na pasta log será gerado o relatório da execução e na Keyword Close Session, estará a evidencia de cada teste.



