SELECT * FROM cliente;

SELECT * FROM produto;

SELECT nome_produto, preco
FROM produto;

SELECT *
FROM produto
WHERE preco > 10;

SELECT *
FROM cliente
ORDER BY nome;

SELECT c.nome,
       c.sobrenome,
       v.data_venda,
       v.valor_total
FROM cliente c
JOIN venda v
ON c.id_cliente = v.id_cliente;

SELECT c.nome,
       p.nome_produto,
       iv.quantidade,
       iv.subtotal
FROM cliente c
JOIN venda v
ON c.id_cliente = v.id_cliente
JOIN item_venda iv
ON v.id_venda = iv.id_venda
JOIN produto p
ON iv.id_produto = p.id_produto;

SELECT SUM(valor_total) AS total_vendas
FROM venda;

SELECT c.nome,
       COUNT(v.id_venda) AS total_vendas
FROM cliente c
JOIN venda v
ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente;

SELECT c.nome,
       COUNT(v.id_venda) AS compras
FROM cliente c
JOIN venda v
ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING COUNT(v.id_venda) > 1;

SELECT p.nome_produto,
       e.quantidade
FROM produto p
JOIN estoque e
ON p.id_produto = e.id_produto
WHERE e.quantidade < 80;

SELECT p.nome_produto,
       SUM(iv.quantidade) AS vendidos
FROM produto p
JOIN item_venda iv
ON p.id_produto = iv.id_produto
GROUP BY p.id_produto
ORDER BY vendidos DESC;