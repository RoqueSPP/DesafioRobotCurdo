*** Settings ***

Library  String
Library  Collections
Library    RequestsLibrary
Library    ./Obter_Dados/Data.py

*** Keywords ***
Obter informações do site 4devs
    ${body}    Body Data
    ${response}  POST
    ...          https://www.4devs.com.br/ferramentas_online.php 
    ...          data=${body} 

    ${response}    Set Variable    ${response.json()}
    Set Suite Variable    ${response}


    Log To Console    ${response}
    ${nome}              Set Variable    ${response}[0][nome]
    ${idade}             Set Variable    ${response}[0][idade]
    ${cpf}               Set Variable    ${response}[0][cpf]
    ${rg}                Set Variable    ${response}[0][rg]
    ${data_nasc}         Set Variable    ${response}[0][data_nasc]
    ${sexo}              Set Variable    ${response}[0][sexo]
    ${signo}             Set Variable    ${response}[0][signo]
    ${mae}               Set Variable    ${response}[0][mae]
    ${pai}               Set Variable    ${response}[0][pai]
    ${email}             Set Variable    ${response}[0][email]
    ${senha}             Set Variable    ${response}[0][senha]
    ${cep}               Set Variable    ${response}[0][cep]
    ${endereco}          Set Variable    ${response}[0][endereco]
    ${numero}            Set Variable    ${response}[0][numero]
    ${bairro}            Set Variable    ${response}[0][bairro]
    ${cidade}            Set Variable    ${response}[0][cidade]
    ${estado}            Set Variable    ${response}[0][estado]
    ${telefone_fixo}     Set Variable    ${response}[0][telefone_fixo]
    ${celular}           Set Variable    ${response}[0][celular]
    ${altura}            Set Variable    ${response}[0][altura]
    ${peso}              Set Variable    ${response}[0][peso]
    ${tipo_sanguineo}    Set Variable    ${response}[0][tipo_sanguineo]
    ${cor}               Set Variable    ${response}[0][cor]
    
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