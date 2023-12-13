
from faker import Faker
from bs4 import BeautifulSoup
import requests

fake = Faker()
def Data_Info():
    data = [('firstName',fake.name()),('middleName',fake.name()),
    ('lastName',fake.last_name_male()),('nickname',fake.name_male()),
    ('employee',fake.random_number()),('otherId',fake.random_number()),
    ('driverLicense',fake.random_number()),('licenseExpire',fake.date_this_year()),
    ('ssnLicense',fake.random_number()),('sinLicense',fake.random_number()),
    ('militarservice',fake.random_number())]
    return dict(data)

print(Data_Info())

def Validade_Data():
    data = ['nome','idade','cpf','rg','data_nasc','sexo','signo','mae',
    'pai','email','senha','cep','endereco','numero','bairro','cidade',
    'estado','telefone_fixo','celular','altura','peso','tipo_sanguineo','cor']
    return (data)
print(Validade_Data())

def Body_Data():
    data = [('acao','gerar_pessoa'),('pontuacao','N'),('sexo','H'),('txt_qtde','1')]
    return  dict(data)

def Cartao_Credito():
 url = "https://www.4devs.com.br/ferramentas_online.php"
 payload = {'acao': 'gerar_cc',
 'pontuacao': 'S',
 'bandeira': 'master'}

 response = requests.post(url, data=payload)
 print(response)
 soap = BeautifulSoup(response.text, 'html.parser')
 cartao = soap.find_all('div')[2].text
 data = soap.find_all('div')[5].text
 codigo = soap.find_all('div')[8].text
 data = [cartao, data,codigo]
 return data
print(Cartao_Credito())

