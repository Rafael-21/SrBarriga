*** Settings ***
Resource    ../../global_keywords/global_keywords.robot
Resource    register.robot

*** Keywords ***
Checar se Mensagem de Sucesso ${mensage_expected}
    Verificar mensagem ${mensage_expected}

Checar se Mensagem de Erro ${mensage_expected}
    Verificar mensagem ${mesnsage_expected}

Checar se a URL Atual é a ${register_URL}
    ${URL_obt}=    Get Location
    Should Be Equal    ${after_register_URL}    ${URL_obt}

