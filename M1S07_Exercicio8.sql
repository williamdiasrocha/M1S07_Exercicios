--Exercício 8:

CREATE DATABASE EMPRESA
GO

USE EMPRESA

--NORMALIZAÇÃO - 1ª FASE


CREATE TABLE FUNCIONARIOS
(
	ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(30) NOT NULL,
	CARGO VARCHAR(20) NOT NULL
);
CREATE TABLE TELEFONES
(
	IDFUNCIONARIO INT NOT NULL,
	CONSTRAINT fk_Funcionario_Telefone FOREIGN KEY(IdFuncionario) REFERENCES FUNCIONARIOS(ID),
	TELEFONE1 VARCHAR(11),
	TELEFONE2 VARCHAR(11)
);

-- NORMALIZAÇÃO - 2ª FASE:

CREATE TABLE FUNCIONARIOS
(
	ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(30) NOT NULL,
	CARGO VARCHAR(20) NOT NULL
);
CREATE TABLE TELEFONES
(
	IDFUNCIONARIO INT NOT NULL,
	CONSTRAINT fk_Funcionario_Telefone FOREIGN KEY(IdFuncionario) REFERENCES FUNCIONARIOS(ID),
	TELEFONE1 VARCHAR(11),
	TELEFONE2 VARCHAR(11)
);

-- NORMALIZAÇÃO - 3ª FASE:

CREATE TABLE FUNCIONARIOS
(
	ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONES
(
	IDFUNCIONARIO INT NOT NULL,
	CONSTRAINT fk_Funcionario_Telefone FOREIGN KEY(IdFuncionario) REFERENCES FUNCIONARIOS(ID),
	TELEFONE1 VARCHAR(11),
	TELEFONE2 VARCHAR(11)
);

CREATE TABLE CARGOS
(
	IDFUNCIONARIO INT NOT NULL REFERENCES FUNCIONARIOS(ID),
	CARGO VARCHAR(10)
);

INSERT INTO CARGOS(CARGO) VALUES('Atendente'), ('Gerente')

INSERT INTO FUNCIONARIOS(NOME) VALUES('Marcos'),
									 ('Maria'),
									 ('Julia')

INSERT INTO TELEFONES(IDFUNCIONARIO, TELEFONE1, TELEFONE2) VALUES(1, '3654589', '36545987')
																 (2, '3654698', '36524569')
																 (3, '3654962', '12365458')

INSERT INTO CARGOS(IDFUNCIONARIO, CARGO) VALUES(1, 'Atendente'),
											   (2, 'Gerente'),
											   (3, 'Atendente')