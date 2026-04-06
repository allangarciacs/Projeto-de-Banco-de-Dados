---
# Anotações da disciplina de Projeto de Banco de Dados
---

## BD x SGDB
### BD (Banco de dados)
- Tabelas

### SGDB (Sistema Gerenciador de Banco de Dados)
- Serviços
  - Restrições de integridade
  - Gestão de transações
  - Manipulação de dados

## Modelagem - É identificar ou mapear requisitos estruturais do sistema
<pre>
### Modelo conceitual 
- visão de negócio
- diagrama DER
- independe da tecnologia
- só entidades, atributos (chave primária) e relacionamentos
- chave primária: pode ser um ou mais atributos que garantem unicidade na tabela/entidade
- usado para ser apresentado ao cliente
</pre>

### Modelo lógico
- traduz o modelo conceitual para estruturas mais próximas do banco relacional
- tabela, atributos, chaves
- transcrição das entidades em tabelas, nome de atributos mais relacionados com nomes de atributos no contexto de programação
  - destaca as chaves estrangeiras
    - é um atributo de uma tabela que visita outra tabela
    - para ser chave estrangeira, na tablea de origem ela precisa ser chave primária
- por exemplo, atributo transcrito do conceitual para o lógico

### Modelo físico
- é o modelo pensando em tecnologia ou linguagem SQL
- implemntação no SGDB escolhido
- define os tipos dos atributos
- se há atributos não nulos ou em branco

---

## Sistema de Informação/Conhecimento
- Comjunto de partes/especies
  - Especies             -> motivo da existência
  - Aspectos estruturais -> oque se quer guardar

### Requisitos
- Funcionais      -> obrigatórios (tamanho do pé)
- Não-funcionais  -> não obrigatórios (cor do tênis)

### Definições
<pre>
- Código fonte    -> .c
- Pacote          -> Conjunto de funções prontas
- Biblioteca      -> Conjunto de pacotes
- Frame Work      -> Funcionalidades testadas e completas que podem ser embutidas no seu sistema
- API             -> Ferramenta de integração de serviços
</pre>
  
---

## FRAMEWORKS
### Model View Controller (MVC)
- Model: camada de persistência ou dados - Orientação a objetos mapeada em Banco de Dados (Mapeamento Objeto Relacional - MOR ou Object Relational Mapping - ORM)
- Controller: regra de negócio do sistema
- View: parte do usuário - front-end

---

## Conceitos
### Entidade ou tabela
- Atributo: chaves primárias e estrangeiras
- Relacionamento:
  - associação
  - agregação/composição: todo e parte de (entidades fracas)
  - herança: é um tipo de

### Cardinalidade - Indica a quantidade de relação de objetos de uma tabela com outra
- 1:1 -> a chave estrangeira pode ficar em qualquer uma das tabelas.
- 1:n -> a chave estrangeira fica do lado do n
- n:n -> uma terceira tabela é criada contendo duas chaves estrangeiras (uma de cada tabela

### Observações
- substantivo que categorize/classifique algo vira entidade
- substantivo que qualifique algo vira atributo
- verbo ou as expressões 'é um tipo de', 'é parte de', 'tem relação com' viram relacionamentos

### Relacionamento Terciário
- relacionamento que envolve 3 entidades
- sugestão é converter esse relacionamento em relacionamento de 4 entidades, em que a quarta entidade substitui o relacionamento

---

## MySQL WorkBench
- Gestão de Modelos (DIAGRAMA)
- Gerar Scrips SQL
- Gerar esquema de Banco de Dados

---

LER -> HEUSER, C. A. Projeto de banco de dados. Porto Alegre: Saggra Luzzato, 2001.
PROVA: [link](https://unifrabr.sharepoint.com/:b:/s/2026-1ProjetodeBancodeDados480/IQBIaE2gEwkNS4KPW7QFrOA_AXXyAwS9wfT8Gl72k2DtT-E?e=EeJ3P3)
