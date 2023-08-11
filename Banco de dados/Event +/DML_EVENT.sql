--DML 

--Inserir dados nas tabelas
-- TABELAS TIPOS DE USUARIO
INSERT INTO TiposDeUsuario (TituloTipoUsuario) 
VALUES
	('Administrador'),
	('Comum');

INSERT INTO TiposDeEvento(TituloTipoEvento) 
VALUES
	('SQL Server'),
	('Java');


INSERT INTO Instituicao(CNPJ, Endereco, NomeFantasia) 
VALUES
	('56693256000147', 'Rua louveira 45896', 'DevSchool'),
	('42040570000155', 'Rua goias 25', 'Cursos LTDA'),
	('58950583000169', 'Rua do ouro 5698', 'SQL ltda')
	
INSERT INTO Usuario(IdTiposDeUsuario, Nome, Email, Senha) 
VALUES
	(1, 'Raphael Bento', 'raphael_bento@email.com', '12345'),
	(2, 'Joao Paulo', 'joao_paulo@email.com', '54321'),
	(1, 'Keller Reis', 'keller_reis@email.com', '98765')

INSERT INTO Evento(IdTiposDeEvento, IdInstituicao, Nome, Descricao, DataEvento, HorarioEvento) 
VALUES
	(1, 1, 'SQL na prática', 'Noções básicas de SQL', '2023-08-20', '08:00:00'),
	(2, 1, 'Programaçao', 'Curso completo de programação', '2023-09-20', '08:00:00'),
	(1, 3, 'Excel avançado', 'Excel completo', '2023-10-01', '20:00:00')

INSERT INTO PresencasEvento(IdUsuario, IdEvento, Situacao) 
VALUES
	(1, 1, 1),
	(3, 2, 0),
	(2, 3, 1)

INSERT INTO ComentarioEvento(IdUsuario, IdEvento, Descricao, Exibe) 
VALUES
	(1, 1, 'Curso excelente', 1),
	(3, 2, 'Merda de curso', 0),
	(2, 3, 'Otimo', 1)


SELECT * FROM TiposDeUsuario
SELECT * FROM TiposDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencasEvento
SELECT * FROM ComentarioEvento