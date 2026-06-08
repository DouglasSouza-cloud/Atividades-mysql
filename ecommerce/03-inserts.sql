-- POPULANDO TABELA CATEGORIA
INSERT INTO categoria (nome, descricao) VALUES
('Shampoos', 'Produtos para limpeza capilar'),
('Condicionadores', 'Produtos para hidratação e maciez'),
('Máscaras Capilares', 'Tratamentos intensivos para os cabelos'),
('Finalizadores', 'Produtos para finalização e proteção'),
('Óleos Capilares', 'Óleos nutritivos e reparadores');


-- POPULANDO TABELA PRODUTO
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES
('Shampoo Hidratante Coconut', 'Shampoo nutritivo para cabelos ressecados', 39.90, 25, 1),

('Condicionador Repair Care', 'Condicionador fortalecedor com queratina', 42.50, 18, 2),

('Máscara Ultra Nutri', 'Máscara capilar de hidratação profunda', 59.90, 12, 3),

('Leave-in Protection', 'Finalizador com proteção térmica e UV', 47.00, 20, 4),

('Óleo Capilar Argan Gold', 'Óleo reparador para brilho e redução de frizz', 64.90, 15, 5);

