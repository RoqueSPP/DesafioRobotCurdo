*** Settings ***
Library    ./Data.py
Library    Collections
Library    RequestsLibrary
*** Variables ***
${url}          https://www.4devs.com.br/ferramentas_online.php

*** Keywords ***
Gerar Pessoa
    ${body}    create dictionary
...    acao=gerar_pessoa    pontuacao=N
...    sexo=H    txt_qtde=1

    ${response}  POST    ${url}    data=${body} 
    ${data}    Set Variable    ${response.json()}
    Set Suite Variable    ${data}
    ${nome}              Set Variable    ${data}[0][nome]
    ${idade}             Set Variable    ${data}[0][idade]
    ${cpf}               Set Variable    ${data}[0][cpf]
    ${rg}                Set Variable    ${data}[0][rg]
    ${data_nasc}         Set Variable    ${data}[0][data_nasc]
    ${sexo}              Set Variable    ${data}[0][sexo]
    ${signo}             Set Variable    ${data}[0][signo]
    ${mae}               Set Variable    ${data}[0][mae]
    ${pai}               Set Variable    ${data}[0][pai]
    ${email}             Set Variable    ${data}[0][email]
    ${senha}             Set Variable    ${data}[0][senha]
    ${cep}               Set Variable    ${data}[0][cep]
    ${endereco}          Set Variable    ${data}[0][endereco]
    ${numero}            Set Variable    ${data}[0][numero]
    ${bairro}            Set Variable    ${data}[0][bairro]
    ${cidade}            Set Variable    ${data}[0][cidade]
    ${estado}            Set Variable    ${data}[0][estado]
    ${telefone_fixo}     Set Variable    ${data}[0][telefone_fixo]
    ${celular}           Set Variable    ${data}[0][celular]
    ${altura}            Set Variable    ${data}[0][altura]
    ${peso}              Set Variable    ${data}[0][peso]
    ${tipo_sanguineo}    Set Variable    ${data}[0][tipo_sanguineo]
    ${cor}               Set Variable    ${data}[0][cor]
    
    Set Suite Variable                            ${nome}
    Set Suite Variable                            ${idade}
    Set Suite Variable                            ${cpf}
    Set Suite Variable                            ${rg}
    Set Suite Variable                            ${data_nasc}
    Set Suite Variable                            ${sexo}          
    Set Suite Variable                            ${signo}         
    Set Suite Variable                            ${mae}           
    Set Suite Variable                            ${pai}           
    Set Suite Variable                            ${email}         
    Set Suite Variable                            ${senha}         
    Set Suite Variable                            ${cep}           
    Set Suite Variable                            ${endereco}      
    Set Suite Variable                            ${numero}        
    Set Suite Variable                            ${bairro}        
    Set Suite Variable                            ${cidade}        
    Set Suite Variable                            ${estado}        
    Set Suite Variable                            ${telefone_fixo} 
    Set Suite Variable                            ${celular}       
    Set Suite Variable                            ${altura}        
    Set Suite Variable                            ${peso}          
    Set Suite Variable                            ${tipo_sanguineo}
    Set Suite Variable                            ${cor}
############################################################################### 
Gerar CNH
    ${body}    create dictionary
...    acao=gerar_cnh
    ${response}  POST    ${url}    data=${body} 
    ${data}    Set Variable    ${response.json()}
    Set Suite Variable    ${data}
    ${cnh}               Set Variable    ${data}
    Set Suite Variable                   ${cnh}
################################################################################
Gerar PIS
    ${body}    create dictionary    acao=gerar_cnh    pontuacao=N
    ${response}  POST    ${url}    data=${body} 
    ${data}    Set Variable    ${response.json()}
    Set Suite Variable    ${data}
    ${pis}               Set Variable    ${data}
    Set Suite Variable                   ${pis}
################################################################################
Gerar CNPJ
    ${body}    create dictionary    acao=gerar_cnpj    pontuacao=N
    ${response}  POST    ${url}    data=${body} 
    ${data}    Set Variable    ${response.json()}
    Set Suite Variable    ${data}
    ${cnpj}               Set Variable    ${data}
    Set Suite Variable                   ${cnpj}
################################################################################
Gerar CPF
    ${body}    create dictionary    acao=gerar_cnpj    pontuacao=N    cpf_estado=SP
    ${response}  POST    ${url}    data=${body} 
    ${data}    Set Variable    ${response.json()}
    Set Suite Variable    ${data}
    ${cpf}               Set Variable    ${data}
    Set Suite Variable                   ${cpf}
################################################################################
Gerar CARTAO DE CREDITO
    ${body}    Cartao Credito
    ${cartao}            Set Variable    ${body}
    Set Suite Variable                   ${cartao}
################################################################################

