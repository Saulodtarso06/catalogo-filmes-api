# 🎬 Catálogo de Filmes - API RESTful

Uma API simples feita com **Node.js + Express** que permite gerenciar um catálogo de filmes, conectada ao banco de dados **MySQL**.

## Funcionalidades

- Listar todos os filmes cadastrados no banco de dados (filmes_db).
- Buscar filme por ID.
- Criar um novo cadastro de filme.
- Atualizar o cadastro de filme já existente no banco.
- Remover filme cadastrado na tabela do banco.


## Tecnologias utilizadas no projeto

- JavaScript
- Node.js
- Express.js
- MySQL
- dotenv
- Swagger (Documentação interativa)


## Instalação e execução do projeto


### 1. Clone o repositório do projeto para uma pasta local:

```js
git clone https://github.com/Saulodtarso06/catalogo-filmes-api.git

cd catalogo-filmes-api
 ```

**Abra o projeto pelo VSCode, no terminal execute o comando abaixo:**
```bash
# Pacote de gerenciamento Node.js

npm install
```
* Instale também as dependências do Swagger:

```bash # instalação das especificação Swagger (OpenAPI).

npm install swagger-ui-express swagger-jsdoc
```
---
### 2. Rode o script SQL que cria o banco e a tabela e configure o banco de dados MySQL com o XAMPP + Mysql Workbench.
* Acesse o MySQL pelo terminal:
```bash 
# Use o XAMPP Control Panel para rodar o servidor Mysql localmente na porta 3306.

# Use o Mysql Workbench para conectar o banco de dados pelo SQL script -> schema.sql

# Para visualizar as tabelas do banco de dados, acesse o terminal Mysql e insira o código abaixo, lembre-se da sua senha root.

mysql -u root -p
```
---
### 3. Configure o arquivo .env
Crie um arquivo `.env` na raiz do projeto com o seguinte conteúdo (**ajuste conforme seu MySQL**):
```sql
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=sua_senha
DB_NAME=filmes_db
PORT=3000
```
---
### 4. Rodando o projeto
* Para desenvolvimento, use:
```
npm run dev
```
* Ou para rodar normalmente:
```
node src/app.js
```
* Se quiser, adicione um script "start" ao seu package.json:
```js
"scripts": {
  "start": "node src/app.js",
  "dev": "nodemon src/app.js"
}
```
---

### 5. Testando a API
* Exemplo de requisição para listar todos os filmes:
```js
http://localhost:3000/filmes
```
* Exemplo de resposta JSON:
```js
[
  {
    "id": 1,
    "titulo": "Interestelar",
    "diretor": "Christopher Nolan",
    "ano": 2014,
    "genero": "Ficção Científica"
  },
  ...
]
```

### 6. Documentação Swagger
Acesse a documentação interativa da API em:
```js
http://localhost:3000/api-docs
```
Você pode testar todos os endpoints diretamente pelo navegador.

---
### 7. 🛑 Parar o servidor
No terminal, pressione:
```
Ctrl + C
```
