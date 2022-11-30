*** Settings ***
Resource    ../../global_keywords/global_keywords.robot
Resource    keywords.robot


*** Test Cases ***
CT01 - Cadastrar novo usuario com credenciais validas
    Abrir navegador na página de Cadastro
    Entrar com o Nome
    Entrar com o Email Válido
    Entrar com a Senha Válido
    Clicar no Botão de Cadastrar
    Checar se Mensagem de Sucesso Usuário inserido com sucesso
    Checar se a URL Atual é a /cadastrarUsuario
    E fecho o Navegador


CT02 - Cadastrar novo usuario com credenciais ja utilizadas
    Abrir navegador na página de Cadastro
    Entrar com o Nome ja utilizado
    Entrar com o Email ja utilizado
    Entrar com a Senha ja utilizada
    Clicar no Botão de Cadastrar
    Checar se Mensagem de Erro Endereço de email já utilizado
    E fecho o Navegador