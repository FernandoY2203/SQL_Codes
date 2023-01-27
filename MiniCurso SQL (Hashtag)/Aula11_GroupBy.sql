-- Group By

-- Exemplo 1: Crie um agrupamento que mostre a quantidade de produtos por marca

Select Marca_Produto, Count(Marca_Produto) As 'Qtd Produtos'
From produtos
Group By Marca_Produto;


-- Exemplo 2: Crie um agrupamento que mostre a quantidade de clientes por escolaridade

Select Escolaridade, Count(Escolaridade) As 'Qtd Clientes'
From clientes
Group By Escolaridade;


-- Exemplo 3: Crie um agrupamento que mostre o total de receita (tabela pedidos) por id da loja

Select ID_Loja, Sum(Receita_Venda) As 'Total de Receita'
From pedidos
Group By ID_Loja;
