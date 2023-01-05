--alias/apelido

--dar nome alternativo na exibição APENAS da CONSULTA

select coluna1 as alias_coluna1, colunaN as alias_colunaN from tabela as alias_tabela;

--dependendo do sistema operacional a palavra pode vir com variação
select nome_produto as Produto from produtos 
where qtde_estoque > 5;

--se quer o alias exatamente igual ou o novo alias tem espaço, por ""
select nome_produto as "Produto" from produtos 
where qtde_estoque > 5;

select nome_cliente as "Nome", sobrenome_cliente as "Sobrenome"
from clientes as "Cl";

--pode usar o alias como parametro
select cod_pedido as "Código do pedido", qtde as "Quantidade"
from pedidos as P
order by "Quantidade" desc;

-- palavra "as" é opcional
    select nome_cliente "Nome", sobrenome_cliente "Sobrenome"
    from clientes "Cl";

    select nome_cliente Nome, sobrenome_cliente Sobrenome
    from clientes Cl;