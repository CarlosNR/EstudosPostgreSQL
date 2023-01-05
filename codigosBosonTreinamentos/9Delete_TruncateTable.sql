Exclusão de resgistros

--Delete from deleta registro especifico

-- adicionar where, se nao o delete from deleta todos os registros (um por vez)
delete from tabela;

delete from tabela
where condições;

delete from produtos
where cod_produto = 12;

-- embora recomendado, n é nescessario where com chave primaria
delete from produtos
where nome_produto = 'Manteiga';

delete from produtos
where qtde_estoque <= 5;

-- deleta todos os registros da tabela (de uma vez só)
truncate table tabela;

truncate table pedidos;