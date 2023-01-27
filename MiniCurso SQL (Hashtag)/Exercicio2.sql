-- Exercicio 2:

-- A) Faça uma consulta na tabela de lojas e ordene a tabela de acordo com a coluna de Num_Funcionarios, 
-- em ordem crescente.
-- Obs: Sua consulta deve retornar as colunas de Loja (AS 'Nome da Loja'), Endereco (AS'Endereço'), 
-- Num_Funcionarios (AS 'Qtd. Funcionários') e Telefone (AS 'Número para contato').

Select Loja As 'Nome da Loja', Endereco As 'Endereço', Num_Funcionarios As 'Qtd. Funcionarios', Telefone As 'Numero para contato'
From lojas
Order By Num_Funcionarios; 


-- B) Faça uma cosulta na tabela de clientes, ordenando a tabela de acordo com o nome (ordem alfabética) .
-- e sobrenome (ordem alfabética). Retorne todas as colunas e linhas da tabela.

Select *
From clientes
Order By Nome, Sobrenome;