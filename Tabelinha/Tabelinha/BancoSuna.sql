CREATE DATABASE vestibular;
USE vestibular;

/*drop database vestibular;*/

CREATE TABLE usuario(
	id_usuario INT primary key auto_increment,
	nome_usu VARCHAR(80) NOT NULL,
	email_usu VARCHAR(50) NOT NULL,
	data_cadastro DATE
);
ALTER TABLE usuario ADD data_nascimento DATE;
ALTER TABLE usuario ADD sexo VARCHAR(20);
ALTER TABLE usuario ADD ativo_usu INT;

UPDATE usuario SET sexo="f" WHERE id_usuario IN(1,2,3,4);
UPDATE usuario SET sexo="M" WHERE id_usuario IN(5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);
UPDATE usuario SET ativo_usu = '1' WHERE id_usuario = '1';
UPDATE usuario SET ativo_usu = '1' WHERE id_usuario = '8';
UPDATE usuario SET ativo_usu = '0' WHERE id_usuario = '15';

SELECT * FROM usuario;

/*select que retorna so as mulheres ou homens*/
SELECT * FROM usuario WHERE sexo="f";
SELECT * FROM usuario WHERE sexo="M";

INSERT INTO usuario (id_usuario,nome_usu,email_usu,data_cadastro)
	VALUES (1, 'Sunamita', 's.sunamita@gmail.com','2024-03-12');
INSERT INTO usuario (id_usuario,nome_usu,email_usu,data_cadastro)
	VALUES (2, 'Alicy Rodrigues da Costa','alicyrc@hotmail.com','2024-03-12');
INSERT INTO usuario (id_usuario,nome_usu,email_usu,data_cadastro)
	VALUES (3,'Ana Beatriz Tomaz de Sá','anabeatrizts.12@gmail.com','2024-03-12');
INSERT INTO usuario (id_usuario,nome_usu,email_usu,data_cadastro)
	VALUES (4,'Anny Stele Fernandes da Silva','annysfs@gmail.com','2024-03-12');
INSERT INTO usuario (id_usuario,nome_usu,email_usu,data_cadastro)
	VALUES (5,'Daniel Cristian Amorim Rocha','danielcristian0706@gmail.com','2024-03-12');
INSERT INTO usuario (id_usuario, nome_usu,email_usu,data_cadastro, data_nascimento)
	VALUES (6,'Lucayan Felipe Teixeira da Silva','lucayanfelips@hotmail.com','2024-03-12','2000-01-20'), 
    (7,'Elizeu Silva de Freitas','elizeubbb@gmail.com','2024-03-12','2004-06-02'), 
    (8,'Eduardo Pereira França Carneiro','dugabuga6@gmail.com','2024-03-12','2005-02-15'), 
    (9,'Patrick Macêdo Felicio','patrickmacedofeliceo@gmail.com','2024-03-12','2004-09-30'), 
    (10,'Renan da Rocha Santos','renanro919@gmail.com','2024-03-12','2004-04-28'), 
    (11,'Samuel Felipe Cardoso Leite','samuel.felipe04004@gmail.com','2024-03-12','2004-05-04'), 
    (12,'Théo Teodoro Novais','theotn12@gmail.com','2024-03-12','2005-01-20'),
    (13,'Victor Daniel de Oliveira Cruz','Victor.34241361@gmail.com','2024-03-12','2004-04-19'), 
    (14,'Victor.34241361@gmail.com','pinheiro.v@estudante.ifro.edu.br','2024-03-12','1994-10-01'), 
    (15,'Vitor Hugo Sodré Quinelato','vitorhugoquinelato@gmail.com','2024-03-12','2003-09-25'), 
    (16,'Vitor dos Reis Eugenio','vitorreiseugenio@gmail.com','2024-03-12','2003-04-18'), 
    (17,'Lucas Freire Sêmeler','lucasemeler@gmail.com','2024-03-12','2003-11-07'), 
    (18,'João Pedro Gundim Guimarães','joaopedrogundimg@gmail.com','2024-03-12','2005-11-07'), 
    (19,'Guilherme Maciel de Assunção','guilherme2008assuncao@gmail.com','2024-03-12','2004-10-02'), 
    (20,'Gabriel de Oliveira Silva','gabriel.oliveira.s177@gmail.com','2024-03-12','2004-09-26');
    
UPDATE usuario SET data_nascimento ='2004-03-30' WHERE id_usuario= 2;  /*recomenda usar a chave primaria*/
UPDATE usuario SET data_nascimento ='2003-12-12' WHERE id_usuario= 3;
UPDATE usuario SET data_nascimento ='2000-11-05' WHERE id_usuario= 1;
UPDATE usuario SET nome_usu='Sunamita Santos' WHERE id_usuario= 1;
UPDATE usuario SET data_nascimento ='2000-01-01' WHERE id_usuario= 4;
UPDATE usuario SET data_nascimento ='2004-05-10' WHERE id_usuario= 5;
UPDATE usuario SET data_nascimento ='2003-12-12' WHERE id_usuario= 3;

SELECT nome_usu FROM usuario WHERE nome_usu LIKE 'a%';   /*seleciona todos os nomes que começam com a*/
SELECT nome_usu FROM usuario WHERE nome_usu LIKE '%s';   /*seleciona todos os nomes que finalizam com a*/
SELECT nome_usu FROM usuario WHERE nome_usu LIKE '%z%';  

/*Selecionar as pessoas que tem idade maior que 20 anos*/
SELECT * FROM usuario WHERE (data_nascimento <'2004/03/19');

/*Pegar o ID maior que 5 menor que 15*/
SELECT * FROM usuario WHERE (id_usuario >= 5 AND id_usuario <= 15);

/*OUTRA FORMA de selecionar valores e funciona para data tbm*/
SELECT * FROM usuario WHERE id_usuario BETWEEN 5 AND 15;

/*AQUI VAI PEGAR TUDO E VAI EXCLUIR OS VALORES REPETIDOS, sem repetir dados*/
SELECT DISTINCT (nome_usu), email_usu FROM usuario;

/* ORDERNA TODOS OS VALORES de forma decrecente*/
SELECT *FROM usuario ORDER BY nome_usu DESC;

/*ORDENA TODOS os valores de forma crescente?*/

/* QUANDO VOCE Quer retornar todas as colunas que esta como NULL*/
SELECT * FROM usuario WHERE ativo_usu IS NULL;

/*pegar todos QUE O ativo_usu não é nulo */
SELECT * FROM usuario WHERE ativo_usu IS NOT NULL;

SELECT MIN(data_nascimento) FROM usuario;
SELECT MAX(data_nascimento) FROM usuario;

/*contar quantas pessoas tem do sexo feminino*/
SELECT COUNT(id_usuario) FROM usuario WHERE sexo = "f";

/*esta clausula vai fazer a soma - esta aqui so para demonstração*/
SELECT SUM(id_usuario) FROM usuario WHERE sexo = "M";
SELECT SUM(id_usuario) FROM usuario WHERE sexo = "f";

/*tirar media de todos os alunos MASCULINO*/
SELECT AVG(id_usuario) FROM usuario WHERE sexo = "M";

/*tirar media de todos os alunos*/
SELECT AVG(id_usuario) FROM usuario;

/*O NOT VAI NEGAR O QUE TEM NA FRENTE DELE*/
SELECT * FROM usuario WHERE NOT sexo = 'f';


/*comando de deletar todos os usuarios com o id_usuario maior de 2*/
/*DELETE FROM usuario WHERE id_usuario >2;*/

/*cOMANDO*/
/* quando for DML NÃO TEM TABLE*/  
/* quando for DDL sempre vai ter table*/


CREATE TABLE disciplina(
	id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
	nome_dis VARCHAR (80) NOT NULL
);

SELECT *FROM disciplina;
INSERT INTO disciplina (id_disciplina,nome_dis)
	VALUES (1,'Programação Orientada a Objetos'),(2,'Banco de Dados 2'),(3,'Topicos Especiais'),(4,'Redes 2'),(5,'Interação Humano e Computador');
    
/*Eu não consigo deletar aqui sem deletar tbm a de assunto*/
/*DELETE FROM disciplina WHERE id_disciplina =2;*/

CREATE TABLE assunto(
	id_assunto INT PRIMARY KEY AUTO_INCREMENT,
	texto_ass VARCHAR(80),
	id_disciplina_fk INT,
	FOREIGN KEY (id_disciplina_fk) REFERENCES disciplina (id_disciplina)
);

SELECT *FROM assunto;
INSERT INTO assunto (id_assunto,texto_ass, id_disciplina_fk)
	VALUES (1,'Classe',1), (2,'Atributos',1), (3,'Metodos',1), (4,'Construtures',1), (5,'Herança',1);
INSERT INTO assunto (id_assunto,texto_ass, id_disciplina_fk)
	VALUES (6,'Modelo Conceitual',2), (7,'Modelo Logico',2), (8,'Modelo Fisico',2), (9,'Create Table',2), (10,'Comando Insert',2);
INSERT INTO assunto (id_assunto,texto_ass, id_disciplina_fk)
	VALUES (11,'Tags em HTML',3), (12,'Vinculando o CSS no código HTML',3), (13,'Envie o link no GitHub',3), (14,'Atividade do Curriculo',3), (15,'Desenvolvimento de Tabelas',3),
    (16,'Introdução a rede de computadores',4), (17,'Equipamentos de Redes',4), (18,'Cabeamento',4), (19,'Modelo OSI',4), (20,'Modelo TCP/IP', 4), (21,'Protocolos',4), 
    (22,'Serviços de Redes (FTP, DHCP, SERVIDOR WEB, DNS',4), (23,'Introdução a IHC',5), (24,'Engenharia Cognitiva',5), (25,'Engenharia Semiótica',5), (26,'Necessidades do Usuarios',5);

/*selecionar de forma exclusiva
SELECT *FROM assunto WHERE id_assunto IN(1,22,15);
SELECT texto_ass FROM assunto WHERE texto_ass LIKE 'm%';
SELECT texto_ass FROM assunto WHERE texto_ass LIKE '%as';
SELECT texto_ass FROM assunto WHERE texto_ass LIKE '%a%';
SELECT texto_ass FROM assunto WHERE texto_ass LIKE 'engenha%';
SELECT texto_ass FROM assunto WHERE texto_ass LIKE '_n%';
SELECT texto_ass FROM assunto WHERE texto_ass LIKE '__d%';
SELECT texto_ass FROM assunto ORDER by texto_ass;
*/

CREATE TABLE banca(
	id_banca INT PRIMARY KEY AUTO_INCREMENT,
	nome_ban VARCHAR(80),
	sigla_ban VARCHAR(80)
);

CREATE TABLE questao(
	id_questao INT PRIMARY KEY AUTO_INCREMENT,
	enunciado VARCHAR(80),
	modalidae VARCHAR(80),
	nivel VARCHAR(80),
	id_assunto_fk INT,
	id_banca_fk INT,
	FOREIGN KEY (id_assunto_fk) REFERENCES assunto (id_assunto),
	FOREIGN KEY (id_banca_fk) REFERENCES banca (id_banca)
);

CREATE TABLE resposta(
	id_responde INT PRIMARY KEY AUTO_INCREMENT,
	data_res DATE,
	resultado VARCHAR(100),
	resultado_usu VARCHAR (100),
	id_usuario_fk INT,
	id_questao_fk INT,
	FOREIGN KEY (id_usuario_fk) REFERENCES usuario (id_usuario),
	FOREIGN KEY (id_questao_fk) REFERENCES questao (id_questao)
);

CREATE TABLE professor(
	id_professor INT PRIMARY KEY AUTO_INCREMENT,
	nome_prof VARCHAR(80),
	telefone_prof VARCHAR(80),
	email_prof VARCHAR (80)
);

SELECT *FROM professor;
INSERT INTO professor (id_professor,nome_prof,telefone_prof,email_prof)
	VALUES (1,'Elias de Abreu Domingos da Silva','','elias@gmail.com');
INSERT INTO professor (id_professor,nome_prof,telefone_prof,email_prof)
	VALUES (2,'Walter Ferreira Siqueira','','walter@gmail.com');
INSERT INTO professor (id_professor,nome_prof,telefone_prof,email_prof)
	VALUES (3,'Jefferson Antonio dos Santos','','jefferson@gmail.com');
INSERT INTO professor (id_professor,nome_prof,telefone_prof,email_prof)
	VALUES (4,'Hailton Cesar Alves dos Reis','','hailton@gmail.com');
INSERT INTO professor (id_professor,nome_prof,telefone_prof,email_prof)
	VALUES (5,'Clayton Ferraz Andrade','','clayton@gmail.com');

/*VALORES NUMERICOS NÃO VAO ENTRE ASPAS*/
ALTER TABLE PRODUTO DROP UNIDADE;    /*EXCLUI UMA COLUNA DA TABELA PRODUTO*/

UPDATE professor SET telefone_prof='69 2183-6901', email_prof='clayton.andrade@ifro.edu.br' WHERE id_professor=5;
UPDATE professor SET telefone_prof='69 9266-4909', email_prof='walter.ferreira@ifro.edu.br' WHERE id_professor=2;
UPDATE professor SET telefone_prof='69 9999-9999', email_prof='elias.silva@ifro.edu.br' WHERE id_professor=1;
UPDATE professor SET telefone_prof='69 9226-0959', email_prof='jefferson.santos@ifro.edu.br' WHERE id_professor=3;
UPDATE professor SET telefone_prof='69 9922-2725', email_prof='hailton.reis@ifro.edu.br' WHERE id_professor=4;

SELECT nome_prof, email_prof, id_professor FROM professor WHERE id_professor = '1';

CREATE TABLE comentario(
	id_comentario INT PRIMARY KEY AUTO_INCREMENT,
	texto_com VARCHAR(80),
	data_com DATE,
	id_professor_fk INT,
	id_questao_fk INT,
	FOREIGN KEY (id_professor_fk) REFERENCES professor (id_professor),
	FOREIGN KEY (id_questao_fk) REFERENCES questao (id_questao)
);

CREATE TABLE alternativas(
	id_alternativa INT PRIMARY KEY AUTO_INCREMENT,
	gabarito_alter CHAR (5),
	texto_alter VARCHAR (100),
	id_questao_fk INT,
	FOREIGN KEY (id_questao_fk) REFERENCES questao (id_questao)
);





