CREATE TABLE Itens_Estoque(
idItem INT NOT NULL AUTO_INCREMENT,
descricaoItem VARCHAR(200),
setorItem VARCHAR(200),
precoVendaItem DOUBLE(9,2),
estoqueItem INT,
PRIMARY KEY (idItem)
);
