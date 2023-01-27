-- Exercicio 6: Autorelacionamento

-- Criaçao da Tabela

Create Table Cursos(
	PK_Cursos Int Primary Key Auto_Increment,
	Nome Varchar(30),
	Horas Int,
	Valor Float(10,2),
	FK_PreReq Int
);


-- Adicionando a Constraint

Alter Table Cursos Add Constraint FK_PreReq_Cursos Foreign Key(FK_PreReq) 
References Cursos(PK_Cursos);


-- Adicionando Dados ao Banco

INSERT INTO CURSOS VALUES(NULL,'BD RELACIONAL',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'BUSINESS INTELLIGENCE',40,800.00,1);
INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS',20,600.00,2);
INSERT INTO CURSOS VALUES(NULL,'LOGICA PROGRAM',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'RUBY',30,500.00,4);


-- Faça uma Quary que traga o Nome do Curso, o Valor, a Quantidade de Horas do Curso e o Nome do Pré-Requisito do Curso.

Select C.Nome, C.Valor, C.Horas, Ifnull(P.Nome, 'Sem Requisitos') As Requisitos
From Cursos C
Left Join Cursos P On P.PK_Cursos = C.FK_PreReq;

