-- Criação de tabela
CREATE TABLE Produto
(
 cod_prod INT PRIMARY KEY,
 descricao VARCHAR(50) UNIQUE,
 qtde_disponivel INT NOT NULL DEFAULT 0
);

INSERT INTO Produto VALUES (1, 'Feijão', 10);
INSERT INTO Produto VALUES (2, 'Arroz', 5);
INSERT INTO Produto VALUES (3, 'Farinha', 15);

CREATE TABLE ItensVenda
(
 cod_venda  INT,
 id_produto INT,
 qtde_vendida INT,
 FOREIGN KEY (cod_venda) REFERENCES Produto(cod_prod) ON DELETE CASCADE
);

-- cria o trigger

-- before antes, after depois, instead of invés de

-- pode ser qualquer operação, insert ta soh de exemplo. insert or update, delete, update, etc...

-- for each row adiciona e salva pra cada linha
-- for each statement adiciona e salva pra cada comando

-- se tu manda atualizar 1000 linhas, e cai luz na linha 500. "for each row" salva 500 linhas, já o "for each statement" não salva nada, pq n completou o bloco de 1000 linhas

-- trigger generico
create trigger nomeTrigger
before/after/instead of insert on tabela
for each row/statement
execute procedure função();



--trigger
create trigger t_atualiza_estoque
before insert on itensvenda
for each row
execute procedure atualiza_estoque();



-- função generica
create or replace function função() 
returns trigger as $$ -- indica que eh função do usuario ou procedimento armazenado
declare
    var tipo --adiciona variaveis
begin
    --função em si
    return new; -- indica que os valores novos serao usados, obrigatorio se .new foi usado na "função em si"
end
$$ language plpgsql; -- linguagem procedural do postgresql



-- usa o trigger pra dar procedimento a uma função
create or replace function atualiza_estoque() returns trigger as $$
declare
    qtde integer; -- quantidade no estoque
begin
    select qtde_disponivel from produto 
    where cod_prod = new.id_produto
    into qtde;

    if qtde < new.qtde_vendida
        then raise exception 'quantidade indisponivel no estoque';
    else
        update Produto set qtde_disponivel = qtde_disponivel - new.qtde_vendida 
        where cod_prod = new.id_produto;
    end if;
    return new;
end
$$ language plpgsql;

select * from itensvenda;
select * from produto;

-- inserção para dar inicio a trigger_out
insert into itensvenda values (1,1,3);
insert into itensvenda values (2,2,5);

select * from itensvenda;
