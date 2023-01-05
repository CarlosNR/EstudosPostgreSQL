-- Obtem uma parte especifica das linhas retornadas por uma consulta sql

-- recomenda-se itilizar com order by, embora n seja obrigatório

-- contagem -> quantidade de linhas mostradas

-- limit all -> opcional, padrão (mostra todos/all)

-- offset -> mostra a partir de qual?

-- offset 0 -> opcional, padrão (começa do inicio)

select coluna from tabela 
order by coluna
limit contagem | all
offset deslocamento

-- mostra o 4 primeiros (pela ordem ser ascendente por padrao, mostra os 4 mais baratos)
select * from produtos
order by preco
limit 4;

-- mostra os 3 ultimos (pela ordem ser asdencente por padrao, mostra os 3 mais caros
select * from produtos
order by preco
offset 3;

-- mostra 3 (limit), a partir do terceiro registro (offset)
-- limit começa do 1 (se não nao mostraria nada)
-- offset começa do 0 (posição 0, elemento 1)
select * from produtos
order by preco
limit 3
offset 2;

