-- Exercicio 4:

-- A) Descubra o total de custo da tabela de pedidos.

Select Sum(Custo_Venda) As 'Custo Total'
From pedidos;


-- B) Descubra a quantidade total de lojas.

Select Count(Loja) As 'Qtd. de Lojas'
From lojas;


-- C) Descubra o custo médio dos produtos (de acordo com a tabela de produtos).

Select Avg(Custo_Unit) As 'Custo Medio'
From produtos;


-- D) Descubra a quantidade mínima e máxima de funcionários das lojas (faça isso em um único SELECT).

Select Min(Num_Funcionarios) As 'Qtd. Minima de Funcionarios', Max(Num_Funcionarios) As 'Qtd. Maxima de Funcionario'
From lojas;