-- Exercicio 1.2 Locadora de veiculos

--DDL - Criando o banco de dados

CREATE DATABASE Exercicio_1_2

--usar o banco criado

use Exercicio_1_2

--criar tabelas

CREATE TABLE Cliente
(
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(30) NOT NULL UNIQUE,
	CPF VARCHAR(11)	NOT NULL UNIQUE
)

CREATE TABLE Empresa
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(30) NOT NULL
	)

CREATE TABLE Modelo
(
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome_Modelo VARCHAR(30) NOT NULL,
)

CREATE TABLE Marca
(
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome_Marca VARCHAR(30) NOT NULL
)

drop table Marca

CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa) NOT NULL,
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo) NOT NULL,
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca) NOT NULL,
	Placa VARCHAR(7) NOT NULL UNIQUE
	)

CREATE TABLE Aluguel
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo) NOT NULL,
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente) NOT NULL,
	Protocolo VARCHAR(7) NOT NULL UNIQUE,
	Inicio_contrato DATE NOT NULL,
	Fim_contrato DATE NOT NULL
	)




	select * from Aluguel