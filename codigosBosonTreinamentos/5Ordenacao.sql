select * from tabela 
order by coluna;

select * from tabela 
where (condição) order by coluna;

-- ordena por determinado dado na coluna selecionada ao inves da ordem de inserção
-- por padrao a ordem eh ascendente (menor pro maior)

select * from tabela o
rder by coluna desc; 

select * from tabela 
where (condição) 
order by coluna desc;

-- adicionar desc para fazer ordem descendente (maior pro menor)

-- se a coluna do order by for literal, os itens aparecem em ordem alfabética

-- nulls após order by, dita se o os campos nulos/vazios ficarão em primeiro (first) ou em ultimo (last)
select * from tabela 
where (condição) 
order by coluna desc nulls first;
-- ou
select * from tabela 
where (condição) 
order by coluna desc nulls last;

select * from produtos 
order by descricao nulls first;

-- asc é termo opcional, por por padrao a ordem já eh ascendente
select nome_produto,preco from produtos 
where (preco > 10.00)
order by preco asc;

select nome_produto,preco from produtos 
where (preco > 10.00)
order by preco;

--
select nome_produto,preco from produtos 
where (preco > 10.00)
order by preco desc;