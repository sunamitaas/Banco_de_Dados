create database sunaone;

USE sunaone;

CREATE TABLE Usuario(
	id_alu INT primary key auto_increment,
    nome_alu VARCHAR(80) NOT NULL,
    email_alu VARCHAR(50) NOT NULL,
    telefone_alu VARCHAR(80),
    dataNascimento_alu DATE NOT NULL, 
    ativo_alu BOOLEAN DEFAULT TRUE
);

-- ALTERAR A TABELA
ALTER TABLE usuario ADD cpf VARCHAR(15) NOT NULL UNIQUE;

-- Excluir coluna da tabela:alter
-- DROP COLUMNS 
-- ALTER TABLE Aluno ADD cpf_alu VARCHAR(11) NOT NULL UNIQUE FIRST;
ALTER TABLE usuario ADD cpf_alu VARCHAR(11) NOT NULL UNIQUE FIRST;

-- Alterar o tipo de dado ALTER TABLE Usuario CHANGE nomedacolunaantigo nomedacolunanovo tipodedadonovo;
-- o CHANGE é usado também para alterar o nome da coluna e o tipo de dado.
ALTER TABLE usuario CHANGE dataNascimento_alu data_NascimentoUsu VARCHAR(20);

-- Para renomear o nome da tabela
RENAME TABLE usuario TO cliente;

-- Para adicionar chave estrangeira

CREATE TABLE departamento(
	id_departamento INT PRIMARY KEY AUTO_INCREMENT,
	nome_dep VARCHAR(50)
);

CREATE TABLE funcionario(
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_fun VARCHAR(50),
-- criar uma coluna para colocar a foreign key.
id_departamento_fk INT,
FOREIGN KEY (id_departamento_fk) REFERENCES departamento (id_departamento)
);


-- Mostrar a tabela
SHOW COLUMNS FROM cliente;
