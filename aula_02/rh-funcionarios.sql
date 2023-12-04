CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo INT,
    datainicio DATE,
	salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios( nome, cargo , datainicio , salario )
VALUES ("Gustavo", 1 , "2023-11-01", 2.000),
("João", 2 , "2023-11-01", 3.000),
("Carlos", 3 , "2023-11-01", 4.000),
("José", 4 , "2023-11-01", 5.000),
("André", 5 , "2023-11-01", 6.000);

ALTER TABLE tb_funcionarios MODIFY salario DECIMAL(6,3);

SELECT * FROM tb_funcionarios WHERE salario < 2.000;

UPDATE tb_funcionarios SET salario = 0.500 WHERE Id = 4;
