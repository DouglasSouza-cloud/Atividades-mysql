SELECT * from categoria;

SELECT * from produto;

UPDATE produto
set categoria_id = 1
where id = 1;

UPDATE produto
set categoria_id = 3
where nome like 'M%';

UPDATE produto
set categoria_id = 5
where estoque >= 0;

UPDATE produto
set estoque = estoque + 30
where id = 1;

UPDATE produto
set 
nome= 'Blend de oleos milagrosos',
descricao = 'Oleo milagrosos, blend de sete oleos poderosos',
estoque = 15
where id = 5;


/*
delete from produto where id = 1;
insert into produto()
value(default, 'telefonex', 'telefone legal', 50.00,200,1);

 delete from produto
 where nome = 'telefoneX' and id= 1;

 delete from produto
 where nome = 'telefoneX' or id= 1;
 
 */