*** Settings ***
Resource    ../../global_keywords/global_keywords.robot
Resource    keywords.robot


*** Test Cases ***
CT01 - Realizar login com credenciais validas
    Abrir navegador na página de login
    Entrar com o Email 
    Entrar com a Senha 
    Clicar no Botão de login
    Checar se Mensagem de Sucesso Bem vindo, Rafael Santos!
    Checar se a URL Atual é a Página de Home
    E fecho o Navegador

CT02 - Realizar login com credenciais invalidas
    Abrir navegador na página de login
    Entrar com o Email Invalido
    Entrar com a Senha invalida
    Clicar no Botão de login
    Checar se Mensagem de Erro Problemas com o login do usuário
    E fecho o Navegador

CT03 - Realizar login sem preencher campos obrigatórios
    Abrir navegador na página de login
    Clicar no Botão de login
    Checar se Mensagem de Erro Email é um campo obrigatório
    Checar se Mensagem de Erro Senha é um campo obrigatório
    E fecho o Navegador