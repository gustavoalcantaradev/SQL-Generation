CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
tamanho INT NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
preco INT NOT NULL,
DoceSalgada varchar(255) NOT NULL,
TempoPreparo INT NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

-- tabela categorias
INSERT INTO tb_categorias (tamanho, descricao) VALUES (6 , "Super Deliciosa!");
INSERT INTO tb_categorias (tamanho, descricao) VALUES (8 , "A mais vendida!");
INSERT INTO tb_categorias (tamanho, descricao) VALUES (12 , "A maior de todas");

-- tabela pizzas
INSERT INTO tb_pizzas (sabor, preco, DoceSalgada, TempoPreparo, categoria_id)
VALUES ("Queijo" , 45, "Salgada", 30, 2 );
INSERT INTO tb_pizzas (sabor, preco, DoceSalgada, TempoPreparo, categoria_id)
VALUES ("Calabresa" , 50, "Salgada", 35, 2 );
INSERT INTO tb_pizzas (sabor, preco, DoceSalgada, TempoPreparo, categoria_id)
VALUES ("Brigadeiro" , 30, "Doce", 20, 1 );
INSERT INTO tb_pizzas (sabor, preco, DoceSalgada, TempoPreparo, categoria_id)
VALUES ("Mista" , 80, "Salgada", 45, 3 );
INSERT INTO tb_pizzas (sabor, preco, DoceSalgada, TempoPreparo, categoria_id)
VALUES ("Pretigio" , 35, "Doce", 30, 1 );
INSERT INTO tb_pizzas (sabor, preco, DoceSalgada, TempoPreparo, categoria_id)
VALUES ("Frango" , 60, "Salgada", 50, 2 );

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 1000;

SELECT * FROM tb_pizzas WHERE sabor like "%m%";

SELECT sabor, preco ,DoceSalgada , TempoPreparo, tb_categorias.tamanho, tb_categorias.descricao
FROM tb_pizzas
INNER JOIN tb_categorias
ON categoria_id = tb_categorias.id;