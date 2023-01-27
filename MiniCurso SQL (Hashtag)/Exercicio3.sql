-- Exercicio 3:

-- A) Faça um filtro na tabela de produtos e retorne apenas os produtos com custo maior ou igual a 200.

Select *
From produtos
Where Custo_Unit >= 200;


-- B) Faça um filtro na tabela de produtos e retorne apenas os produtos da marca "DELL"

Select *
From produtos
Where Marca_Produto = 'DELL';