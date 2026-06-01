---
# Anotações da disciplina de Projeto de Banco de Dados
---

## BD x SGDB
<pre>
BD (Banco de dados)                                              
- DDL (Data Definition Language)                                   
  - Esquema
  - Tabelas                 } criar, aleterar, remover -> Desenha o banco     
  - Restrição                                                         
    
SGDB (Sistema Gerenciador de Banco de Dados) 
- Serviços
- Restrições de integridade  
- Gestão de transações  
- Manipulação de dados
  - DML (Data Manipulation Language)
  - Tabela                      
  - Relacinamentos         } select, update, delete - .../indíces/colunas -> mexer nos dados    
</pre>

---
  
## Modelagem - É identificar ou mapear requisitos estruturais do sistema
<pre>
MODELO CONCEITUAL
- visão de negócio
- diagrama DER
- independe da tecnologia
- só entidades, atributos (chave primária) e relacionamentos
- chave primária: pode ser um ou mais atributos que garantem unicidade na tabela/entidade
- usado para ser apresentado ao cliente

MODELO LÓGICO
- traduz o modelo conceitual para estruturas mais próximas do banco relacional
- tabela, atributos, chaves
- transcrição das entidades em tabelas, nome de atributos mais relacionados com nomes de atributos no contexto da programação
  - destaca as chaves estrangeiras
    - é um atributo de uma tabela que visita outra tabela
    - para ser chave estrangeira, na tablea de origem ela precisa ser chave primária
- por exemplo, atributo transcrito do conceitual para o lógico

MODELO FÍSICO
- é o modelo pensando em tecnologia ou linguagem SQL
- implemntação no SGDB escolhido
- define os tipos dos atributos
- se há atributos não nulos ou em branco
</pre>

---

## Sistema de Informação/Conhecimento
<pre>
CONJUNTO DE PARTES/ESPÉCIES
  - Especies              -> motivo da existência
  - Aspectos estruturais  -> oque se quer guardar

REQUISITOS
- Funcionai       -> obrigatórios (tamanho do pé)
- Não-funcionais  -> não obrigatórios (cor do tênis)

DEFINIÇÕES
- Código fonte    -> .c
- Pacote          -> Conjunto de funções prontas
- Biblioteca      -> Conjunto de pacotes
- Frame Work      -> Funcionalidades testadas e completas que podem ser embutidas no seu sistema
- API             -> Ferramenta de integração de serviços
</pre>
  
---

## FRAMEWORKS
<pre>
MVC (Model View Controller)
- Model: camada de persistência ou dados - Orientação a objetos mapeada em Banco de Dados (Mapeamento Objeto Relacional - MOR ou
  Object Relational Mapping - ORM)
- Controller: regra de negócio do sistema
- View: parte do usuário - front-end
</pre>

---

## Conceitos
<pre>
ENTIDADE OU TABELA
- Atributo: chaves primárias e estrangeiras
- Relacionamento:
  - associação
  - agregação/composição: todo e parte de (entidades fracas)
  - herança: é um tipo de

CARDINALIDADE - Indica a quantidade de relação de objetos de uma tabela com outra
- 1:1 -> a chave estrangeira pode ficar em qualquer uma das tabelas.
- 1:n -> a chave estrangeira fica do lado do n
- n:n -> uma terceira tabela é criada contendo duas chaves estrangeiras (uma de cada tabela

OBSERVAÇÕES
- substantivo que categorize/classifique algo vira entidade
- substantivo que qualifique algo vira atributo
- verbo ou as expressões 'é um tipo de', 'é parte de', 'tem relação com' viram relacionamentos

RELACIONAMENTO TERCIÁRIO
- relacionamento que envolve 3 entidades
- sugestão é converter esse relacionamento em relacionamento de 4 entidades, em que a quarta entidade substitui o relacionamento
</pre>

---

## MySQL WorkBench
<pre>
- Gestão de Modelos (DIAGRAMA)
- Gerar Scrips SQL
- Gerar esquema de Banco de Dados

Ver status do mysql: sudo systemctl status mysql
Ativar mysql: sudo systemctl start mysql
Desativar mysql: sudo systemctl stop mysql
senha: 1234

SELECT - FROM - WHERE
- ORDER BY
- HAVING
- SWAP BY

CTRL + ENTER = Roda o selecionado

CTRL + ALT + DEL
GERECIADOR DE TAREFAS 
PESQUISA MYSQL -> INICIA
  
</pre>

---
- Em um contexto profissional, usa-se o SQLserver ao ínves de mySQL
- LER -> HEUSER, C. A. Projeto de banco de dados. Porto Alegre: Saggra Luzzato, 2001.
- PROVA: [link](https://unifrabr.sharepoint.com/:b:/s/2026-1ProjetodeBancodeDados480/IQBIaE2gEwkNS4KPW7QFrOA_AXXyAwS9wfT8Gl72k2DtT-E?e=EeJ3P3)

---

No SQl, em uma relação mtos pra mtos, onde q a tabela da relação possui mais de uma chave primária (q puxa das outras tabelas q compõe a relação), é ideal criar uma chave primaria dentro dessa tabela e desbindar o PK das outras chaves. Dessa maneira tem mais organização. O BO vai pro front

s3schools
sqlbolt

plano/produto cartesiano (Livro.idGenero = Genero.idGenero) 

#98BFDA
#FEDE58
#98D8A5
#FE9898
#FE98FE
#FFFFFF

## Eplicação Prova 2
<pre>
1) Liste todos os autores que escrevem livros do gênero Infantil.

select distinct Autor.nome, Livro.titulo
from Autor, Livro_Autor, Livro, Genero
where Autor.idAutor = Livro_Autor.idAutor and
	    Livro_Autor.idLivro = Livro.idLivro and -- conecta a tabela livro_autor c livro 
	    Livro.idGenero = Genero.idGenero 	  and -- a partir da variavel q se repete 
      Genero.descricao = 'Infantil';

SAÍDA:
nome
Pedro
Francisco
Felipe
Maria

EXPLICAÇÃO:
É preciso conectar as tabelas utulizadas, para fazer isso iguala-se a variável que se repete nelas,
(descobre-se a partir da cardinalidade - onde esta o 'n' - 1..n, n..n, etc). Por exemplo em:
Livro.idGenero = Genero.idGenero -- está conectando a tabela livro com a tabela genero, a partir da
váriavel idGenero, que esta presente nas duas tabelas, como mostra a cardinalidade:  
</pre>
<img width="740" height="181" alt="image" src="https://github.com/user-attachments/assets/d5a47ccd-1056-4a84-be97-c88aa98c2c11" />
<pre>
Ou seja, como o 'n' está para genero, é o genero que visita livro, logo, será a variável idGenero
que estará nas duas tabelas  
</pre>



