-- Select 

-- Exemplo 1: Select *

Select *
From clientes;
Select *
From pedidos;


-- Exemplo 2: Select From 

Select nome, sobrenome, email
From clientes;


-- Exemplo 3: Select As

Select data_venda As "Data da Venda", id_produto As "Codigo do Produto", qtd_vendida As "Quantidade Vendida"
From pedidos;


-- Exemplo 4: Select Limit

Select *
From pedidos
Limit 100;
