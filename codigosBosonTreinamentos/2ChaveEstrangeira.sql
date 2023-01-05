CREATE TABLE clientes(
    cod_cliente SERIAL PRIMARY KEY, 
    nome_cliente varchar(20) NOT NULL, 
    sobrenome_cliente varchar(40) NOT NULL 
);

insert into clientes (nome_cliente, sobrenome_cliente) VALUES ('João', 'da Silva');

insert into clientes (nome_cliente, sobrenome_cliente) VALUES ('Ricardo', 'Silveira');

select * from clientes;

CREATE TABLE produtos(
    cod_produto SERIAL PRIMARY KEY,
    nome_produto varchar(30) NOT NULL, 
    descricao text NULL,
    preco numeric CHECK(preco > 0) NOT NULL,
    qtde_estoque smallint default 0 
);

CREATE TABLE pedidos(
    cod_pedido SERIAL PRIMARY KEY,
    -- duas formas de fazer chave estrangeira:
    -- modo direto
    cod_cliente INT not null references clientes(cod_cliente),

    -- ou primeiro criando a coluna
    cod_produto INT not null,
    qtde SMALLINT not null,
    --e depois declarando como chave estrangeira
    FOREIGN KEY (cod_produto) REFERENCES (produtos(cod_produto))
    -- obs: embora aqui a a linha cod_produto de produto e cod produto de pedidos tenham o mesmo nome, não é obrigatorio
);