require('dotenv').config();
const express = require('express');
const app = express();
const filmesRoutes = require('./routes/filmes');
const db = require('./config/db');

app.use(express.json());

// Rotas principais
app.use('/filmes', filmesRoutes);

// Teste de conexão com o banco de dados filmes_db
db.connect((err) => {
    if (err) {
        console.error('Erro ao conectar no MySQL:', err);
    } else {
        console.log('Conectado ao banco de dados MySQL!');
    }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
