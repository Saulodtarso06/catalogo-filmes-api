// Configuração Swagger/OpenAPI para Catálogo de Filmes API

const swaggerOptions = {
    swaggerDefinition: {
        openapi: '3.0.0',
        info: {
            title: 'Catálogo de Filmes API',
            version: '1.0.0',
            description: 'API para gerenciar um catálogo de filmes',
        },
        servers: [
            {
                url: 'http://localhost:3000',
                description: 'Servidor local',
            },
        ],
        components: {
            schemas: {
                Filme: {
                    type: 'object',
                    properties: {
                        id: { type: 'integer' },
                        titulo: { type: 'string' },
                        diretor: { type: 'string' },
                        ano: { type: 'integer' },
                        genero: { type: 'string' },
                    },
                },
            },
        },
    },
    apis: ['./src/routes/*.js'],
};

module.exports = swaggerOptions;
