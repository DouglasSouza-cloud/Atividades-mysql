-- CLIENTE
INSERT INTO cliente(nome_cliente, email_cliente)
VALUES
('Peter Parker', 'Peter@aranha'),
('Dege','Dege@paixao');
-- PRODUTO
INSERT INTO produto (nome_produto, preco_produto)
VALUES
('CAFÉ', 255.00),
('PÃO', 16.76);
-- VENDAS
INSERT INTO venda (data_venda, id_cliente)
VALUES
('2025-01-01', 1),
('2026-01-01', 2);
-- ITEM_VENDA
INSERT INTO item_venda (id_venda, id_produto, quantidade_item, preco_unitario)
value
(1, 1, 2, 255.00),
(2, 2, 5, 16.76);