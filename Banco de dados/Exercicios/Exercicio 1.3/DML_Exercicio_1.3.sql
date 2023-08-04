--DML Exercicio 1_3 Clinica vet

use Exercicio_1_3

insert into Clinica 
Values ('Rua 2'),('Rua porto'),('Rua azul')

insert into Dono 
Values ('Joao'),('Lito'),('Marina')

insert into TipoPet
Values ('Cavalo'),('Pato'),('Gato')

insert into Raca
Values ('Manga larga'),('Penudo'),('SRD')

insert into Veterinario
Values (5,'Carla','458796'), (6,'Bia','5963'),(5,'Joana','85636')

insert into Pet
Values (1,1,3,'cisu','2002-06-02'), (2,2,2,'granjo','2020-05-10'), (3,3,2,'julinho','2021-12-30')

insert into Atendimentos
Values (4,4,'Nada relatado', '2023-06-02'), (5,1,'fratura na pata esquerda', '2023-10-15'), (6,3,'cirurgia', '2023-11-01')







Select * from Clinica
Select * from Dono
Select * from TipoPet
Select * from Raca
Select * from Veterinario
Select * from Pet
Select * from Atendimentos