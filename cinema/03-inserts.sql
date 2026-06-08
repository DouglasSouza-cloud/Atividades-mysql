-- CLIENTES
INSERT INTO cliente (nome_cliente, cpf_cliente, email_cliente, status_cliente) VALUES
('João Silva', '111.111.111-11', 'joao@email.com', 'ATIVO'),
('Maria Souza', '222.222.222-22', 'maria@email.com', 'ATIVO'),
('Carlos Pereira', '333.333.333-33', 'carlos@email.com', 'INATIVO'),
('Ana Oliveira', '444.444.444-44', 'ana@email.com', 'ATIVO');

-- CATEGORIAS
INSERT INTO categoria (descricao_cat) VALUES
('Ação'),
('Comédia'),
('Drama'),
('Terror'),
('Animação');

-- FILMES
INSERT INTO filme (nome_filme, faixa_etaria, duracao_filme, status_filme, id_categoria_filme) VALUES
('Missão Impossível', 14, 120, 'EM CARTAZ', 1),
('Se Beber Não Case', 16, 110, 'FORA CARTAZ', 2),
('O Poderoso Chefão', 18, 175, 'FORA CARTAZ', 3),
('Invocação do Mal', 16, 112, 'EM CARTAZ', 4),
('Toy Story', 0, 90, 'EM CARTAZ', 5);

-- SALAS
INSERT INTO sala (descricao_sala, tipo_sala, capacidade_sala, vip_sala) VALUES
('Sala 1 - Principal', '2D', 100, FALSE),
('Sala 2 - 3D', '3D', 80, FALSE),
('Sala 3 - IMAX Premium', 'IMAX', 60, TRUE);

-- SESSÕES
INSERT INTO sessao (data_hora, status_sessao, id_sala, id_filme) VALUES
('2026-05-01 18:00:00', 'ABERTA', 1, 1),
('2026-05-01 20:00:00', 'ABERTA', 2, 4),
('2026-05-02 16:00:00', 'ABERTA', 3, 5),
('2026-05-02 21:00:00', 'ABERTA', 1, 3);

-- TIPOS DE INGRESSO
INSERT INTO tipo_ingresso (descricao_ingresso, valor_ingresso) VALUES
('Inteira', 30.00),
('Meia-entrada', 15.00),
('VIP', 50.00);

-- PEDIDOS
INSERT INTO pedido (id_cliente, status_pedido) VALUES
(1, 'PAGO'),
(2, 'ABERTO'),
(1, 'CANCELADO'),
(4, 'PAGO');

-- INGRESSOS
INSERT INTO ingresso (id_pedido, id_sessao, id_tipo_ingresso, valor_pago, status_ingresso) VALUES
(1, 1, 1, 30.00, 'PAGO'),
(1, 1, 2, 15.00, 'PAGO'),
(2, 2, 1, 30.00, 'RESERVADO'),
(3, 3, 2, 15.00, 'CANCELADO'),
(4, 3, 3, 50.00, 'PAGO');