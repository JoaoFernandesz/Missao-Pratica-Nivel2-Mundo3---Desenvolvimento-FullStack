SELECT Pessoa.*, PessoaJuridica.CNPJ 
FROM Pessoa
INNER JOIN PessoaJuridica ON Pessoa.ID_Pessoa = PessoaJuridica.ID_Pessoa;
