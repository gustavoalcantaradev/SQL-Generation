CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	marca VARCHAR(255) NOT NULL,
    cor VARCHAR(255) NOT NULL,
	valor DECIMAL NOT NULL,
    quantidade INT,
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos( nome, marca , cor , valor , quantidade )
VALUES ("Iphone XR" , "Apple", "Azul" , 2.000 , 10),
("S23" , "Samsung" , "Preto" , 2.500 , 15),
("Iphone 15" , "Apple" , "Rosa" , 3.000 , 18),
("Motorola Edge" , "Motorola" , "Preto" , 2.000 , 5),
("S22" , "Samsung" ,  "Branco" , 1.500 , 19),
("Iphone 11" , "Apple" , "Preto" , 3.200 , 8),
("Motorola G53" , "Motorola" , "Branco" , 2.300 , 15),
("S20" , "Samsung" ,  "Azul" , 2.500 , 29);

ALTER TABLE tb_produtos MODIFY valor DECIMAL(6,3);

UPDATE tb_produtos SET valor = 2.500 WHERE Id = 8;

SELECT * FROM tb_produtos WHERE valor < 2.000;