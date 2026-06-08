
SELECT*FROM itensEstoque
WHERE precoVendaitem = (
SELECT MAX(precoVendaitem)
FROM itensestoque
);

SELECT*FROM itensestoque
WHERE precoVendaitem <> (
SELECT MAX(precoVendaitem)
FROM itensestoque
);

SELECT*FROM itensestoque
WHERE precoVendaitem <> 10; (
SELECT MAX(precoVendaitem)
FROM itensestoque
);

SELECT descricaoitem
FROM itensestoque
WHERE iditem IN (
SELECT iditem 
FROM itensestoque
WHERE precoVendaitem <> 2
);