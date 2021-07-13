CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    CPF VARCHAR(2) NOT NULL,
    salario DOUBLE,
    cargo VARCHAR(20),
    idade INT(1),
    PRIMARY KEY(id)
);
 INSERT INTO tb_funcionarios(nome, CPF, salario, cargo, idade) VALUES("Mara", "4", 7000, "dev", 23);
  INSERT INTO tb_funcionarios(nome, CPF, salario, cargo, idade) VALUES("NARUTO", "3", 2000, "dev", 20);
   INSERT INTO tb_funcionarios(nome, CPF, salario, cargo, idade) VALUES("ZORO", "2", 3000, "analista", 26);
    INSERT INTO tb_funcionarios(nome, CPF, salario, cargo, idade) VALUES("JOSÉ", "6", 1000, "estagiario", 19);
     INSERT INTO tb_funcionarios(nome, CPF, salario, cargo, idade) VALUES("Maria", "7", 1500, "secretaria", 25);
      INSERT INTO tb_funcionarios(nome, CPF, salario, cargo, idade) VALUES("Ana", "8", 7000, "BI", 22);
     
     SELECT * FROM tb_funcionarios WHERE salario > 2000;
	 SELECT * FROM tb_funcionarios WHERE salario < 2000;
     
     UPDATE tb_funcionarios SET nome = "Mara Jozicleia" WHERE id = 1;