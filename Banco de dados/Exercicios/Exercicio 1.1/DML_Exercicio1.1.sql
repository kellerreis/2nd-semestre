--DML - INSERIR DADOS NAS TABELAS

-- USAR BANCO JA CRIADO

USE Exercicio_1_1

-- INSERIR DADOS NA TABELA

INSERT INTO Pessoa(Nome, Cnh)
VALUES('KELLER','8817149863'),('JOAO','7857149863')

-- OUTRA OP�AO: INSERT INTO Pessoa VALUES('KELLER','8817149863')

INSERT INTO Email(IdPessoa,Endereco)
VALUES(1,'keller@email.com'),(2,'joao@email.com')

INSERT INTO Telefone(IdPessoa,Numero)
VALUES(1,'258963'),(2,'5478963')





SELECT * FROM Pessoa
SELECT * FROM Email
SELECT * FROM Telefone