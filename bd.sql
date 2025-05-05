CREATE DATABASE etecmcm2;

USE etecmcm2;



CREATE TABLE produtos (
    ID_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255),
    qtde INT,
    preco decimal(10,2),
    marca varchar(255),
    fk_categorias_id_categoria INT
);

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_cat varchar(255)
);
 
ALTER TABLE produtos ADD CONSTRAINT FK_produtos_2
    FOREIGN KEY (fk_categorias_id_categoria)
    REFERENCES categorias (id_categoria)
    ON DELETE RESTRICT;