Feira API with DjangoRestFramework
=================================

Objetivo:
--------- 
Desenvolver uma API que exponha os dados disponiveis em
www.prefeitura.sp.gov.br/cidade/secretarias/upload/chamadas/feiras_livres_1429113213.zip
utilizando uma abordagem orientada a recursos e que atenda os requisitos listados abaixo:

Escopo
------
Utilizando os dados do arquivo “DEINFO_AB_FEIRASLIVRES_2014.csv”,
implemente: 

*  cadastro de uma nova feira; 
   http://127.0.0.1:8000/admin/feiraapp/feira/add/

*  exclusão de uma feira através de seu código de registro;
   http://127.0.0.1:8000/admin/feiraapp/feira/1/delete/

*  alteração dos campos cadastrados de uma feira, exceto seu código de registro;
   http://127.0.0.1:8000/admin/feiraapp/feira/1/change/
    
*  busca de feiras utilizando ao menos um dos parâmetros abaixo: 
    * distrito
    * regiao5
    * nome_feira 
    * bairro 

Requisitos
----------
 
* desenvolvimento em Python com utilização facultativa de um framework de apoio;
* utilize git ou hg para fazer o controle de versão da solução do teste e hospede-a no Github ou Bitbucket; 
* armazene os dados fornecidos pela Prefeitura de São Paulo em um banco de dados relacional que você julgar apropriado; 
* a solução deve conter um script para importar os dados do arquivo “DEINFO_AB_FEIRASLIVRES_2014.csv” para o banco relacional;
* a API deve seguir os conceitos REST;
* o Content-Type das respostas da API deve ser “application/json";
* o código da solução deve conter testes e algum mecanismo documentado parar gerar a informação de cobertura dos testes; 
* a aplicação deve gravar logs estruturados em arquivos texto; 
* a solução do teste deve estar documentada em português ou inglês. Escolha um idioma em que você seja fluente; 
* a documentação da solução do teste deve incluir como rodar o projeto e exemplos de requisições e suas possíveis respostas;

Getting Started
---------------

### Initial Setup ###
1. Make a new virtualenv: ``virtualenv .venv``
2. Activate the virtualenv: ``source .venv/bin/activate``
3. Install Django: ``pip install -r requirements.txt``
4. Edit ``feira/settings.py:108`` to match your LANGUAGE_CODE 
5. Run the server: ``python manage.py runserver``

Solução Apresentada
-------------------
Desenvolvimento de API com o DjangoRestFramework

Para acessar a API pelo browse
------------------------------
* Listagem das Feiras
 ``http://127.0.0.1:8000/feira`` 

* Detalhe de uma Feira
 ``http://127.0.0.1:8000/feira/1/``


``http://127.0.0.1:8000/admin`` (admin:admin)
  
 
