*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary

Resource    ../Pages/login_page.robot
Resource    ../Pages/home_page.robot
Resource    ../Pages/register_page.robot

*** Variables ***
${chrome_browser}    Chrome
${base_URL}          https://seubarriga.wcaquino.me
${user_email}        rafa3l.santos@hotmail.com
${user_password}     Teste@123
${input_email}       email
${input_password}    senha
${name}              Rafael

*** Keywords ***
### Entrar com valor em campo de texto
Digitar valor em campo de texto
    [Arguments]    ${locator}    ${value}
    Clear Element Text    ${locator}
    Input Text    ${locator}    ${value}

### Retornar a URL atual
Retornar URL atual
    ${URL}=    Get Location

### Abrir navegador Chrome
Abrir navegador Chrome na Página
    [Arguments]     ${url}    ${browser}
    Open Browser    ${url}    ${browser}

### Chegar mesnsagens de aviosos
Verificar mensagem ${mensage}
    Page Should Contain    ${mensage}

E fecho o Navegador
    Close Browser
