-- update = atualiza

update tabela set coluna = novo valor
where coluna = indice desejado;

-- descrição antiga: Sabonete anti-bacteriado

-- descrição atualizada: Sabonete anti-bacteriano


-- WHERE (quase) OBRIGATÓRIO (a menos que todas as descrições de todos os produtos vão receber o mesmo valor)

-- Favorecer WHERE com a CHAVE PRIMARIA da tabela NO UPDATE (mas como na nossa tabela soh tem um item com nome_produto = 'Sabonete', entao não vai dar problema)

update produtos 
set descricao = 'Sabonete anti-bacteriano'
where nome_produto = 'Sabonete';

update produtos 
set descricao = 'Sabonete anti-bacteriano'
where cod_produto = 4;

--
update produtos 
set qtde_estoque = qtde_estoque - 4
where preco < 15.00;

--exemplo em que todos os itens sao atualizados (10% do preço mais caro)
update produtos
set preco = preco * 1.10;