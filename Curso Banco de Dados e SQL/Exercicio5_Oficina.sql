-- Exercicio 5: Oficina

-- Criaçao das Tabelas

Create Table Cliente(
	PK_Cliente Int Primary Key Auto_Increment,
    Nome Varchar(40) Not Null
);

Create Table Telefone(
	PK_Telefone Int Primary Key Auto_Increment,
    FK_Cliente Int,
    Numero Varchar(13) Not Null,
    Tipo Enum('Res', 'Com', 'Cel') Not Null
);

Create Table Carro(
	PK_Carro Int Primary Key Auto_Increment,
    FK_Cliente Int Unique,
    Marca Varchar(30) Not Null,
    Modelo Varchar(30) Not Null,
    Ano Char(4)
);

Create Table Servico(
	PK_Servico Int Primary Key Auto_Increment,
    FK_Carro Int,
    Descricao Varchar(60) Not Null,
    Preco Float(9,2) Not Null
);

Create Table Cor(
	PK_Cor Int Primary Key Auto_Increment,  
    Cor Varchar(20) Not Null
);

Create Table CarroCor(
	PK_Carro Int, 
    PK_Cor Int,
    Primary Key(PK_Carro, PK_Cor)
);


-- Adicionando as Constraints

Alter Table Telefone Add Constraint FK_Cliente_Telefone Foreign Key(FK_Cliente) References Cliente(PK_Cliente);

Alter Table Carro Add Constraint FK_Cliente_Carro Foreign Key(FK_Cliente) References Cliente(PK_Cliente);

Alter Table Servico Add Constraint FK_Carro_Servico Foreign Key(FK_Carro) References Carro(PK_Carro);

Alter Table CarroCor Add Constraint FK_Carro_CarroCor Foreign Key(PK_Carro) References Carro(PK_Carro);
Alter Table CarroCor Add Constraint FK_Cor_CarroCor Foreign Key(PK_Cor) References Cor(PK_Cor); 


-- Adicionando Dados no Banco

-- Cliente
Insert Into Cliente Values(Null, 'Marcos');
Insert Into Cliente Values(Null, 'Jessica');
Insert Into Cliente Values(Null, 'Lucas');
Insert Into Cliente Values(Null, 'Silvio');
Insert Into Cliente Values(Null, 'Nicolas');
Insert Into Cliente Values(Null, 'Rubens');
Insert Into Cliente Values(Null, 'Marcio');
Insert Into Cliente Values(Null, 'Paulo');
Insert Into Cliente Values(Null, 'Rita');
Insert Into Cliente Values(Null, 'Bruno');

-- Telefone
Insert Into Telefone Values(Null, 1, '(11)996542311', 'Cel');
Insert Into Telefone Values(Null, 2, '(15)984581567', 'Cel');
Insert Into Telefone Values(Null, 3, '(12)26445678', 'Com');
Insert Into Telefone Values(Null, 4, '(14)999654825', 'Com');
Insert Into Telefone Values(Null, 5, '(16)32547548', 'Res');
Insert Into Telefone Values(Null, 6, '(17)54658812', 'Res');
Insert Into Telefone Values(Null, 7, '(10)996972182', 'Res');
Insert Into Telefone Values(Null, 8, '(15)999991563', 'Com');
Insert Into Telefone Values(Null, 9, '(12)951254514', 'Cel');
Insert Into Telefone Values(Null, 10, '(46)59811455', 'Com');

-- Carro
Insert Into Carro Values(Null, 1, 'Ford', 'F-250', '2015');
Insert Into Carro Values(Null, 2, 'Mercedes', 'GLA 200', '2022');
Insert Into Carro Values(Null, 3, 'Audi', 'A6', '2023');
Insert Into Carro Values(Null, 4, 'Volvo', 'XC60', '2021');
Insert Into Carro Values(Null, 5, 'Volkswagen', 'Polo', '2020');
Insert Into Carro Values(Null, 6, 'Toyota', 'Corolla', '2023');
Insert Into Carro Values(Null, 7, 'BMW', 'M3', '2018');
Insert Into Carro Values(Null, 8, 'Volkswagen', 'Golf', '2020');
Insert Into Carro Values(Null, 9, 'Fiat', 'Argo', '2021');
Insert Into Carro Values(Null, 10, 'Volvo', 'XC40', '2022');

-- Servico
Insert Into Servico Values(Null, 1, 'Troca de Pistao', 2150.00);
Insert Into Servico Values(Null, 2, 'Lavagem Completa', 150.00);
Insert Into Servico Values(Null, 3, 'Troca de Oleo', 160.00);
Insert Into Servico Values(Null, 4, 'Troca de Velas', 100.00);
Insert Into Servico Values(Null, 5, 'Checkup Completo', 200.00);
Insert Into Servico Values(Null, 6, 'Troca de Disco de Freio 4X', 8000.00);
Insert Into Servico Values(Null, 7, 'Limpeza do Ar Condicionado', 150.00);
Insert Into Servico Values(Null, 8, 'Troca da Bomba de Combustivel', 600.00);
Insert Into Servico Values(Null, 9, 'Troca de Pneus 4X', 3500.00);
Insert Into Servico Values(Null, 10, 'Troca do Radiador', 4000.00);

-- Cor
Insert Into Cor Values(Null, 'Azul');
Insert Into Cor Values(Null, 'Verde');
Insert Into Cor Values(Null, 'Laranja');
Insert Into Cor Values(Null, 'Vermelho');
Insert Into Cor Values(Null, 'Preto');
Insert Into Cor Values(Null, 'Prata');
Insert Into Cor Values(Null, 'Cinza');
Insert Into Cor Values(Null, 'Branco');
Insert Into Cor Values(Null, 'Creme');
Insert Into Cor Values(Null, 'Grafite');

-- Carro Cor
Insert Into CarroCor Values(1, 5);
Insert Into CarroCor Values(5, 7);
Insert Into CarroCor Values(2, 3);
Insert Into CarroCor Values(8, 1);
Insert Into CarroCor Values(7, 5);
Insert Into CarroCor Values(9, 4);
Insert Into CarroCor Values(8, 2);
Insert Into CarroCor Values(3, 7);
Insert Into CarroCor Values(7, 1);
Insert Into CarroCor Values(8, 4);
