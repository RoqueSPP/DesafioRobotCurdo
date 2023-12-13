*** Settings ***

Library    SeleniumLibrary
Resource    Data.robot
Resource    Locator.robot
*** Variables ***

${msg}     EU SEI AUTOMATIZAR COM ROBOTFRAMEWORK
${time}    5
*** Keywords ***

Preencher a pagina de testes 
    Input Text                       ${TESTE.nome}                ${nome}
    Input Text                       ${TESTE.idade}               ${idade}
    Input Text                       ${TESTE.cpf}                 ${cpf}
    Input Text                       ${TESTE.rg}                  ${rg}
    Input Text                       ${TESTE.data_nasc}           ${data_nasc}
    Select From List By Value        ${TESTE.sexo}                ${sexo}
    Select From List By Value        ${TESTE.signo}               ${signo}
    Input Text                       ${TESTE.mae}                 ${mae}
    Input Text                       ${TESTE.pai}                 ${pai}
    Input Text                       ${TESTE.email}               ${email}
    Input Text                       ${TESTE.senha}               ${senha}
    Input Text                       ${TESTE.cep}                 ${cep}
    Input Text                       ${TESTE.endereco}            ${endereco}
    Input Text                       ${TESTE.numero}              ${numero}
    Input Text                       ${TESTE.bairro}              ${bairro}
    Input Text                       ${TESTE.cidade}              ${cidade}
    Input Text                       ${TESTE.estado}              ${estado}
    Input Text                       ${TESTE.telefone_fixo}       ${telefone_fixo}
    Input Text                       ${TESTE.celular}             ${celular}
    Input Text                       ${TESTE.altura}              ${altura}
    Input Text                       ${TESTE.peso}                ${peso}
    Input Text                       ${TESTE.tipo_sanguineo}      ${tipo_sanguineo}
    Input Text                       ${TESTE.cor}                 ${cor}
    Capture Page Screenshot
    Click Element                    ${TESTE.btnSubmit}
    Sleep                                                         ${time} 
    Wait Until Element Is Visible    ${TESTE.msgSuccess}          ${time}
    ${TEXTO}    Get Text             ${TESTE.msgSuccess}
    Should Be Equal As Strings       ${TEXTO}                     ${msg}
    
           

                