CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	materia VARCHAR(255) NOT NULL,
    nota INT,
    aprovado VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

SELECT *FROM tb_produtos;

INSERT INTO tb_produtos( nome, materia , nota , aprovado)
VALUES ("Gustavo" , "matematica", 8.5 , "Sim"),
("João" , "portugues", 5.5 , "Sim"),
("Yuri" , "historia", 3.5 , "Não");

ALTER TABLE tb_produtos MODIFY nota DECIMAL(2,1);

UPDATE tb_produtos SET nota = 3.5 WHERE Id = 3;

SELECT * FROM tb_produtos WHERE nota < 7.0;
SELECT * FROM tb_produtos WHERE nota > 7.0;