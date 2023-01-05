CREATE TABLE Pessoa(
    id INTEGER, 
    nome varchar(50), 
    endereco TEXT
);

INSERT INTO Pessoa(id, nome, endereco) VALUES (1, 'Da Silva', 'Rua tal');

INSERT INTO Pessoa(id, nome, endereco) VALUES (2, 'Silveira', 'Rua tal');

INSERT INTO Pessoa(id, nome, endereco) VALUES (3, 'Machado', 'Proxima rua');

SELECT * FROM pessoa WHERE id < 3;

Delete From pessoa WHERE id = 2;

SELECT * FROM pessoa;
