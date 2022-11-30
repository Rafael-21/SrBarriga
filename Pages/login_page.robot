*** Settings ***
Resource   ../global_keywords/global_keywords.robot


*** Variables ***
${login_URL}         ${base_URL}/login
${login_btn}         Entrar


*** Keywords ***
#Keywords de Login com sucesso
Abrir Navegador na Página de login
    Open Browser      ${login_URL}    ${chrome_browser}   
Entrar Com o Email
    Digitar valor em campo de texto    ${input_email}    ${user_email}
Entrar com a Senha 
    Digitar valor em campo de texto    ${input_password}    ${user_password}
Clicar no Botão de login
    Click Button    ${login_btn}

#Login com email inválido
Entrar com o Email Invalido
    ${email_inválido}    FakerLibrary.Email
    Digitar valor em campo de texto    ${input_email}   ${email_inválido}

Entrar com a Senha invalida
    ${random_pswd}    FakerLibrary.Password
    Digitar valor em campo de texto    ${input_password}    ${random_pswd}

