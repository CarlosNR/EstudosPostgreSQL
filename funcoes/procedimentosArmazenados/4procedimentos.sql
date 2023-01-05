-- criação e inserção de/em nova tabela
CREATE TABLE Produto
(
 cod_prod INT PRIMARY KEY,
 descricao VARCHAR(50) UNIQUE,
 qtde_disponivel INT NOT NULL DEFAULT 0
);

INSERT INTO Produto VALUES (1, 'Feijão', 10);
INSERT INTO Produto VALUES (2, 'Arroz', 5);
INSERT INTO Produto VALUES (3, 'Macarrão', 15);
INSERT INTO Produto VALUES (4, 'Farinha', 25);
INSERT INTO Produto VALUES (5, 'Fubá', 7);
INSERT INTO Produto VALUES (6, 'Achocolatado', 10);
INSERT INTO Produto VALUES (7, 'Sal', 15);
INSERT INTO Produto VALUES (8, 'Açúcar', 10);
INSERT INTO Produto VALUES (9, 'Óleo', 30);

-- procedimento -> sem return

create or replace procedure nome(parametros)
as $$
declare
begin
end;
$$ language plpgsql;

-- como cod_prod eh primario, n pode ficar vazio e eu n sei o valor (teoricamente), entao faz um procedimento pra ver o valor do ultimo cod_prod

create or replace procedure insereProduto(descProd varchar, qtde int)
as $$
declare
    maximo int;
begin
    select max(cod_prod) from Produto into maximo;
    insert into Produto values(maximo+1, descProd, qtde);
end;
$$ language plpgsql;

-- diferente da função q é chamada com select, procedimento é chamado com "call"
call insereProduto('Leite', 12);

-- uma função com return void tem a mesma funcionalidade que um procedimento.
create or replace function insereProduto(descProd varchar, qtde int)
return void as $$
declare
    maximo int;
begin
    select max(cod_prod) from Produto into maximo;
    insert into Produto values(maximo+1, descProd, qtde);
end;
$$ language plpgsql;