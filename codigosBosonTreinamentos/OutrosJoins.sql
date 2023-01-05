-- palavra "outer" eh opcional para left right e full join. 

-- iremos considerar com pedido esquerda<<, pois esta no select e produto direita>>, pois esta no join

-- FULL OUTER JOIN

--lista todos os pedidos e produtos.
select PE.cod_pedido, PR.nome_produto, PE.qtde "quantidade comprada"
from pedidos pe
full join produtos pr
    on PE.cod_produto = PR.cod_produto
order by PR.cod_produto;

-- full join, lista todos os pedidos e produtos que NAO tem dados em comum, ou seja, pedidos sem produdos e produtos sem pedidos

select PE.cod_pedido, PR.nome_produto, PE.qtde "quantidade comprada"
from pedidos pe
full outer join produtos pr
    on PE.cod_produto = PR.cod_produto
where 
    PE.cod_produto is null or
    PR.cod_produto is null
order by PR.cod_produto;

-- LEFT OUTER JOIN

-- lista todos os pedidos
select pe.cod_pedido, pr.nome_produto, pe.qtde "quantidade comprada"
from pedidos pe
left join produtos pr
    on pr.cod_produto = pe.cod_produto
order by pr.cod_produto;

-- lista todos os pedidos sem produto (neste exemplo eh impossivel, mas fica o exercicio)
select pe.cod_pedido, pr.nome_produto, pe.qtde "quantidade comprada"
from pedidos pe
left join produtos pr
    on pr.cod_produto = pe.cod_produto
where pe.cod_produto IS NULL
order by pr.cod_produto;

-- RIGHT OUTER JOIN

-- lista todos os produtos
select pe.cod_pedido, pr.nome_produto, pe.qtde "quantidade comprada"
from pedidos pe
right join produtos pr
    on pr.cod_produto = pe.cod_produto
order by pr.cod_produto;

-- lista todos os produtos sem pedido
select pe.cod_pedido, pr.nome_produto, pe.qtde "quantidade comprada"
from pedidos pe
right join produtos pr
    on pr.cod_produto = pe.cod_produto
where pe.cod_produto IS NULL
order by pe.cod_produto;