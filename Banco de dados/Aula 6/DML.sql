--DML - DATA MANIPULATION LANGUAGE

INSERT INTO Pessoa
	(Nome, CNH)
VALUES
('ricardo','999990999'),
('Mauricio','999977999'),
('Zezao','7787878'),
('beth','66643434343');

INSERT INTO Email
VALUES(3,'almir@gmail.com')

INSERT INTO Telefone
VALUES(3,'11458752369')
UPDATE Funcionarios
SET Nome = 'Miguel' WHERE IdFuncionario = 17

DELETE FROM Funcionarios WHERE IdFuncionario = 17

INSERT INTO Empresas(IdFuncionario,Nome)
 VALUES (18,'GOOGLE')