const express = require('express');
const router = express.Router();
const filmesController = require('../controllers/filmesController');

router.get('/', filmesController.listarTodos);
router.get('/:id', filmesController.buscarPorId);
router.post('/', filmesController.criarFilme);
router.put('/:id', filmesController.atualizarFilme);
router.delete('/:id', filmesController.deletarFilme);

module.exports = router;
