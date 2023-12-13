*** Settings ***
Library     ./Obter_Dados/Data.py
Library     SeleniumLibrary
Resource    Data.robot
Resource    Preencher.robot

*** Test Cases ***
Teste
    Open Browser    https://roquespp.github.io/Pagina_Teste/    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    //h1    10
    ${data}    Validade Data
    Obter informações do site 4devs
    Preencher a pagina de testes
















    # FOR    ${i}    IN RANGE    0    22
    #     FOR    ${item}    IN    ${data}
   
    #     Log To Console     ${response}[0][${item}[${i}]]
    # END
    # END
