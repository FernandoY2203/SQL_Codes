-- Exercicio 1: Livraria

Create Database livraria;

Use livraria;

Create Table Livros(
	Nome_Livro Varchar(50),
    Nome_Autor Varchar(40),
    Sexo_Autor Varchar(10),
    Num_Paginas Int(5),
    Nome_Editora Varchar(30),
    Valor_Livro Float(7,2),
    UF_Editora char(2),
    Ano_Publi char(4)
);

Insert Into Livros Values('Cavaleiro Real',	'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', '2009'),
						 ('SQL para leigos', 'João Nunes', 'Masculino',	450, 'Addison',	98,	'SP', '2018'),
                         ('Receitas Caseiras', 'Celia Tavares',	'Feminino',	210, 'Atlas', 45, 'RJ',	'2008'),
                         ('Pessoas Efetivas', 'Eduardo Santos',	'Masculino', 390, 'Beta', 78.99, 'RJ', '2018'),
                         ('Habitos Saudáveis', 'Eduardo Santos', 'Masculino', 630, 'Beta', 150.98, 'RJ', '2019'),
                         ('A Casa Marrom', 'Hermes Macedo',	'Masculino', 250, 'Bubba', 60, 'MG', '2016'),
                         ('Estacio Querido', 'Geraldo Francisco', 'Masculino', 310,	'Insignia',	100, 'ES', '2015'),
                         ('Pra sempre amigas', 'Leda Silva', 'Feminino', 510, 'Insignia', 78.98, 'ES', '2011'),
                         ('Copas Inesqueciveis', 'Marco Alcantara',	'Masculino', 200, 'Larson',	130.98,	'RS', '2018'),
                         ('O poder da mente', 'Clara Mafra', 'Feminino', 120, 'Continental', 56.58,	'SP', '2017');
                         

-- 1) Trazer todos os dados.

Select * 
From livros;


-- 2) Trazer o nome do livro e o nome da editora.

Select Nome_Livro As 'Nome do Livro', Nome_Editora As 'Nome da Editora'
From livros;


-- 3) Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.

Select Nome_Livro As 'Nome do Livro', UF_Editora As 'UF'
From livros
Where Sexo_Autor = 'Masculino';


-- 4) Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.

Select Nome_Livro As 'Nome do Livro', Num_Paginas As 'Numero de Paginas'
From livros
Where Sexo_Autor = 'Feminino'; 


-- 5) Trazer os valores dos livros das editoras de São Paulo.

Select Nome_Livro As 'Nome do Livro',Valor_Livro As 'Preço'
From livros
Where UF_Editora = 'SP';


-- 6) Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).

-- Forma 1.
Select Nome_Autor As 'Nome do Autor', Sexo_Autor As 'Sexo', UF_Editora
From livros
Where Sexo_Autor = 'Masculino' And (UF_Editora = 'SP' Or UF_Editora = 'RJ');

-- Forma 2.
Select Nome_Autor As 'Nome do Autor', Sexo_Autor As 'Sexo', UF_Editora
From livros
Where (Sexo_Autor, UF_Editora) In (('Masculino', 'SP'),('Masculino', 'RJ'));





