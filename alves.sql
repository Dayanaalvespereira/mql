CREATE DATABASE Faculdade;
USE faculdade;

CREATE TABLE Alunos (
Matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
Sexo CHAR(1) NOT NULL,
Curso VARCHAR(50) NOT NULL,
Turno VARCHAR(10) NOT NULL
);

CREATE TABLE Professores (
Codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
Curso VARCHAR(50) NOT NULL,
Escolaridade VARCHAR(50) NOT NULL,
Regime_Trabalho VARCHAR(10) NOT NULL
);

INSERT INTO Alunos(Matricula, Nome, Sexo , Curso, Turno) VALUES
(1, 'Talita', 'F', 'Sistemas de Informação', 'Noturno'),
(2, 'Tânia', 'F', 'Sistemas de Informação', 'Noturno'),
(3, 'Paulo', 'M', 'Administração', 'Diurno'),
(4, 'Pedro', 'M', 'Contábeis', 'Diurno');

SELECT * FROM Alunos;

INSERT INTO Professores (Codigo, Nome, Curso, Escolaridade, Regime_Trabalho)
VALUES
(1, 'Leonardo', 'Sistemas de Informação', 'Mestre', 'DE'),
(2, 'Mônica', 'Administração', 'Especialista', 'Parcial'),
(3, 'Edivaldo', 'Sistemas de Informação', 'Especialista', 'Parcial'),
(4, 'Lucius', 'Contábeis', 'Doutor', 'DE');

SELECT * FROM Professores;

SELECT Nome FROM Alunos WHERE Turno = 'Noturno';

INSERT INTO Alunos (Matricula, Nome, Sexo, Curso, Turno) VALUES (5, 'Carlos', 'M', 'Sistemas de Informação', 'Noturno');

SELECT Nome FROM Alunos WHERE Sexo = 'M' AND Turno = 'Noturno';



create table nota_programacao(
	idnota int not null primary key auto_increment,
    nome varchar(255),
    bimestre1 int,
    bimestre2 int,
    bimestre3 int,
    bimestre4 int
);




insert into nota_programacao values
(null,"JOAO MATEUS CHAVES DA LUZ", 7,8,8,6),
(null,"KALLIL FACURY DE SOUSA ROSA RODRIGUES", 7,5,3,9),
(null,"LETICIA DE CARVALHO SOUSA", 9,8,7,9),
(null,"LUIZ FELIPE DOS SANTOS ANJOS", 7,2,4,10),
(null,"LUKAS DE SOUSA DOURADO", 10,9,9,5),
(null,"MARIA EDUARDA TORRES SILVA", 9,5,4,8),
(null,"MARIA EMANUELLA SILVA DE SOUSA", 2,9,8,7),
(null,"MIKAELLY BARBOSA CARVALHO LIMA", 8,2,9,10);



SELECT MAX(bimestre1)
FROM nota_programacao;

SELECT MIN(bimestre1)
FROM nota_programacao;

SELECT AVG(bimestre1)
FROM nota_programacao;

SELECT TRUNCATE(AVG(bimestre1),2)
FROM nota_programacao;

SELECT SUM(bimestre1)
FROM nota_programacao;

create table notas(
	idnota int not null primary key auto_increment,
    nome varchar(255),
    bimestre1 int,
    bimestre2 int,
    bimestre3 int,
    bimestre4 int,
    disciplina varchar(255)
);



insert into notas values
(null,"JOAO MATEUS CHAVES DA LUZ", 7,8,8,6,"Banco de Dados"),
(null,"KALLIL FACURY DE SOUSA ROSA RODRIGUES", 7,5,3,9,"Banco de Dados"),
(null,"LETICIA DE CARVALHO SOUSA", 9,8,7,9,"Banco de Dados"),
(null,"LUIZ FELIPE DOS SANTOS ANJOS", 7,2,4,10,"Banco de Dados"),
(null,"LUKAS DE SOUSA DOURADO", 10,9,9,5,"Banco de Dados"),
(null,"MARIA EDUARDA TORRES SILVA", 9,5,4,8,"Banco de Dados"),
(null,"MARIA EMANUELLA SILVA DE SOUSA", 2,9,8,7,"Banco de Dados"),
(null,"MIKAELLY BARBOSA CARVALHO LIMA", 8,2,9,10,"Banco de Dados"),
(null,"JOAO MATEUS CHAVES DA LUZ", 10,10,10,6,"Análise e Programação I"),
(null,"KALLIL FACURY DE SOUSA ROSA RODRIGUES", 9,9,8,9,"Análise e Programação I"),
(null,"LETICIA DE CARVALHO SOUSA", 9,8,8,9,"Análise e Programação I"),
(null,"LUIZ FELIPE DOS SANTOS ANJOS", 7,2,4,10,"Análise e Programação I"),
(null,"LUKAS DE SOUSA DOURADO", 10,9,9,5,"Análise e Programação I"),
(null,"MARIA EDUARDA TORRES SILVA", 9,5,4,8,"Análise e Programação I"),
(null,"MARIA EMANUELLA SILVA DE SOUSA", 10,9,8,7,"Análise e Programação I"),
(null,"MIKAELLY BARBOSA CARVALHO LIMA", 10,2,9,10,"Análise e Programação I");


SELECT nome,bimestre1 from notas
where bimestre1 = (select min(bimestre1) from notas);

SELECT nome,bimestre2 from notas
where bimestre2 = (select max(bimestre2) from notas);

select nome,bimestre1
from notas
where bimestre1 >(select avg(bimestre1) from notas);

select disciplina, avg(bimestre1)
from notas
group by disciplina
having avg(bimestre1)>9;

select nome,avg(bimestre2)
from notas
group by nome
having avg(bimestre2)<6;
















