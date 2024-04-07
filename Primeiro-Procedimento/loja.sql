CREATE SEQUENCE Seq_ID_Pessoa
    START WITH 1
    INCREMENT BY 1;
GO

CREATE TABLE Produto (
  ID_Produto INTEGER NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Quantidade INTEGER NOT NULL CHECK (Quantidade >= 0),
  PrecoVenda DECIMAL(10, 2) NOT NULL CHECK (PrecoVenda >= 0),
  PRIMARY KEY(ID_Produto) 
);
GO

CREATE TABLE Usuario (
  ID_Usuario INTEGER NOT NULL,
  Login VARCHAR(255) UNIQUE NOT NULL,
  Senha VARCHAR(255) NOT NULL,
  PRIMARY KEY(ID_Usuario) 
);
GO

CREATE TABLE Pessoa (
  ID_Pessoa INTEGER NOT NULL DEFAULT (NEXT VALUE FOR Seq_ID_Pessoa),
  Nome VARCHAR(255) NOT NULL,
  Telefone VARCHAR(11) NOT NULL,
  Logradouro VARCHAR(255) NOT NULL,
  Cidade VARCHAR(255) NOT NULL,
  Estado CHAR(2) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  PRIMARY KEY(ID_Pessoa) 
);
GO

CREATE TABLE PessoaFisica (
  ID_Pessoa INTEGER NOT NULL,
  CPF VARCHAR(11) NOT NULL UNIQUE,
  FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID_Pessoa),
  PRIMARY KEY(ID_Pessoa)
);
GO

CREATE TABLE PessoaJuridica (
  ID_Pessoa INTEGER NOT NULL,
  CNPJ VARCHAR(14) NOT NULL UNIQUE,
  FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID_Pessoa),
  PRIMARY KEY(ID_Pessoa)
);
GO

CREATE TABLE Movimento (
  ID_Movimento INTEGER NOT NULL,
  ID_Produto INTEGER NOT NULL,
  ID_Usuario INTEGER NOT NULL,
  ID_Pessoa INTEGER NOT NULL,
  TipoMovimento CHAR(1) NOT NULL CHECK (TipoMovimento IN ('C', 'V')),
  Quantidade INTEGER NOT NULL CHECK (Quantidade > 0),
  PrecoUnitario DECIMAL(10, 2) NOT NULL CHECK (PrecoUnitario >= 0),
  DataMovimento DATETIME NOT NULL DEFAULT (getdate()),
  PRIMARY KEY(ID_Movimento), 
  FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID_Pessoa),
  FOREIGN KEY(ID_Produto) REFERENCES Produto(ID_Produto),
  FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID_Usuario)
);
GO