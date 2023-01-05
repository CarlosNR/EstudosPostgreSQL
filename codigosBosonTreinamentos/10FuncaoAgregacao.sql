-- Agregação Computar valor unico a partir de um conjunto de valores

-- count-> contagem de registros/dados
-- max-> valor maximo
-- min-> valor minimo
-- avg-> média
-- sum-> somatorio

--count
    select count(coluna) from tabela;

    --conta nº de clientes na tabela
    select count(*) from clientes;

    --conta nº de clientes na coluna nome, ignorando valor null
    select count(nome_cliente) from clientes;

    --conta nº de clientes na coluna nome, ignorando valor null NÃO REPETIDO
    select count(distinct nome_produto) from produtos;

    --por padrao a tabela de retorno tem nome "count bigint" para mudar:

    --obs: usar '' para dados char e "" para renomeações (no php isto n é tao claro)
    select count(*) as "qtde_clientes" from clientes;

-- embora nao faça sentido, as funções max e min funcionam com caracter. Usar apenas com int

select max(preco) from produtos;

select min(preco) from produtos;

--avg e sum nao funcionam com caracter

--retorna um float como média de todos os preços na tabela
select avg(preco) from produtos;

-- round -> arredonda o retorno
select round(avg(preco)) from produtos;

-- round(valor, qtde de casas decimais usadas NO CALCULO, dando diferença no resultado)
select round(avg(preco),2) from produtos;

select sum(preco) from produtos;

-- média de preço de todos refrigerantes (caso haja repetição na tebela)
select round(avg(preco),2) from produtos
where nome_produto = 'refrigerante';

