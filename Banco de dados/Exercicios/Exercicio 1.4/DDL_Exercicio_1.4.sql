-- Exercicio 1.4 Optus

--DDL - Criando o banco de dados

CREATE DATABASE Exercicio_1_4

--usar o banco criado

use Exercicio_1_4

--criar tabelas

CREATE TABLE Artistas
(
	IdArtistas INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
)

CREATE TABLE Usuarios
(
	IdUsuarios INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(30) NOT NULL UNIQUE,
	Senha VARCHAR(8) NOT NULL,
	Permissao VARCHAR(12) NOT NULL
)

CREATE TABLE Estilos
(
	IdEstilos INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
)

CREATE TABLE Albuns
(
	IdAlbuns INT PRIMARY KEY IDENTITY,
	IdArtistas INT FOREIGN KEY REFERENCES Artistas(IdArtistas) NOT NULL,
	Titulo VARCHAR(20) NOT NULL,
	DataLancamento DATE NOT NULL,
	Localizacao GEOMETRY,
	QtdeMinutos 
)








select * from Artistas
select * from Usuarios
select * from Estilos