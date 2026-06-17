CREATE USER 'teste'@'localhost' IDENTIFIED BY'q1w2e3r4'; -- Criação de Usuários

SELECT * FROM mysql.user; -- Mostrar tudo de Usuários

DROP USER'teste'@'localhost'; -- Excluir Usuário

CREATE USER 'teste2'@'localhost' IDENTIFIED BY''; -- Criação de Usuário sem Senha

SELECT host,user -- Selecionar host e user de Usuários
FROM mysql.user;

DROP USER'teste2'@'localhost'; -- Excluir Usuário


GRANT ALL PRIVILEGES ON *.* TO'teste'@'localhost'; -- Para conceder todos os privilégios disponíveis a um usuário, utilize o seguinte comando:
CREATE USER 'teste3'@'localhost' IDENTIFIED BY''; 
GRANT CREATE,SELECT,INSERT,UPDATE -- Conceda os privilégios desejados
ON *.*
TO'teste3'@'localhost';
FLUSH PRIVILEGES; -- Solicite ao servidor que recarregue as configurações

REVOKE ALL PRIVILEGES -- Revogando todos os privilégios
ON*.*
FROM'teste'@'localhost';

SHOW GRANTS FOR'teste'@'localhost';


