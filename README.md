# 🎬 Catálogo de Filmes - API RESTful

Uma API simples feita com **Node.js + Express** que permite gerenciar um catálogo de filmes, conectada ao banco de dados **MySQL**.

## Funcionalidades

- Listar todos os filmes cadastrados no banco de dados (filmes_db)
- Buscar filme por ID
- Criar um novo cadastro de filme
- Atualizar o cadastro de filme já existente no banco
- Remover filme cadastrado na tabela do banco

## Tecnologias útilizadas no projeto

- JavaScript
- Node.js
- Express.js
- MySQL
- dotenv

## Instalação do projeto na sua máquina + ▶ Passo a Passo: Rodando o projeto catalogo-filmes-api.

## 1. Clone o repositório do projeto para uma pasta local:

```
git clone https://github.com/Saulodtarso06/catalogo-filmes-api.git

cd catalogo-filmes-api
 ```

**Abra o projeto pelo VScode, no terminal execute o comando abaixo:**
```
npm install
```
---

## 2. Rode o script SQL que cria o banco e a tabela:
```
source filmes_db/schema.sql;
```
---
## 3. Configure o banco de dados MySQL
Acesse o MySQL pelo terminal:
```
mysql -u root -p
```
Rode o script SQL que cria o banco e a tabela:
```
sql source filmes_db/schema.sql;
```
**Ou, se preferir via terminal direto:**
```
mysql -u root -p < filmes_db/schema.sql
```
---
## 4. Configure o arquivo .env
Crie um arquivo .env na raiz do projeto com o seguinte conteúdo (ajuste conforme seu MySQL):

```
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=sua_senha (senha do root)
DB_NAME=filmes_db
PORT=3000
```
---
## Rodar com Nodemon (desenvolvimento):
```
npm run dev
```
**Ou com Node puro:**
```
node src/app.js
```
---
## 6. Teste a API
Rota para listar todos os filmes:
http

GET http://localhost:3000/filmes **( ou insira essa URL no navegador)**

Exemplo de resposta JSON:
json

[
  {
    "id": 1,
    "titulo": "Interestelar",
    "diretor": "Christopher Nolan",
    "ano": 2014,
    "genero": "Ficção Científica",
    "nota": 8.6
  },
  ...
]

---
## 🛑 7. Para parar o servidor Nodemon
No terminal, pressione:
```
Ctrl + C
```
