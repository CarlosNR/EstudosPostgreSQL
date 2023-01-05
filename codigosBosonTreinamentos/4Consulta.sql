select coluna from tabela where (condição);
select coluna1, coluna 2 from tabela;

--* significa todas as colunas

select sobrenome_cliente, nome_cliente from clientes;

-- where da uma condição , simbolos que podem ser usados:
--  =
--  <
--  >
--  <=
--  >=
-- != ou <> (diferença)

-- where também admite 'and'
select * from produtos
where preco >= 5.00 and preco <= 40.0;

select sobrenome_cliente, nome_cliente from clientes where cod_cliente = 1;

-- se for comparar string, colocar ''

select sobrenome_cliente, nome_cliente from clientes where nome_cliente = 'João';

-- where aceita varias operações separadas por 'and' ou 'or'

select sobrenome_cliente, nome_cliente from clientes 
    where 
        nome_cliente = 'João' and
        sobrenome_cliente = 'da Silva';