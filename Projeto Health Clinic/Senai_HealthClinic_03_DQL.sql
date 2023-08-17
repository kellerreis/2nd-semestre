--DQL Consulta nas tabelas

/*Criar script que exiba os seguintes dados:

- Id Consulta
- Data da Consulta
- Horario da Consulta
- Nome da Clinica
- Nome do Paciente
- Nome do Medico
- Especialidade do Medico
- CRM
- Prontuário ou Descricao
- FeedBack(Comentario da consulta)

Criar função para retornar os médicos de uma determinada especialidade

*Criar procedure para retornar a idade de um determinado usuário específico*/

use HEALTH_CLINIC_KELLER

SELECT 

	Consulta.IdConsulta AS [Numero],
	Consulta.Data_ AS [Data da Consulta],
	Consulta.Hora AS [Horario da consulta],
	Clinica.NomeFantasia AS [Nome da Clinica],
	Usuario_Paciente.Nome As [Nome do paciente],
	Usuario_Medico.Nome AS [Nome do medico],
	Especialidade.TituloEspecialidade AS [Especialidade do medico],
	--Medico.CRM AS [CRM do medico],
	Consulta.Prontuario AS [Prontuario]

FROM Consulta

	INNER JOIN Clinica 
	ON Consulta.IdClinica = Clinica.IdClinica

	INNER JOIN Paciente
	ON Consulta.IdPaciente = Paciente.IdPaciente

	INNER JOIN Usuario AS Usuario_Paciente
	ON Usuario_Paciente.IdUsuario = Paciente.IdUsuario

	INNER JOIN Medico AS Medico_IdMedico
	ON Consulta.IdMedico = Medico_IdMedico.IdMedico

	INNER JOIN Usuario AS Usuario_Medico
	ON Usuario_Medico.IdUsuario = Medico_IdMedico.IdUsuario

	INNER JOIN Especialidade
	ON Medico_IdMedico.IdEspecialidade = Especialidade.IdEspecialidade

	--INNER JOIN Medico
	--ON Consulta.IdMedico = Medico.CRM




--Criar função para retornar os médicos de uma determinada especialidade

	SELECT 
	Consulta.Prontuario
	Medico



SELECT * FROM TipoUsuario
SELECT * FROM Especialidade
SELECT * FROM Clinica
SELECT * FROM Usuario
SELECT * FROM Paciente
SELECT * FROM Consulta
SELECT * FROM Medico