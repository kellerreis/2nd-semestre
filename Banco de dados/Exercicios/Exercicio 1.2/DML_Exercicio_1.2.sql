--dml exercicio 1_2 

use Exercicio_1_2

insert into Cliente values('Joao', '55555')

insert into Cliente values('Gustavo', '66666'), ('marcos','44444')

insert into Empresa values('Unidas')

insert into Empresa values('Localiza'),('Hertz')

insert into Modelo values('Celta')

insert into Modelo values('Gol'),('uno')

insert into Veiculo values(1,1,2, 'fmd6333')

insert into Veiculo values(2,3,3, 'gtu5896'),(3,3,3, 'jut7896')

insert into Aluguel  values(1,1, 000022, '2021-01-01', '2024-05-02')

insert into Aluguel values(2,3, 000033, '2022-06-20', '2023-01-25'),(3,3, 0000852, '2023-01-30', '2023-06-12')






select * from Marca
Select * from Empresa
Select * from Modelo
Select * from Cliente
Select * from Veiculo
Select * from Aluguel