-- Exerc�cio 1:

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


-- Exerc�cio 2:

INSERT INTO CLIENTES(NOME, TELEFONE, ENDERECO) VALUES('Vinicius Silva', 987654, 'Rua Girassol'),
														 ('Maria Antonia', 123456, 'Rua Rosas'),
														 ('Marcus Vinicius', 654123, 'Rua Itaja�')

-- Exerc�cio 3:

SELECT ID, NOME FROM Clientes

-- Exerc�cio 4:

SELECT * FROM Clientes
WHERE ID = 1

-- Exerc�cio 5:

SELECT * FROM Clientes
WHERE NOME LIKE '%MAR%'

-- Exerc�cio 6:

UPDATE Clientes
SET ENDERECO = 'Rua do Lim�o'
WHERE ID = 3

-- Exerc�cios 7:

DELETE Clientes
WHERE ID = 2

-- Exerc�cio 8:

