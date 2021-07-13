CREATE DATABASE db_commerce;

USE db_commerce;
CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    Codigo INT(2) NOT NULL,
    preço DOUBLE,
    descricao VARCHAR(50),
    marca VARCHAR(50),
    PRIMARY KEY(id)
);

 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("detergente", "5", 20, "produto de limpeza", "ype");
 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("agua", "6", 25, "alimenticio", "cristal");
 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("feijao", "8", 30, "alimenticio", "grão nobre");
 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("leite", "3", 26, "alimenticio", "paulista");
 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("sabonete", "9", 10, "produto de higiene", "natura");
 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("amaciante", "2", 24, "produto de limpeza", "omo");
 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("oleo", "4", 18, "alimenticio", "soya");
 INSERT INTO tb_produto(nome, Codigo, preço, descricao, marca) VALUES("arroz", "5", 35, "alimenticio", "grão nobre");


SELECT * FROM tb_produto WHERE preço > 20;
	 SELECT * FROM tb_produto WHERE preço < 20;
     
     UPDATE tb_produto SET nome = "detergente em Po" WHERE id = 1;