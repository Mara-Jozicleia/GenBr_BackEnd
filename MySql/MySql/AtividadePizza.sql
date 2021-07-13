CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(25) NOT NULL,
tamanho VARCHAR(100) NOT NULL,
entrega BOOLEAN DEFAULT TRUE,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(25) NOT NULL,
sabor VARCHAR(100) NOT NULL,
descricao VARCHAR(45),
tipo_de_massa VARCHAR(45) NOT NULL,
preco DOUBLE,
PRIMARY KEY(id),
fk_categoria BIGINT NOT NULL,
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id)

);
INSERT INTO tb_categoria (tipo, tamanho) VALUES("salgada", "medio"),("salgada", "pequena"),
("doce", "grande"), ("doce", "brontinho"), ("doce", "meio a meio");

INSERT INTO tb_categoria (tipo, tamanho) VALUES("salgada", "grande");


 INSERT INTO tb_pizza(nome, sabor, descricao, tipo_de_massa, preco, fk_categoria) VALUES("Marguerita", "tradicional", "molho de tomate, queijo, tomate, manjericao", "fina", 35, 6 );
  INSERT INTO tb_pizza(nome, sabor, descricao, tipo_de_massa, preco, fk_categoria) VALUES("Mussarela", "tradicional", "molho de tomate, queijo", "grossa", 30, 6);
   INSERT INTO tb_pizza(nome, sabor, descricao, tipo_de_massa, preco,fk_categoria) VALUES("Calabresa", "tradicional", "molho de tomate, queijo, tomate, manjericao", "fina", 35, 6);
	INSERT INTO tb_pizza(nome, sabor, descricao, tipo_de_massa, preco, fk_categoria) VALUES("Frango com catupiry", "medio", "molho de tomate,frango e catupity", "tradicional", 38, 1);
	 INSERT INTO tb_pizza(nome, sabor, descricao, tipo_de_massa, preco,fk_categoria) VALUES("Abrobrinha", "medio", "molho de tomate, queijo e abrobrinha", "tradicional", 30, 1);
	  INSERT INTO tb_pizza(nome, sabor, descricao, tipo_de_massa, preco, fk_categoria) VALUES("Frango caipira", "broto", "molho de tomate,frango e milho", "tradicional", 32, 2);
	   INSERT INTO tb_pizza(nome, sabor, descricao, tipo_de_massa, preco, fk_categoria) VALUES("Portuguesa", "tradicional", "molho de tomate,presuto,ovo,milho,ervilha", "tradicional", 48, 6);


SELECT * FROM tb_pizza WHERE PRECO > 45;
SELECT preco FROM tb_pizza WHERE preco > 29 AND preco < 60;
SELECT nome FROM tb_pizza WHERE nome LIKE "c%";

SELECT * FROM tb_categoria
INNER JOIN tb_pizza ON tb_pizza.fk_categoria = tb_categoria.id;

SELECT * FROM tb_pizza
WHERE id = 6;

SELECT nome FROM tb_pizza
INNER JOIN tb_categoria WHERE tb_pizza.fk_categoria = 6;
