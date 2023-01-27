-- Exercicio 4: Procedure

-- Criando a Tabela

Create Table Cursos(
	ID_Curso Int Primary Key Auto_Increment,
	Nome Varchar(30) Not Null,
	Horas Int(3) Not Null,
	Valor Float(10,2) Not Null
);


-- Criando Procedure para Inserir os Dados

DELIMITER $

Create Procedure CadCursos(P_Nome Varchar(30), P_Horas Int(30), P_Valor Float(10,2))
Begin
	Insert Into cursos Values(Null, P_Nome, P_Horas, P_Valor);
End
$


-- Inserindo Dados

Call CadCursos('BI SQL Server', 35, 3000.00);
Call CadCursos('Power BI',20,1000.00);
Call CadCursos('TABLEAU',30,1200.00);
Call CadCursos('JavaScript',35,2200.00);
Call CadCursos('IA',40,6200.00);


-- 1) Crie uma Procedure para Consultar Cursos

Delimiter $

Create Procedure ConsultCursos()
Begin 
	Select * From cursos;
End
$

Delimiter $

Create Procedure ConsultCursos(P_Nome Varchar(30))
Begin 
	Select * From cursos
    Where Nome = P_Nome;
End
$