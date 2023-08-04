--DQL - exercicio 1_2

USE Exercicio_1_2

SELECT 
	
	Aluguel.Protocolo as Contrato, 
	Cliente.Nome as Nome,
	Modelo.IdModelo
	
	

FROM Aluguel 

INNER JOIN  Cliente ON Aluguel.IdCliente = Cliente.IdCliente,
INNER JOIN  Modelo ON Aluguel.IdVeiculo = Veiculo.IdModelo,
INNER JOIN  Veiculo ON Aluguel.IdCliente = Cliente.IdCliente,








select * from Marca
Select * from Empresa
Select * from Modelo
Select * from Cliente
Select * from Veiculo
Select * from Aluguel
Select * from Cliente