-- Exercicio 5:

-- A) Faça um agrupamento para descobrir o total de clientes por Sexo.

Select Sexo, Count(Nome) As 'Qtd. de Clientes'
From clientes
Group By Sexo;


-- B) Faça um agrupamento para descobrir quantos produtos existem por categoria.

Select Categoria, Count(*) As 'Qtd. Produtos'
From produtos
Inner Join categorias On produtos.ID_Categoria = categorias.ID_Categoria
Group By Categoria;


-- C) Faça um agrupamento para descobrir a soma total de receita por Loja.

Select Loja, Sum(Receita_Venda) As 'Total de Receita'
From pedidos
Inner Join lojas On pedidos.ID_Loja = lojas.ID_Loja
Group By Loja;