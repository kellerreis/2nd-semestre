--DDL - Data definition language

--Cria banco de dados
CREATE DATABASE BancoTarde;
-- USA O BANCO DE DADOS SELECIONADO
USE BancoTarde;
-----------------------------------------------------------------------------------
--Cria a tabela
--Comando identity gera uma sequencia 
CREATE TABLE Funcionarios
(	IdFuncionario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(10)
	   );

CREATE TABLE Empresas
(
	IdEmpresas INT PRIMARY KEY IDENTITY,
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios(IdFuncionario),
	Nome VARCHAR(20)
	)
	--------------------------------------------------------------------------

	--ALTER TABLE

ALTER TABLE Funcionarios
ADD Cpf VARCHAR(11)

ALTER TABLE Funcionarios
DROP COLUMN Cpf

DROP TABLE Empresas;

DROP DATABASE BancoTarde;
