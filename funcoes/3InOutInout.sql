create or replace function hi_lo(
    a int,
    b int,
    c int,
    out hi numeric,
    out lo numeric
) returns record as $$

-- record eh tipo multiplo -> tupla
-- quando tem out/inout returns record pode ser omitido
-- é o unico tipo de retorn possivel para funções

begin
    hi := GREATEST(a,b,c);
    lo := LEAST(a,b,c);
end;
$$ language plpgsql; 

--retorna como tabela
select * from hi_lo(10,20,30);

-- quando tem out, * from pode ser omitido. Retorna como lista
select hi_lo(10,20,30);


-- inserções para fazer outra função
insert into professor values (2, 'Gil Gomes', '01/04/1962',8642.60);
insert into professor values (3, 'Renata Costa', '02/05/1988',1250.30);
insert into professor values (4,'Renato Gil', '01/01/1997',998.00);
insert into professor values (5,'Pedro Silva', '03/05/2001',3500);
insert into professor values (6,'Raquel Souza', '29/10/1996',2400);
insert into professor values (7, 'Borges Bento', '11/11/1990',6700.34);
insert into professor values (8, 'Harry Potter', '01/04/1998',998);
insert into professor values (9, 'Adélia Moura', '01/12/1986',12150.34);
insert into professor values (10, 'Jimmy Page', '03/05/2001',1200);
insert into professor values (11, 'Marco Aurélio', '03/12/2000',998);
insert into professor values (12, 'Helena Silva', '02/01/1997',998);
insert into professor values (13, 'Fábio Duarte', '29/10/1995',3200);
insert into professor values (14, 'Mata Rocha', '03/12/2001',3570);
insert into professor values (15, 'Maria Carla', '02/01/1997',1998);
insert into professor values (16, 'Renato Feliz', '01/07/2001',6789.34);
insert into professor values (17, 'Lucas Sávio', '29/10/2000',3410);

--função sem parametro de entrada
create or replace function min_avg_max(out menor numeric, out media numeric, out maximo numeric) as $$
begin
    select min(salario) from professor into menor;
    select round(avg(salario),2) from professor into media;
    select max(salario) from professor into maximo;
end;
$$ language plpgsql;


select * from min_avg_max();