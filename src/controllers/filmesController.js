const db = require('../config/db');

exports.listarTodos = (req, res) => {
    db.query('SELECT * FROM filmes', (err, resultados) => {
        if (err) return res.status(500).json({ erro: err });
        res.json(resultados);
    });
};

exports.buscarPorId = (req, res) => {
    const { id } = req.params;
    db.query('SELECT * FROM filmes WHERE id = ?', [id], (err, resultados) => {
        if (err) return res.status(500).json({ erro: err });
        if (resultados.length === 0) return res.status(404).json({ mensagem: 'Filme não encontrado' });
        res.json(resultados[0]);
    });
};

exports.criarFilme = (req, res) => {
    const { titulo, diretor, ano, genero, nota } = req.body;
    db.query(
        'INSERT INTO filmes (titulo, diretor, ano, genero, nota) VALUES (?, ?, ?, ?, ?)',
        [titulo, diretor, ano, genero, nota],
        (err, resultado) => {
            if (err) return res.status(500).json({ erro: err });
            res.status(201).json({ id: resultado.insertId, ...req.body });
        }
    );
};

exports.atualizarFilme = (req, res) => {
    const { id } = req.params;
    const { titulo, diretor, ano, genero, nota } = req.body;
    db.query(
        'UPDATE filmes SET titulo = ?, diretor = ?, ano = ?, genero = ?, nota = ? WHERE id = ?',
        [titulo, diretor, ano, genero, nota, id],
        (err, resultado) => {
            if (err) return res.status(500).json({ erro: err });
            res.json({ mensagem: 'Filme atualizado com sucesso' });
        }
    );
};

exports.deletarFilme = (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM filmes WHERE id = ?', [id], (err, resultado) => {
        if (err) return res.status(500).json({ erro: err });
        res.json({ mensagem: 'Filme removido com sucesso' });
    });
};
