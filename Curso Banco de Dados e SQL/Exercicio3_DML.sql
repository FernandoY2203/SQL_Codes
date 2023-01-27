-- Exercicio 3: DML

-- Inserindo Dados 

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',7);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',8);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',13);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',14);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',19);

INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',7);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',7);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',9);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',9);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',10);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',13);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',14);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',15);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',16);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',19);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',19);


-- 1) Relatorio Geral de Todos os Clientes
 
Select ID_Cliente, Nome, Sexo, Email, CPF, Rua, Bairro, Cidade, Estado, Tipo, Numero
From cliente 
Inner Join endereco On cliente.ID_Cliente = endereco.FK_Cliente
Inner Join telefone On cliente.ID_Cliente = telefone.FK_Cliente;


-- 2) Relatorio de Homens

Select ID_Cliente, Nome, Sexo, Email, CPF, Rua, Bairro, Cidade, Estado, Tipo, Numero
From cliente
Inner Join endereco On cliente.ID_Cliente = endereco.FK_Cliente
Inner Join telefone On cliente.ID_Cliente = telefone.FK_Cliente
Where Sexo = 'M';


-- Extra: Arrumar o Sexo de Alguns Clientes

Update cliente 
Set Sexo = 'F'
Where ID_Cliente In (10,11,16,17);

Update cliente 
Set Sexo = 'M'
Where ID_Cliente In (14);


-- 3) Relatorio de Mulheres

Select ID_Cliente, Nome, Sexo, Email, CPF, Rua, Bairro, Cidade, Estado, Tipo, Numero
From cliente
Inner Join endereco On cliente.ID_Cliente = endereco.FK_Cliente
Inner Join telefone On cliente.ID_Cliente = telefone.FK_Cliente
Where Sexo = 'F';


-- 4) Quantidade de Homens e Mulheres

Select Sexo, Count(Sexo) As Qtde
From cliente 
Group By Sexo;


-- 5) Ids e Emails das Mulheres que Morem no Centro do Rio de Janeiro e Nao Tenham Celular

Select ID_Cliente, Nome, Sexo, Email, Bairro, Cidade, Tipo
From cliente
Inner Join endereco On cliente.ID_Cliente = endereco.FK_Cliente
Inner Join telefone On cliente.ID_Cliente = telefone.FK_Cliente
Where Sexo = 'F' And Bairro = 'Centro' And Cidade = 'Rio de Janeiro' And Tipo <> 'Cel'; -- Corrigir, Giovana ainda ta vindo


-- 6) Para uma campanha de marketing, o setor solicitou um Relatorio com o Nome, Email e Telefone Celular dos Clientes que Moram no Estado do 
-- Rio de Janeiro. Voce tera que passar a Query para gerar o relatorio para o programador.

Select Nome, Email, Numero, Tipo
From Cliente 
Inner Join endereco On cliente.ID_Cliente = endereco.FK_Cliente
Inner Join telefone On cliente.ID_Cliente = telefone.FK_Cliente
Where Tipo = 'Cel' And Estado = 'RJ';


-- 7) Para uma campanha de produtos de beleza, o comercial solicitou um relatorio com o Nome, Email e Telefone Celular das Mulheres que Moram no 
-- Estado de Sao Paulo. Voce tera que passar a Query para gerar o relatorio para o programador. 

Select Nome, Email, Numero, Tipo
From Cliente 
Inner Join endereco On cliente.ID_Cliente = endereco.FK_Cliente
Inner Join telefone On cliente.ID_Cliente = telefone.FK_Cliente
Where Sexo = 'F' And Estado = 'SP';
