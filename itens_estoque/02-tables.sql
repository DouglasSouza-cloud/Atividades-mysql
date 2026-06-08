CREATE TABLE itensestoque(
iditem INT NOT NULL AUTO_INCREMENT,
descricaoitem VARCHAR(200),
setoritem VARCHAR(200),
precoVendaitem DOUBLE(9,2),
estoqueitem INT,
PRIMARY KEY (iditem)
);