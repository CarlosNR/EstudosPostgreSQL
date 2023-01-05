CREATE TABLE clientes(
    -- primary key-> chave primaria
    cod_cliente SERIAL PRIMARY KEY, 

    -- not null-> entrada n pode ser vazia/nula
    nome_cliente varchar(20) NOT NULL, 
    
    -- ultima entrada n tem virgula
    sobrenome_cliente varchar(40) NOT NULL 
);

--spoiler
insert into clientes (nome_cliente, sobrenome_cliente) VALUES ('João', 'da Silva');
--spoiler
insert into clientes (nome_cliente, sobrenome_cliente) VALUES ('Ricardo', 'Silveira');

select * from clientes;

CREATE TABLE produtos(
    --serial-> tipo n precisa ser preenchido pois eh auto incremento
    cod_produto SERIAL PRIMARY KEY,

    nome_produto varchar(30) NOT NULL, 

    -- null-> entrada pode ser nula
    descricao text NULL,

    -- numeric-> variavel para preços
    -- check-> verifica algo antes de inserir
    preco numeric CHECK(preco > 0) NOT NULL,

    -- default 0 -> se n for preenchido vira 0
    qtde_estoque smallint default 0 
);