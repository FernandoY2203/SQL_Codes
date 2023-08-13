-- Academia v1
-- Autor: Fernando Yuji
-- Criado em: 23/01/2023
-- Ultima Atualização: 24/01/2023 - 00:08

-- Criando Database

Create Database Academia; 

Use Academia;

-- Criando as Tabelas

Create Table Academia(
	PK_Academia Int Primary Key Auto_Increment, 
	Email Varchar(60) Not Null Unique
);

Create Table Pessoa(
	PK_Pessoa Int Primary Key Auto_Increment, 
	Nome Varchar(40) Not Null, 
	Email Varchar(60) Not Null Unique
);

Create Table PessoaFisica(
	PK_PessoaFisica Int Primary Key Auto_Increment, 
	FK_Pessoa Int Unique, 
	RG Varchar(11) Not Null Unique, 
	CPF Varchar(13) Not Null Unique,
	Senha Varchar(100) Not Null Unique, -- Nota: Tokenizar
	Sexo Char(1) Not Null Unique,
    DataDeNascimento Date Not Null
);

Create Table ImagemPessoaFisica(
	PK_ImagemPessoaFisica Int Primary Key Auto_Increment,
	FK_PessoaFisica Int Unique, 
	Imagem MediumBlob Not Null,
	Nome Varchar(25) Not Null,
	Tamanho Varchar(20) Not Null,
	Tipo Varchar(20) Not Null
);

Create Table PessoaAtividade(
	FK_PessoaFisica Int, 
	FK_Atividade Int 
);

Create Table Atividade(
	PK_Atividade Int Primary Key Auto_Increment, 
	Nome Varchar(25) Not Null,
	Descricao Varchar(60) Not Null,
	Valor Float(7,2) Not Null
);

Create Table ImagemAtividade(
	PK_ImagemAtividade Int Primary Key Auto_Increment,
	FK_Atividade Int Unique, 
	Imagem MediumBlob Not Null,
	imagematividadeimagematividadeNome Varchar(25) Not Null,
	Tamanho Varchar(20) Not Null,
	Tipo Varchar(20) Not Null
);

Create Table Funcionario(
  PK_Funcionario Int Primary Key Auto_Increment, 
  FK_PessoaFisica Int Unique, 
  Funcao Varchar(20) Not Null,
  Cargo Varchar(20) Not Null,
  DataDeAdmissao Date Not Null,
  Remuneracao Float(10,2) Not Null,
  Turno Enum('Manhã', 'Tarde', 'Noite', 'Madrugada') Not Null
);

Create Table FuncionarioAtividade(
	FK_Funcionario Int, 
	FK_Atividade Int 
);

Create Table PessoaJuridica(
  PK_PessoaJuridica Int Primary Key Auto_Increment, 
  FK_Pessoa Int Unique, 
  CNPJ Varchar(25) Not Null Unique
);

Create Table Servico(
	PK_Servico Int Primary Key Auto_Increment, 
	FK_PessoaJuridica Int, 
	FK_Academia Int, 
	Tipo Varchar(40) Not Null,
	Descricao Varchar(100) Not Null,
	Valor Float(10,2) Not Null
);

Create Table Contrato(
	PK_Contrato Int Primary Key Auto_Increment,
	FK_Servico Int Unique, 
	Contrato Blob Not Null,
	Nome Varchar(25) Not Null,
	Tamanho Varchar(25) Not Null,
	Tipo Varchar(25) Not Null
);

Create Table Endereco(
  PK_Endereco Int Primary Key Auto_Increment, 
  FK_Pessoa Int Unique, 
  FK_Academia Int Unique, 
  Numero Varchar(4) Not Null,
  Rua Varchar(50) Not Null,
  Bairro Varchar(40) Not Null,
  Complemento Varchar(80) Not Null,
  Cidade Varchar(25) Not Null,
  CEP Varchar(10) Not Null,
  UF Char(2) Not Null
);

Create Table Telefone(
  PK_Telefone Int Primary Key Auto_Increment, 
  FK_Pessoa Int, 
  FK_Academia Int, 
  Tipo Enum('Res','Com','Cel') Not Null,
  Numero Varchar(25) Not Null Unique
);


-- Adicionando Constraints

Alter Table PessoaFisica Add Constraint FK_PessoaFisica_Pessoa Foreign Key(FK_Pessoa)
References Pessoa(PK_Pessoa);

Alter Table ImagemPessoaFisica Add Constraint FK_ImagemPessoaFisica_PessoaFisica Foreign Key(FK_PessoaFisica)
References PessoaFisica(PK_PessoaFisica);

Alter Table PessoaAtividade Add Constraint FK_PessoaAtividade_PessoaFisica Foreign Key(FK_PessoaFisica) 
References PessoaFisica(PK_PessoaFisica);
Alter Table PessoaAtividade Add Constraint FK_PessoaAtividade_Atividade Foreign Key(FK_Atividade) 
References Atividade(PK_Atividade);

Alter Table ImagemAtividade Add Constraint FK_ImagemAtividade_Atividade Foreign Key(FK_Atividade)
References Atividade(PK_Atividade);

Alter Table Funcionario Add Constraint FK_Funcionario_PessoaFisica Foreign Key(FK_PessoaFisica)
References PessoaFisica(PK_PessoaFisica);

Alter Table FuncionarioAtividade Add Constraint FK_FuncionarioAtividade_Funcionario Foreign Key(FK_Funcionario)
References Funcionario(PK_Funcionario);
Alter Table FuncionarioAtividade Add Constraint FK_FuncionarioAtividade_Atividade Foreign Key(FK_Atividade)
References Atividade(PK_Atividade);

Alter Table PessoaJuridica Add Constraint FK_PessoaJuridica_Pessoa Foreign Key(FK_Pessoa) 
References Pessoa(PK_Pessoa);

Alter Table Servico Add Constraint FK_Servico_PessoaJuridica Foreign Key(FK_PessoaJuridica)
References PessoaJuridica(PK_PessoaJuridica);
Alter Table Servico Add Constraint FK_Servico_Academia Foreign Key(FK_Academia)
References Academia(PK_Academia);

Alter Table Contrato Add Constraint FK_Contrato_Servico Foreign Key(FK_Servico)
References Servico(PK_Servico);

Alter Table Endereco Add Constraint FK_Endereco_Pessoa Foreign Key(FK_Pessoa) 
References Pessoa(PK_Pessoa);
Alter Table Endereco Add Constraint FK_Endereco_Academia Foreign Key(FK_Academia)
References Academia(PK_Academia);

Alter Table Telefone Add Constraint FK_Telefone_Pessoa Foreign Key(FK_Pessoa)
References Pessoa(PK_Pessoa);
Alter Table Telefone Add Constraint FK_Telefone_Academia Foreign Key(FK_Academia)
References Academia(PK_Academia);


-- Verificando Constraints

Use information_schema; 

Desc Table_Constraints;

Select Constraint_Schema As 'Banco', Table_Name As 'Tabela', Constraint_Name As 'Nome da Regra', Constraint_Type As 'Tipo'
From TABLE_CONSTRAINTS
Where Constraint_Schema = 'Academia';


