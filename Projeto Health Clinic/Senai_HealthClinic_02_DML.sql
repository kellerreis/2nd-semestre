--DML Inserir dados nas tabelas

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES 
	('ADM'),
	('Médico')
	('Suporte'),
	('Paciente');


INSERT INTO Especialidade(TituloEspecialidade)
VALUES 
	('Neuro'),
	('Psiquiatra'),
	('Urologista'),
	('Dermatologista'),
	('Proctologista');


INSERT INTO Clinica(NomeFantasia, RazaoSocial, CNPJ, HorarioFuncionamento, Endereco)
VALUES 
	('Saudavel', 'Raquel Pereira ME', '12563', '08:00 às 17:00', 'Rua Goias, 125'),
	('Doutores', 'João Reis ME', '12589', '07:00 às 17:00', 'Av Estados, 10256'),
	('Home care', 'Luis Silva ME', '5899663', '08:00 às 17:00', 'Av João Goulart, 89'),
	('Porto Geral Saude', 'Humberto Louveira ME', '2589996', '09:00 às 22:00', 'Rua luiza deleite, 98')
	

INSERT INTO Usuario(IdTipoUsuario, Nome, Email, Senha)
VALUES 
	(5, 'Keller', 'keller@email', '222'),
	(2, 'Jose', 'Jose@email', '589'),
	(4, 'Maria', 'Maria@gmail', '789'),
	(1, 'Luiza', 'Luiza@email', '321'),
	(3, 'Jorge', 'Suporte@email', '***')

	
INSERT INTO Paciente(IdUsuario, CPF)
VALUES 
	(1, '1122233'),
	(3, '222233'),
	(3, '33333'),
	(1, '6665554')


INSERT INTO Medico(IdUsuario, IdEspecialidade, CRM)
VALUES 
	(6, 4, '9090'),
	(2, 2, '2589'),
	(2, 3, '25663'),
	(2, 4, '14789')

INSERT INTO Consulta(IdClinica, IdPaciente, IdMedico, Data_, Hora, Prontuario)
VALUES 
	(1, 3,5, '2023-08-17', '15:45:00', 'Legal')
	(2, 2,2, '2023-09-30', '17:00:00', 'Caso Cronico de dor de cabeça'),
	(1, 3,3, '2023-08-25', '13:00:00', 'Fortes dores pelvicas'),
	(3, 4, 4,'2023-12-15', '09:30:00', 'Primeiro atendimento')






SELECT * FROM TipoUsuario
SELECT * FROM Especialidade
SELECT * FROM Clinica
SELECT * FROM Usuario
SELECT * FROM Paciente
SELECT * FROM Consulta
SELECT * FROM Medico