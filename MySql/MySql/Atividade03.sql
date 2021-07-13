CREATE DATABASE db_Escola;

USE db_Escola;
CREATE TABLE tb_aluno(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    RM INT(2) NOT NULL,
    idade DOUBLE,
    CPF VARCHAR(50),
	notas Double,
    PRIMARY KEY(id)
);

 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Bryan", "02", 18, "234", 8);
 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Felipe", "03", 19, "243", 8);
 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Thais", "04", 20, "250", 7);
 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Ana", "05", 21, "251", 7);
 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Mara", "06", 22, "252", 9);
 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Lidia", "07", 23, "253", 5);
 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Maisa", "08", 24, "254", 6);
 INSERT INTO tb_aluno(nome, RM, idade, CPF, notas) VALUES("Julian", "09", 22, "255", 7);
 

SELECT * FROM tb_aluno WHERE preço > 7;
	 SELECT * FROM tb_aluno WHERE preço < 7;
     
     UPDATE tb_aluno SET nome = "Lidia Gomes" WHERE id = 6;