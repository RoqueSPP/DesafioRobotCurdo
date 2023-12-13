*** Settings ***
Resource    ./api4devs.robot
Library    SeleniumLibrary

*** Test Cases ***
teste api
    Gerar Pessoa
    Log To Console    ${signo}

    # Open Browser    https://www.google.com.br    chrome
    # Input Text    name=q    ${signo}
    # sleep    3
    # Gerar CNH
    # Log To Console    ${cnh}
    # Gerar PIS
    # Log To Console    ${pis}
    # Gerar CNPJ
    # Log To Console    ${cnpj}
    # Gerar CPF
    # Log To Console    ${cpf}
    Gerar CARTAO DE CREDITO
        Log To Console    ${cartao}[0]
