-- Exercício 1:

CREATE DATABASE M1S07_Exe
GO

USE M1S07_Exe

CREATE TABLE Clientes
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	NOME VARCHAR(25),
	TELEFONE VARCHAR(11),
	ENDERECO VARCHAR(30)
);


-- Exercício 2:

INSERT INTO CLIENTES(NOME, TELEFONE, ENDERECO) VALUES('Vinicius Silva', 987654, 'Rua Girassol'),
														 ('Maria Antonia', 123456, 'Rua Rosas'),
														 ('Marcus Vinicius', 654123, 'Rua Itajaí')

-- Exercício 3:

SELECT ID, NOME FROM Clientes

-- Exercício 4:

SELECT * FROM Clientes
WHERE ID = 1

-- Exercício 5:

SELECT * FROM Clientes
WHERE NOME LIKE '%MAR%'

-- Exercício 6:

UPDATE Clientes
SET ENDERECO = 'Rua do Limão'
WHERE ID = 3

-- Exercícios 7:

DELETE Clientes
WHERE ID = 2

-- Exercício 8:

