-- comparação intevalo de dados
-- between -> entre (uma coisa e outra)
-- not between também funciona (que nao esteja dentro)

select coluna from tabela
where coluna
between valor 1 and valor 2;

select coluna from tabela
where coluna
not between valor 1 and valor 2;

-- mostra todos produtos entre 10 e 20 pila
select nome_produto,preco from produtos
where preco between 10.00 and 20.00;

-- mostra todos produtos mais baratos q 10 pila e mais caro q 20 pila
select nome_produto,preco from produtos
where preco not between 10.00 and 20.00;

-- se quiser mostrar mais de um intervalo com between, usar 'or'

select nome_produto,preco from produtos
where 
    preco between 10.00 and 15.00 or
    preco between 15.00 and 40.00 
order by preco;

-- exemplo de aninhamento de between com outra operação

--retorna todos os produtos com preço entre 3 e 20 reais, porém soh os que estão com quantidade menor que 20 no estoque

select nome_produto,preco,qtde_estoque from produtos
where 
    preco between 3.00 and 20.00 and
    qtde_estoque < 20 
order by preco;