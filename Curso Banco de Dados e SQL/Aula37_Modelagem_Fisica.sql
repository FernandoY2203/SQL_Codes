-- Aula 37 Modelo Logico para Fisico

Create Database Comercio;

Use Comercio;

Show Databases;  -- Apenas para verificar todos os bancos de dados criados na maquina.


Create Table Cliente(
	ID_Cliente Int Primary Key Auto_Increment, -- Auto_Increment é uma forma do proprio banco de gerenciar 
                                               -- e associar uma chave primaria a uma entidade 
                                               -- (Auto_Increment existe apenas no MySQL, nos outros SGBDs o comando é diferente). 
	Nome Varchar(40) Not Null, -- Not Null não permite que o campo fique vazio.
    Sexo Enum('M', 'F') Not Null, -- Enum faz com que os unicos valores permitidos sejam os especificados (Enum existe apenas no MySQL).
    Email Varchar(50) Unique, -- Unique não permite que exitam valores repitidos na coluna.
    CPF Varchar(15) Unique
);

Create Table Telefone(
	ID_Telefone Int Primary Key Auto_Increment,
    Tipo Enum('Res', 'Com', 'Cel') Not Null,
    Numero Varchar(15) Not Null,
    FK_Cliente Int, -- Como o relacionamento de Telefone com Cliente é (1 X N) não é necessario usar o Unique.
    Foreign Key(FK_Cliente)
    References Cliente(ID_Cliente)
);

Create Table Endereco(
	ID_Endereco Int Primary Key Auto_Increment,
    Rua Varchar(30) Not Null,
    Bairro Varchar(30) Not Null,
    Cidade Varchar(30) Not Null,
    Estado Char(2) Not Null,
    FK_Cliente Int Unique, -- É usado Unique na Chave Estrangeira para definir a Relação de (1 X 1) entre Endereco e Cliente.
    Foreign Key(FK_Cliente)
    References Cliente(ID_Cliente)
);


INSERT INTO CLIENTE VALUES(NULL,'JOAO','M','JOAOA@IG.COM','76567587887');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOSA@IG.COM','5464553466');
INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM','456545678');
INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'5687766856');
INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM','8756547688');
INSERT INTO CLIENTE VALUES(NULL,'CELIA','M','JCELIA@IG.COM','5767876889');

Select * 
From cliente;


INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);

Select * 
From endereco;


INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676',3);
INSERT INTO TELEFONE VALUES(NULL,'COM','66687899',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','89986668',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909',2);

Select *
From telefone;