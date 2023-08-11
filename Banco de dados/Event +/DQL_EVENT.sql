--DQL

--criar script para exibir:
--nome
--tipo do usuario
--data do evento
--local do evento (instituição)
--tipo do evento
--nome do evento
--descrição do evento
--situação do evento
--conmentario do evento



SELECT -- Selecionando as colunas com os dados a serem exibidos

Usuario.Nome,
TiposDeUsuario.IdTiposDeUsuario,
Evento.DataEvento,
Instituicao.NomeFantasia,
TiposDeEvento.TituloTipoEvento,
Evento.Nome,
Evento.Descricao,
PresencasEvento.Situacao,
ComentarioEvento.Descricao

FROM Evento
	INNER JOIN TiposDeEvento 
	ON Evento.IdTiposDeEvento = TiposDeEvento.IdTiposDeEvento
	INNER JOIN Instituicao
	ON Evento.IdInstituicao = Instituicao.IdInstituicao
	INNER JOIN PresencasEvento
	ON Evento.IdEvento = PresencasEvento.IdEvento
	INNER JOIN Usuario
	ON Usuario.IdTiposDeUsuario = PresencasEvento.IdUsuario
	INNER JOIN TiposDeUsuario
	ON TiposDeUsuario.IdTiposDeUsuario = Usuario.IdTiposDeUsuario
	LEFT JOIN ComentarioEvento
	ON ComentarioEvento.IdUsuario = Usuario.IdUsuario










SELECT * FROM TiposDeUsuario
SELECT * FROM TiposDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencasEvento
SELECT * FROM ComentarioEvento