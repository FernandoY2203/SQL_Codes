-- Join

-- Inner Join

-- Exemplo 1: Faça uma consulta à tabela de pedidos que retorne as colunas de Loja, Data_Venda e Receita_Venda

Select Loja, Data_Venda, Receita_Venda, Gerente, Endereco, Num_Funcionarios
From pedidos
Inner Join lojas On pedidos.ID_Loja = lojas.ID_Loja;


-- Exemplo 2: Crie um agrupamento que mostre o total de receita (tabela pedidos) por loja

Select Loja, Sum(Receita_Venda) As 'Total de Receita'
From pedidos
Inner Join lojas On pedidos.ID_Loja = lojas.ID_Loja
Group By lojas.ID_Loja
