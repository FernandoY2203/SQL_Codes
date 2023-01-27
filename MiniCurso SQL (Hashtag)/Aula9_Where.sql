-- Where

-- Exemplo 1: Selecione na tabela de clientes apenas os clientes do sexo feminino*

Select *
From clientes
Where Sexo = 'F' Or Sexo = 'f';


-- Exemplo 2: Selecione na tabela de produtos apenas os produtos com preço acima de R$2000,00

Select *
From produtos
Where Preco_Unit > 2000;


-- Exemplo 3: Selecione os pedidos realizados  no dia 10/03/2019

Select *
From pedidos
Where Data_Venda = '2019-03-10';