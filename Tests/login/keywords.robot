*** Settings ***
Resource    ../../global_keywords/global_keywords.robot
Resource    login.robot

*** Keywords ***
Checar se Mensagem de Sucesso ${message_expected}
    Verificar mensagem ${message_expected}

Checar se Mensagem de Erro ${mensage_expected}
    Verificar mensagem ${mensage_expected}

Checar se a URL Atual é a ${URL}
    ${URL_obtained}=    Get Location
    Should Be Equal    ${home_URL}    ${URL_obtained}