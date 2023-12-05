CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
poder varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT,
Nome varchar(255) NOT NULL,
NivelForca INT NOT NULL,
NivelDefesa INT NOT NULL,
NivelVelocidade INT NOT NULL,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (poder, descricao) VALUES ("Força" , "Super musculos");
INSERT INTO tb_classes (poder, descricao) VALUES ("Invisibilidade" , "Atravessa paredes");
INSERT INTO tb_classes (poder, descricao) VALUES ("Voar" , "Voa igual passarinho");

INSERT INTO tb_personagens (Nome, NivelForca, NivelDefesa, NivelVelocidade, classe_id)
VALUES ("Hulk" , 1280, 1000, 650, 1);
INSERT INTO tb_personagens (Nome, NivelForca, NivelDefesa, NivelVelocidade, classe_id)
VALUES ("Mulher invisivel" , 980, 1200, 950, 2);
INSERT INTO tb_personagens (Nome, NivelForca, NivelDefesa, NivelVelocidade, classe_id)
VALUES ("Super Man" , 1580, 1300, 1950, 3);
INSERT INTO tb_personagens (Nome, NivelForca, NivelDefesa, NivelVelocidade, classe_id)
VALUES ("Thor" , 2100, 980, 700, 1);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE NivelForca > 2000;

SELECT * FROM tb_personagens WHERE NivelDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome like "%h%";

SELECT Nome, NivelForca ,NivelDefesa , NivelVelocidade, tb_classes.descricao
FROM tb_personagens
INNER JOIN tb_classes
ON classe_id = tb_classes.id;