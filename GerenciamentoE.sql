CREATE DATABASE GerenciamentoEstoque;

USE GerenciamentoEstoque;

DROP DATABASE GerenciamentoEstoque;

CREATE TABLE Produtos(
	ProdutoId INT PRIMARY KEY AUTO_INCREMENT,
	NomeProduto VARCHAR(100) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	PrecoUnitario DECIMAL(10,2) NOT NULL,
	EstoqueMinimo INT NOT NULL
	);

INSERT INTO Produtos(NomeProduto, Descricao, PrecoUnitario, EstoqueMinimo) VALUES ('Caderno', 'Caderno 20 matérias', 35.00, 15);
INSERT INTO Produtos(NomeProduto, Descricao, PrecoUnitario, EstoqueMinimo) VALUES ('Caneta', 'Caneta azul, preto e vermelho', 3.00, 10);
INSERT INTO Produtos(NomeProduto, Descricao, PrecoUnitario, EstoqueMinimo) VALUES ('Cola', 'Cola SuperBond 20ml', 5.00, 20);
INSERT INTO Produtos(NomeProduto, Descricao, PrecoUnitario, EstoqueMinimo) VALUES ('Borracha', 'Borracha Branca e multicor', 4.50, 15);
INSERT INTO Produtos(NomeProduto, Descricao, PrecoUnitario, EstoqueMinimo) VALUES ('Lápis', 'Lápis preto', 2.00, 20);

CREATE TABLE Fornecedores(
	FornecedorId INT PRIMARY KEY AUTO_INCREMENT,
	NomeFornecedor VARCHAR(255) NOT NULL,
	Endereco VARCHAR(255) NOT NULL,
	Telefone VARCHAR(30) NOT NULL,
	Email VARCHAR(255) UNIQUE NOT NULL,
	IdProduto INT NOT NULL,
	FOREIGN KEY (IdProduto) REFERENCES Produtos(ProdutoId)
	);

INSERT INTO Fornecedores(NomeFornecedor, Endereco, Telefone, Email, IdProduto) VALUES ('Thalita', 'Rua Sérgio Lanfulfo Furtado, 3', '(71) 98501-3844', 'thalita@gmail.com', 1);
INSERT INTO Fornecedores(NomeFornecedor, Endereco, Telefone, Email, IdProduto) VALUES ('Maria', 'Rua Sérgio, 4', '(71) 98701-5444', 'maria@gmail.com', 2);
INSERT INTO Fornecedores(NomeFornecedor, Endereco, Telefone, Email, IdProduto) VALUES ('João', 'Rua da Glória, 5', '(71) 98500-3044', 'joao@gmail.com', 3);
INSERT INTO Fornecedores(NomeFornecedor, Endereco, Telefone, Email, IdProduto) VALUES ('Joana', 'Rua Furtado, 7', '(71) 98571-3876', 'joana@gmail.com', 4);
INSERT INTO Fornecedores(NomeFornecedor, Endereco, Telefone, Email, IdProduto) VALUES ('Felipe', 'Rua Cosme de Farias, 6', '(71) 98051-3844', 'felipe@gmail.com', 5);

-- RETORNANDO DADOS QUE FORAM INSERIDOS NA TABELA
SELECT Fornecedores.nomefornecedor AS 'Nome do Fornecedor',
Produtos.nomeproduto AS 'Nome do Produto'
FROM Produtos
INNER JOIN Fornecedores
ON Produtos.ProdutoId = Fornecedores.IdProduto;

SELECT*FROM Produtos;
SELECT*FROM Fornecedores;