-- CLIENTES
INSERT INTO cliente
(nome, sobrenome, cpf, telefone, email, rua, numero, cidade, cep)
VALUES
('João','Silva','11111111111','48999990001','joao@gmail.com','Rua A','10','Florianópolis','88000000'),
('Maria','Souza','22222222222','48999990002','maria@gmail.com','Rua B','20','São José','88100000'),
('Pedro','Oliveira','33333333333','48999990003','pedro@gmail.com','Rua C','30','Palhoça','88200000'),
('Ana','Costa','44444444444','48999990004','ana@gmail.com','Rua D','40','Florianópolis','88300000');

-- PRODUTOS
INSERT INTO produto
(nome_produto, descricao, preco, categoria, marca, codigo_barras, data_validade, peso, status)
VALUES
('Arroz 5kg','Arroz branco',25.90,'Alimentos','Tio João','1001','2027-01-01',5.00,'Ativo'),
('Feijão 1kg','Feijão preto',8.50,'Alimentos','Camil','1002','2027-01-01',1.00,'Ativo'),
('Refrigerante','Coca-Cola 2L',12.00,'Bebidas','Coca-Cola','1003','2026-12-01',2.00,'Ativo'),
('Detergente','Detergente líquido',3.50,'Limpeza','Ypê','1004','2028-01-01',0.50,'Ativo'),
('Sabão em pó','Sabão 1kg',15.00,'Limpeza','OMO','1005','2028-01-01',1.00,'Ativo');

-- FORNECEDORES
INSERT INTO fornecedor
(nome, cnpj, telefone, email, rua, cidade, cep, contato, status)
VALUES
('Distribuidora Sul','11111111000100','4833331111','contato@sul.com','Rua X','Florianópolis','88000000','Carlos','Ativo'),
('Mercantil Brasil','22222222000100','4833332222','contato@mercantil.com','Rua Y','São José','88100000','Marcos','Ativo');

-- VENDAS
INSERT INTO venda
(data_venda, valor_total, forma_pagamento, desconto, id_cliente, status, hora, observacao, caixa)
VALUES
('2026-06-01',65.00,'Cartão',5.00,1,'Concluída','10:00:00','Venda normal','Caixa 1'),
('2026-06-02',40.00,'PIX',0.00,2,'Concluída','11:30:00','Sem observações','Caixa 2'),
('2026-06-03',90.00,'Dinheiro',10.00,1,'Concluída','14:00:00','Cliente fiel','Caixa 1'),
('2026-06-04',25.00,'Cartão',0.00,3,'Pendente','16:00:00','Aguardando pagamento','Caixa 3');

-- ITENS
INSERT INTO item_venda
(id_venda, id_produto, quantidade, preco_unitario, subtotal, desconto_item, imposto, status, observacao)
VALUES
(1,1,2,25.90,51.80,0,5,'OK',''),
(1,2,1,8.50,8.50,0,1,'OK',''),

(2,3,2,12.00,24.00,0,2,'OK',''),
(2,4,4,3.50,14.00,0,1,'OK',''),

(3,1,2,25.90,51.80,5,5,'OK',''),
(3,5,2,15.00,30.00,0,3,'OK',''),

(4,2,3,8.50,25.50,0,2,'Pendente','');

-- ESTOQUE
INSERT INTO estoque
(id_produto, quantidade, quantidade_minima, localizacao, data_entrada, lote, validade, status)
VALUES
(1,100,20,'A1','2026-01-01','L001','2027-01-01','Disponível'),
(2,80,15,'A2','2026-01-01','L002','2027-01-01','Disponível'),
(3,50,10,'B1','2026-01-01','L003','2026-12-01','Disponível'),
(4,120,30,'C1','2026-01-01','L004','2028-01-01','Disponível'),
(5,70,20,'C2','2026-01-01','L005','2028-01-01','Disponível');

-- PAGAMENTOS
INSERT INTO pagamento
(id_venda, tipo, valor, data_pagamento, status, parcelas, bandeira, autorizacao, observacao)
VALUES
(1,'Crédito',65.00,'2026-06-01','Pago',1,'Visa','AUT001',''),
(2,'PIX',40.00,'2026-06-02','Pago',1,NULL,'AUT002',''),
(3,'Dinheiro',90.00,'2026-06-03','Pago',1,NULL,'AUT003','');