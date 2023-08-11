--DDL - DATA DEFINITION LANGUAGE

-- CRIAR BANCO DE DADOS

CREATE DATABASE [EVENT+_KELLER]

USE [EVENT+_KELLER]

--CRIAR TABELAS

CREATE TABLE TiposDeUsuario 
(
	IdTiposDeUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario VARCHAR(50) NOT NULL,
)

CREATE TABLE TiposDeEvento 
(
	IdTiposDeEvento INT PRIMARY KEY IDENTITY,
	TituloTipoEvento VARCHAR(50) NOT NULL UNIQUE,
)

CREATE TABLE Instituicao 
(
	IdInstituicao INT PRIMARY KEY IDENTITY,
	CNPJ VARCHAR(14) NOT NULL UNIQUE,
	Endereco VARCHAR(200) NOT NULL,
	NomeFantasia VARCHAR(200) NOT NULL
)

CREATE TABLE Usuario 
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTiposDeUsuario INT FOREIGN KEY REFERENCES TiposDeUsuario(IdTiposDeUsuario) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL UNIQUE,
	Senha VARCHAR(50) NOT NULL
)

CREATE TABLE Evento
(
	IdEvento INT PRIMARY KEY IDENTITY,
	IdTiposDeEvento INT FOREIGN KEY REFERENCES TiposDeEvento(IdTiposDeEvento) NOT NULL,
	IdInstituicao INT FOREIGN KEY REFERENCES Instituicao(IdInstituicao) NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	DataEvento DATE NOT NULL,
	HorarioEvento TIME NOT NULL
)

CREATE TABLE PresencasEvento
(
	IdPresencasEvento INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
	Situacao BIT DEFAULT(0)
	
)

CREATE TABLE ComentarioEvento
(
	IdComentarioEvento INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
	Descricao VARCHAR(200) NOT NULL,
	Exibe BIT DEFAULT(0)	
)





SELECT * FROM TiposDeUsuario
SELECT * FROM TiposDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencasEvento
SELECT * FROM ComentarioEvento