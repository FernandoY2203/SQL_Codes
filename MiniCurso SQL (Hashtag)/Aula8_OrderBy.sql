-- Order By

/*Exemplo 1: Faça uma consulta na tabela de clientes e faça uma ordenaçao de acordo com o 
nome do cliente, em ordem alfabetica*/

Select * 
From clientes
Order By Nome, Sobrenome;
-- Limit 50; limit é so pra ficar mais visivel


/*Exemplo 2: Faça uma consulta na tabela de clientes e faça uma ordenaçao de 
acordo com a renda anual, da maior para a menor*/

Select * 
From clientes
Order By Renda_anual Desc;
-- Limit 50;


/*Exemplo 3: Faça uma consulta na tabela de clientes e faça uma ordenaçao de acordo 
com a data de nascimento, em ordem do mais novo para o mais velho*/

Select *
From clientes
Order By Data_Nascimento Desc;
-- Limit 50;