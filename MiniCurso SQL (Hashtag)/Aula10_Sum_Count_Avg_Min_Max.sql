-- Sum, Count, Avg, Min, Max

-- Exemplo 1: Sum

Select Sum(Receita_Venda) As 'Receita Total' 
From pedidos;


-- Exemplo 2: Count

Select Count(Nome) As 'Qtd Clientes'
From clientes
Where Sexo = 'F';


-- Exemplo 3: Avg

Select Avg(Renda_Anual) As 'Media Salarial'
From clientes;


-- Exemplo 4: Min

Select Min(Preco_Unit) As 'Preço Unitario Minimo'
From produtos;


-- Exemplo 5: Max

Select Max(Preco_Unit) As 'Preço Unitario Maximo'
From produtos;


Select * 
From clientes