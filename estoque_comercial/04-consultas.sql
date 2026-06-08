SELECT setorItem FROM Itens_Estoque
where descricaoItem = 'Molho de Tomate';

SELECT setorItem, setorItem, precoVendaItem
FROM Itens_Estoque
where descricaoItem <> 'Iogurte Natural';

select precoVendaItem, estoqueItem
from Itens_Estoque
where descricaoItem = 'Biscoito Integral ' AND setorItem is NULL

INSERT INTO Itens_Estoque
(descricaoItem,setorItem,precoVendaItem,estoqueItem)VALUES
('Refrigerante de Cola', 'Bebidas', '7.50', 700);


SELECT descricaoItem, setorItem, precoVendaItem
FROM Itens_Estoque
WHERE setorItem = 'Bebidas'
OR setorItem = 'Alimentos';


SELECT descricaoItem, setorItem, precoVendaItem
FROM Itens_Estoque
WHERE descricaoItem = 'Refrigerante de Cola'
OR precoVendaItem > 10;

select descricaoItem, setorItem, precoVendaItem
from Itens_Estoque
where precoVendaItem between 1.00 and 7.50;



select * from Itens_Estoque
where descricaoItem like '%ão%';

select(precoVendaItem * estoqueItem) AS total_multi
from Itens_Estoque;

select(precoVendaItem / estoqueItem) AS total_divi
from Itens_Estoque;

select(precoVendaItem - estoqueItem) AS total_subtra
from Itens_Estoque;

select(precoVendaItem + estoqueItem) AS total_soma
from Itens_Estoque;

select(precoVendaItem * 2) AS total_multi_por_2
from Itens_Estoque;

select precoVendaItem
from Itens_Estoque
where setorItem
in('Alimentos', 'Limpeza','Praia', 'Bebidas', 'Laticínios')
ORDER BY precoVendaItem desc;


select precoVendaItem
from Itens_Estoque
where setorItem
in('Alimentos', 'Limpeza','Praia', 'Bebidas', 'Laticínios')
ORDER BY precoVendaItem asc;

select precoVendaItem
from Itens_Estoque
where setorItem
in('Alimentos', 'Limpeza','Praia', 'Bebidas', 'Laticínios')
ORDER BY precoVendaItem, setorItem desc;

select count (descricaoItem)
from Itens_Estoque
where descricaoItem like '%Molho%';

select avg (precoVendaItem)
from Itens_Estoque;

select sum (estoqueItem)
from Itens_Estoque;

select min (precoVendaItem)
from Itens_Estoque;

select max (precoVendaItem)
from Itens_Estoque;

-- 1) Verificar quantidade de itens por setor
select setorItem, count(estoqueItem) as qtd
from ItensEstoque
GROUP BY setorItem;

-- 2) Verificar média do valor dos produtos por setor
SELECT setorItem, AVG (precoVendaItem) AS media_preco
FROM ItensEstoque
GROUP BY setorItem;

-- 3) Verificar valor mínimo e máximo por setor
SELECT setorItem,
MIN(precoVendaItem) AS menor_preco,
MAX(precoVendaItem) AS maior_preco
FROM ItensEstoque
GROUP BY setorItem;
