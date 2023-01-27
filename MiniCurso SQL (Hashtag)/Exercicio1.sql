-- Exercicio 1: 

-- A) Selecione todas as colunas e linhas da tabela de produtos.

Select *
From produtos;


-- B) Agora selecione apenas as colunas Nome_Produto, Marca_Produto e Preco_Unit. 
-- Renomeie essas colunas para Nome do Produto, Marca e Preço Unitário.

Select Nome_Produto As 'Produto', Marca_Produto As 'Marca', Preco_Unit As 'Preço Unitario'
From produtos;


-- C) Selecione as 5 primeiras linhas da tabela de lojas (considere todas as colunas).

Select *
From lojas
Limit 5;