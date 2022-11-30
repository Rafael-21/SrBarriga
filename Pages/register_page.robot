*** Settings ***
Resource   ../global_keywords/global_keywords.robot


*** Variables ***
${register_URL}          ${base_URL}/cadastro
${after_register_URL}    ${base_URL}/cadastrarUsuario
${input_name}            nome
${register_btn}          Cadastrar


*** Keywords ***
Abrir navegador na página de Cadastro
    #Abrir navegador Chrome na Página    ${register_URL}    ${chrome_browser}
    Open Browser    ${register_URL}    ${chrome_browser}
Entrar com o Nome
    ${random_name}    FakerLibrary.First Name
    Digitar valor em campo de texto    ${input_name}    ${random_name}
Entrar com o Email Válido
    ${random_email}    FakerLibrary.Email
    Digitar valor em campo de texto    ${input_email}    ${random_email}
Entrar com a Senha Válido
    ${random_pswd}    FAkerLibrary.Password
    Digitar valor em campo de texto    ${input_password}    ${random_pswd}
Clicar no Botão de Cadastrar
    Click Button    ${register_btn}
Entrar com o Nome ja utilizado
    Digitar valor em campo de texto    ${input_name}    ${name}
Entrar com o Email ja utilizado
    Digitar valor em campo de texto    ${input_email}    ${user_email}
Entrar com a Senha ja utilizada
    Digitar valor em campo de texto    ${input_password}    ${user_password}