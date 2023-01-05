-- joins -> junções de tabelas relacionadas distintas em uma pesquisa

-- inner join: retorna linhas quando houver pelo menos  uma ocorrencia em ambas as tabelas

-- outer join: retorna linhas quando não houver pelo menos uma ocorrencia uma das tabelas (ou em nenhuma)

-- se subdivide em: left join, right join e cross join

select colunas
from tabela1
inner join tabela2
    on tabela1.coluna = tabela2.coluna
inner join tabelaN
    on tabela1.coluna = tabelaN.coluna
where condição;

select pedidos.cod_pedido, produtos.nome_produto, pedidos.qtde
from pedidos
inner join produtos
    on pedidos.cod_produto = produtos.cod_produto;

-- juntando alias e inner join

select PE.cod_pedido, PR.nome_produto, PE.qtde
from pedidos pe
inner join produtos pr
    on PE.cod_produto = PR.cod_produto
where PE.cod_pedido = 16;

-- alias + 2 inner joins
select PE.cod_pedido, Cl.nome_cliente, PR.nome_produto, PE.qtde
from pedidos pe
inner join produtos pr
    on PE.cod_produto = PR.cod_produto
inner join clientes cl
    on pe.cod_cliente = cl.cod_cliente
where PE.cod_pedido = 16;

