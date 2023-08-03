--DQL atividade 1_1
--Listar as pessoas em ordem alfabetica reversa, nmostrando seus telefones, seus emails e seus cnhs
-- script sem usar join


SELECT
	P.Nome as Personas, 
	Tel.Numero AS fone, 
	MA.Endereco AS eletronico,
	P.Cnh as carteira
	   	 
FROM 
	Pessoa AS P,
	Email AS MA, 
	Telefone AS Tel

WHERE 
	P.IdPessoa = MA.IdPessoa 
	AND P.IdPessoa = Tel.IdPessoa


ORDER BY Nome desc



